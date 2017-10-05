# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'erb'
require 'json'
require 'ms_rest'
require 'fileutils'
require 'ms_rest_azure'
require_relative 'profile_templates'

#
# Class to generate the profile
#

class ProfileGenerator
  # Accessors to be used in the generation of profile client
  attr_accessor :file_names, :profile_name, :class_names, :individual_gem_profile
  # Accessors to be used in the generation of module
  attr_accessor :module_require, :module_name, :class_name, :operation_types, :management_client, :model_types, :versions_clients_mapper
  # Accessors to be used in the generation of profile spec file
  attr_accessor :profile_version, :profile_ruby_version, :spec_includes, :module_name

  def initialize(profile, dir_metadata)
    @profile_name = profile['name']
    @resource_provider_types = profile['resourceTypes']
    @profile_ruby_version = profile['ruby_version']
    @output_dir = profile['output_dir']
    @individual_gem_profile = profile['individual_gem_profile'].nil?? false: true
    @dir_metadata = dir_metadata
    @module_name = ''
    @file_names, @model_types, @operation_types = [], [], []
    @spec_includes, @class_names = [], []
    @versions_clients_mapper = {}
  end

  def generate
    generate_profile_sdk
  end

  private
  def generate_profile_sdk
    generate_modules
    generate_client
    generate_module_definition
  end

  def generate_modules
    @resource_provider_types.each do |resource_provider, resource_types_obj|
      @module_require = @dir_metadata[resource_provider]['module_require']
      @module_name    = @dir_metadata[resource_provider]['module_name']
      @spec_includes << @module_require
      @class_name     = get_ruby_specific_resource_type_name(resource_provider)
      @class_names   << @class_name

      resource_types_obj.each do |resource_type_version, resource_types|
        base_file_path = @dir_metadata[resource_provider]['path'] + get_sdk_path + "#{resource_type_version}/generated/#{@module_require}.rb"
        require base_file_path

        resource_types.each do |resource_type|
          generate_operation_types(resource_provider, resource_type, resource_type_version)
        end

        generate_model_types(resource_provider, resource_type_version)
      end

      file = get_module_file resource_provider
      file.write(get_renderer(ProfileTemplates.module_template))
      @model_types, @operation_types, @versions_clients_mapper = [], [], {}
      @management_client = ''
    end
  end

  #
  # Method to generate the client file
  # Gets the client template and renders it
  #
  def generate_client
    file = get_client_file
    file.write(get_renderer(ProfileTemplates.client_template))
  end

  def generate_module_definition
    file = get_module_definition_file
    file.write(get_renderer(ProfileTemplates.module_definition_template))
  end

  #
  # Method to get renderer
  #
  # @param template for which the renderer will be created
  #
  def get_renderer(template)
    renderer = ERB.new(template, 0, '-%>')
    renderer.result(get_binding)
  end

  def generate_operation_types(resource_provider, resource_type, resource_type_version)
    namespace = @dir_metadata[resource_provider]['namespace'] + "::#{get_version(resource_type_version)}"
    namespace = namespace.gsub(/\./, '_' )
    obj = Module.const_get(namespace)
    operations = []
    obj.constants.select do |const_name|
      if((obj.const_get(const_name).instance_of?Class))
        if(const_name.to_s.end_with?('ManagementClient') || const_name.to_s == 'ManagementLinkClient' || const_name.to_s == 'ManagementLockClient' || const_name.to_s == 'FeatureClient' || const_name.to_s == 'PolicyClient' || const_name.to_s == 'SubscriptionClient')
          @management_client = obj.name + '::' + const_name.to_s
          @versions_clients_mapper[resource_type_version] = @management_client
        elsif (const_name.to_s == resource_type || '*' == resource_type)
          operations << const_name.to_s
        end
      end
    end

    if operations.empty?
      raise "#{resource_type} operation could not be found for RP: #{resource_provider}:Version: #{resource_type_version}"
    end

    operations.each do |operation|
      check_and_add_operation(obj, operation, resource_provider)
    end
  end

  def check_and_add_operation(module_obj, operation, resource_provider)
    operation_body = module_obj.name + '::' + operation
    operation_name_ruby = get_model_name(operation)

    if(check_for_availability(@operation_types, operation_name_ruby))
      raise "#{operation_name} operation is appearing twice for the RP: #{resource_provider}."
    else
      @operation_types << { 'operation_name': operation, 'operation_name_ruby': operation_name_ruby, 'operation_body': operation_body}
    end
  end

  def generate_model_types(resource_provider, resource_type_version)
    namespace = @dir_metadata[resource_provider]['namespace'] + + "::#{get_version(resource_type_version)}::Models"
    namespace = namespace.gsub(/\./, '_' )
    obj = Module.const_get(namespace)
    obj.constants.select do |const_name|
        model_name = const_name.to_s
        model_body = obj.name + '::' + const_name.to_s
        method_name = get_model_name(const_name.to_s)

        if(check_for_availability(@model_types, model_name))
          raise "#{model_name} Model is appearing twice for the RP: #{resource_provider}."
        else
          @model_types << {'model_name': model_name, 'model_body': model_body, 'method_name': method_name}
        end
    end
  end

  def get_model_name(model_name)
    model_name.gsub(/([a-z\d])([A-Z])/,'\1_\2').downcase
  end

  def get_client_file
    check_and_create_directory
    file_name =  "#{@output_dir}/#{@profile_name}/profile_client.rb"
    File.new(file_name, 'w')
  end

  def get_module_definition_file
    check_and_create_directory
    file_name =  "#{@output_dir}/#{@profile_name}/module_definition.rb"
    File.new(file_name, 'w')
  end

  def get_module_file(resource_type_name)
    check_and_create_directory
    file_name = get_module_file_name(resource_type_name)
    @file_names << file_name.sub('.rb', '')
    complete_file_name = "#{@output_dir}/#{@profile_name}/modules/#{file_name}"
    File.new(complete_file_name, 'w')
  end

  def get_spec_file
    check_and_create_directory
    file_name =  "#{@output_dir}/#{@profile_name}/azure_mgmt_profile_#{@profile_version}.gemspec"
    File.new(file_name, 'w')
  end

  def get_module_file_name(resource_type_name)
    get_ruby_specific_resource_type_name(resource_type_name).downcase + '_profile_module.rb'
  end

  def check_and_create_directory
    Dir.mkdir("#{@output_dir}") unless File.directory?("#{@output_dir}")
    Dir.mkdir("#{@output_dir}/#{@profile_name}") unless File.directory?("#{@output_dir}/#{@profile_name}")
    Dir.mkdir("#{@output_dir}/#{@profile_name}/modules") unless File.directory?("#{@output_dir}/#{@profile_name}/modules")
  end

  def get_ruby_specific_resource_type_name(resource_type_name)
    resource_type_name.slice(resource_type_name.rindex('.') + 1, resource_type_name.length - 1)
  end

  def get_profile_version
    @profile_name[4..@profile_name.length - 1]
  end

  def get_binding
    binding
  end

  def get_sdk_path
    'lib/'
  end

  def get_version(version)
    "Api_#{version.gsub('-','_')}"
  end

  def check_for_availability(array_of_hash, key)
    array_of_hash.each do |hash_entry|
      if(hash_entry.keys.include?(:model_name))
        if(hash_entry[:model_name] == key)
          return true
        end
      elsif(hash_entry.keys.include?(:method_name))
        if(hash_entry[:method_name] == key)
          return true
        end
      end
    end
    false
  end
end
