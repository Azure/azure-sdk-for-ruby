# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'erb'
require 'json'
require 'fileutils'
require_relative 'profile_templates'

#
# Class to generate the profile
#

class ProfileGenerator
  attr_accessor :file_names, :profile_name, :class_names, :individual_gem_profile
  attr_accessor :module_require, :class_name, :operation_types
  attr_accessor :management_client, :model_types, :versions_clients_mapper
  attr_accessor :profile_version, :spec_includes, :module_definition_file_name

  def initialize(profile, dir_metadata)
    @profile_name = profile['name']
    @resource_provider_types = profile['resourceTypes']
    @output_dir = profile['output_dir']
    @individual_gem_profile = profile['individual_gem_profile'].nil?? false: true
    @dir_metadata = dir_metadata
    @module_definition_file_name = ''
    @file_names, @model_types, @operation_types = [], [], []
    @spec_includes, @class_names = [], []
    @versions_clients_mapper = {}
  end

  #
  # Generates the profile sdk
  #
  def generate
    generate_profile_sdk
  end

  private
  #
  # Generates the profiles SDK.
  #
  # This has 3 steps:
  #    1. Generates the Modules
  #    2. Generates the Module definition file
  #    3. Generates the profile client file
  #
  def generate_profile_sdk
    generate_modules
    generate_module_definition
    generate_client
  end

  #
  # Generates the Modules. Each RP included in the profile will
  # have its own module.
  #
  # Logic:
  #    1. Load the base file of the specific version of the RP
  #    2. Get all the associated operations.
  #    3. Get all the associated models
  #    4. Write the module file using the module_template.template file
  #
  def generate_modules
    @resource_provider_types.each do |resource_provider, resource_types_obj|
      @module_require = @dir_metadata[resource_provider]['module_require']
      @spec_includes << @module_require
      @class_name     = get_ruby_specific_resource_type_name(resource_provider)
      @class_names   << @class_name

      resource_types_obj.each do |resource_type_version, resource_types|
        base_file_path =  "#{@dir_metadata[resource_provider]['path']}lib/#{resource_type_version}/generated/#{@module_require}.rb"
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
  # Generates the client file
  #
  def generate_client
    file = get_client_file
    file.write(get_renderer(ProfileTemplates.client_template))
  end

  #
  # Generates the module definition file
  #
  def generate_module_definition
    get_module_definition_file_name
    file = get_module_definition_file
    file.write(get_renderer(ProfileTemplates.module_definition_template))
  end

  def generate_operation_types(resource_provider, resource_type, resource_type_version)
    namespace = get_namespace(resource_provider, resource_type_version, false)
    obj = Module.const_get(namespace)
    operations = []
    obj.constants.select do |const_name|
      if((obj.const_get(const_name).instance_of?Class))
        super_class = Object.const_get("#{namespace}::#{const_name.to_s}").superclass.to_s
        if(super_class == 'MsRestAzure::AzureServiceClient')
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
    operation_body =  "#{module_obj.name}::#{operation}"
    operation_name_ruby = get_model_name(operation)

    if(check_for_availability(@operation_types, operation_name_ruby))
      raise "#{operation_name} operation is appearing twice for the RP: #{resource_provider}."
    else
      @operation_types << { 'operation_name': operation, 'operation_name_ruby': operation_name_ruby, 'operation_body': operation_body}
    end
  end

  def get_namespace(resource_provider, resource_type_version, is_models)
    if is_models
      namespace = "#{@dir_metadata[resource_provider]['namespace']}::#{get_version(resource_type_version)}::Models"
    else
      namespace = "#{@dir_metadata[resource_provider]['namespace']}::#{get_version(resource_type_version)}"
    end
    # The following substitution is required for only one scenario of handling the
    # graph API 1.6 -> 1_6
    namespace.gsub(/\./, '_' )
  end

  def generate_model_types(resource_provider, resource_type_version)
    namespace = get_namespace(resource_provider, resource_type_version, true)
    obj = Module.const_get(namespace)
    obj.constants.select do |const_name|
        model_name = const_name.to_s
        model_body = "#{obj.name}::#{const_name.to_s}"
        method_name = get_model_name(const_name.to_s)

        if(check_for_availability(@model_types, model_name))
          raise "#{model_name} Model is appearing twice for the RP: #{resource_provider}."
        else
          @model_types << {'model_name': model_name, 'model_body': model_body, 'method_name': method_name}
        end
    end
  end

  def get_client_file
    check_and_create_directory
    client_file_name = ''
    if @individual_gem_profile == true
      client_file_name = "#{@class_name.downcase}_#{@profile_name.downcase}_profile_client.rb"
    else
      client_file_name = "#{@profile_name.downcase}_profile_client.rb"
    end

    file_name =  "#{@output_dir}/#{@profile_name.downcase}/#{client_file_name}"
    File.new(file_name, 'w')
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

  #
  # Gets the model name. Logic is same as the one
  # followed in autorest.
  #
  def get_model_name(model_name)
    model_name.gsub(/([a-z\d])([A-Z])/,'\1_\2').downcase
  end

  #
  # Gets the complete path of the module definition file
  #
  def get_module_definition_file_name
    @module_definition_file_name = ''
    if @individual_gem_profile == true
      @module_definition_file_name = "#{@class_name.downcase}_#{@profile_name.downcase}_module_definition.rb"
    else
      @module_definition_file_name = "#{@profile_name.downcase}_module_definition.rb"
    end
  end

  #
  # Creates the module definition file
  #
  def get_module_definition_file
    check_and_create_directory
    file_name =  "#{@output_dir}/#{@profile_name.downcase}/#{@module_definition_file_name}"
    File.new(file_name, 'w')
  end

  #
  # Creates the Module file
  #
  def get_module_file(resource_type_name)
    check_and_create_directory
    file_name = get_module_file_name(resource_type_name)
    @file_names << file_name.sub('.rb', '')
    complete_file_name = "#{@output_dir}/#{@profile_name.downcase}/modules/#{file_name}"
    File.new(complete_file_name, 'w')
  end

  #
  # Gets the name of the module file. This is the downcase of the
  # ruby specific resource type name followed by _profile_module.rb.
  # For eg: Microsoft.CognitiveServices will have the module file name
  #         cognitiveservices_profile_module.rb
  #
  def get_module_file_name(resource_type_name)
    "#{get_ruby_specific_resource_type_name(resource_type_name).downcase}_profile_module.rb"
  end

  #
  # Checks and creates the directories for the profiles
  # It creates the following directories:
  #      1. Base Directory (for all profiles)
  #      2. Base Directory/Profile specific base directory
  #      3. Base Directory/Profile specific base directory/'modules' directory
  #
  def check_and_create_directory
    Dir.mkdir("#{@output_dir}") unless File.directory?("#{@output_dir}")
    Dir.mkdir("#{@output_dir}/#{@profile_name.downcase}") unless File.directory?("#{@output_dir}/#{@profile_name.downcase}")
    Dir.mkdir("#{@output_dir}/#{@profile_name.downcase}/modules") unless File.directory?("#{@output_dir}/#{@profile_name.downcase}/modules")
  end

  #
  # Gets the ruby specific resource type name.
  # For eg: Microsoft.Authorization must be converted to
  #         Authorization
  #
  def get_ruby_specific_resource_type_name(resource_type_name)
    resource_type_name.slice(resource_type_name.rindex('.') + 1, resource_type_name.length - 1)
  end

  #
  # Gets the version of the API.
  # The API version are usually specified in YYYY-MM-DD format.
  # For eg. '2015-06-01' should be converted to Api_2015_06_01
  #
  def get_version(version)
    "Api_#{version.gsub('-','_')}"
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

  #
  # get_binding method used for rendering the erb template
  #
  def get_binding
    binding
  end
end
