# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'erb'
require 'json'
require 'fileutils'
require_relative 'profile_templates'
require_relative 'defs/module_def'
require_relative 'defs/client_def'
require_relative 'defs/module_definition_def'

#
# Class to generate the profile
#
class ProfileGenerator
  CLIENTS_WITH_NO_BASE_URL = %w{ComputerVisionDataClass ContentModeratorDataClass FaceDataClass TextAnalyticsDataClass EventGridDataClass}

  #
  # Constructor for the profile generator.
  #
  # profile: File that consists of profile details.
  # dir_metadata: File that consists of metadata about the gem directories.
  # sdk_path: Path of the Azure Ruby SDK.
  #
  def initialize(profile, dir_metadata, sdk_path)
    @profile = profile
    @sdk_path = sdk_path
    @output_dir = "#{@sdk_path}/#{profile['output_dir']}"
    @individual_gem_profile = profile['individual_gem_profile'].nil?? false: true
    @dir_metadata = dir_metadata
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
  # A profile consists of 3 items:
  #    1. One Module definition file
  #    2. One Client file
  #    3. One or more Module files. (Individual Profiles will have one Module file.
  #       Rollup Profiles will have multiple module files.)
  #
  # Logic:
  #    For every profile:
  #       1. Create a Profile Client Definition Object.
  #       2. Create a Profile Module Definition Object.
  #       3. Generate one/more modules.
  #          i. For each service, generate a Module Object.
  #          ii. Populate data into the Client Definition Object, Module Definition Object and Module Object.
  #          iii. Write the module file.
  #       4. Write the Module Definition file.
  #       5. Write the Client file.
  #
  def generate_profile_sdk
    @client_def_obj = ClientDef.new
    @client_def_obj.profile_name = @profile['name']
    @module_definition_def_obj = ModuleDefinitionDef.new
    @module_definition_def_obj.profile_name = @profile['name']

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
    # A resource provider type will look like:
    #        "Microsoft.Storage": { 
    #           "management": {
    #             "2016-01-01": ["*"]
    #           }
    #         }
    #
    # Here "Microsoft.Storage" is the resource_provider_name, which contains the mode_obj
    # "management" is the mode_name. mode_obj may have another mode 'data'.
    # mode_obj contains the resource_types_obj
    #
    @profile['resourceTypes'].each do |resource_provider_name, mode_obj|
      # For each resource provider (such as 'Microsoft.Storage'), create a
      # new ModuleDef Object.
      module_def_obj              = ModuleDef.new
      module_def_obj.profile_name = @profile['name']

      mode_obj.each do |mode_name, resource_types_obj|
        module_def_obj.module_requires << @dir_metadata[resource_provider_name][mode_name]['module_require']
        @class_name = get_ruby_specific_resource_type_name(resource_provider_name)
        module_def_obj.module_name = @module_definition_def_obj.module_name = "#{@class_name}"

        @client_def_obj.mode = mode_name
        if(mode_name == 'management')
          module_def_obj.management_class_name  = "#{get_ruby_specific_resource_type_name(resource_provider_name)}ManagementClass"
          module_def_obj.management_mode        = true
        else
          module_def_obj.data_class_name        = "#{get_ruby_specific_resource_type_name(resource_provider_name)}DataClass"
          module_def_obj.data_mode              = true
          if(CLIENTS_WITH_NO_BASE_URL.include? module_def_obj.data_class_name)
            module_def_obj.base_url_to_be_included = false
          end
        end

        resource_types_obj.each do |resource_type_version, resource_types|
          base_file_path =  "#{@sdk_path}/#{@dir_metadata[resource_provider_name][mode_name]['path']}/lib/#{resource_type_version}/generated/#{@dir_metadata[resource_provider_name][mode_name]['module_require']}.rb"
          require base_file_path

          resource_types.each do |resource_type|
            generate_operation_types(resource_provider_name, resource_type, resource_type_version, mode_name, module_def_obj)
          end

          generate_model_types(resource_provider_name, resource_type_version, mode_name, module_def_obj)
          if(mode_name == 'management')
            operation_types = module_def_obj.management_operation_types
          else
            operation_types = module_def_obj.data_operation_types
          end

          operation_types.each_with_index do |operation_type, index|
            if(check_available_after_index(operation_type, index, operation_types))
              operation_type[:operation_name_ruby] = 'DO_NOT_ADD'
            end
          end
        end
      end

      file = get_module_file resource_provider_name, module_def_obj
      file.write(module_def_obj.get_renderer(ProfileTemplates.module_template(@sdk_path, @individual_gem_profile)))
      @client_def_obj.module_objs << module_def_obj
    end
  end

  def check_available_after_index(operation_type_to_check, index_after_to_compare, operation_types)
    operation_types.each_with_index do |operation_type, index|
      if(index <= index_after_to_compare)
        next
      end

      if(operation_type[:operation_name_ruby] == operation_type_to_check[:operation_name_ruby] )
        return true
      end
    end

    false
  end

  #
  # Generates the client file
  #
  def generate_client
    file = get_client_file
    file.write(@client_def_obj.get_renderer(ProfileTemplates.client_template(@sdk_path, @individual_gem_profile)))
  end

  #
  # Generates the module definition file
  #
  def generate_module_definition
    get_module_definition_file_name
    file = get_module_definition_file
    file.write(@module_definition_def_obj.get_renderer(ProfileTemplates.module_definition_template(@sdk_path, @individual_gem_profile)))
  end 

  def check_and_add_operation(module_obj, operation, resource_provider, mode_name, module_def_obj, management_operation_types, data_operation_types)
    operation_body =  "#{module_obj.name}::#{operation}"
    operation_name_ruby = get_model_name(operation)

    if(mode_name == 'management')
      if(check_and_delete_if_available(module_def_obj.management_operation_types, operation_name_ruby))
        puts "WARNING: #{operation_name_ruby} operation is appearing twice for the RP: #{resource_provider}."
      end
      management_operation_types << { 'operation_name': operation, 'operation_name_ruby': operation_name_ruby, 'operation_body': operation_body}
    else
      if(check_and_delete_if_available(module_def_obj.data_operation_types, operation_name_ruby))
        puts "WARNING: #{operation_name_ruby} operation is appearing twice for the RP: #{resource_provider}."
      end
      data_operation_types << { 'operation_name': operation, 'operation_name_ruby': operation_name_ruby, 'operation_body': operation_body}
    end
  end

  def get_namespace(resource_provider, resource_type_version, is_models, mode_name)
    if is_models
      namespace = "#{@dir_metadata[resource_provider][mode_name]['namespace']}::#{get_version(resource_type_version)}::Models"
    else
      namespace = "#{@dir_metadata[resource_provider][mode_name]['namespace']}::#{get_version(resource_type_version)}"
    end
    # The following substitution is required for only one scenario of handling the
    # graph API 1.6 -> 1_6
    namespace.gsub(/\./, '_' )
  end

  def generate_operation_types(resource_provider, resource_type, resource_type_version, mode_name, module_def_obj)
    namespace   = get_namespace(resource_provider, resource_type_version, false, mode_name)
    obj         = Module.const_get(namespace)
    management_client = data_client = ''

    operations  = []
    obj.constants.select do |const_name|
      if((obj.const_get(const_name).instance_of?Class))
        super_class = Object.const_get("#{namespace}::#{const_name.to_s}").superclass.to_s
        if(super_class == 'MsRestAzure::AzureServiceClient')
          if(mode_name == 'management')
            management_client = obj.name + '::' + const_name.to_s
          elsif (mode_name == 'data')
            data_client = obj.name + '::' + const_name.to_s
          end
        elsif (const_name.to_s == resource_type || '*' == resource_type)
          operations << const_name.to_s
        end
      end
    end

    management_operation_types = data_operation_types = []
    operations.each do |operation|
      check_and_add_operation(obj, operation, resource_provider, mode_name, module_def_obj, management_operation_types, data_operation_types)
    end

    if(mode_name == 'management')
      (module_def_obj.management_operation_types << management_operation_types).flatten!
      module_def_obj.management_clients_ops_mapper[management_client] = management_operation_types
    elsif (mode_name == 'data')
      (module_def_obj.data_operation_types << data_operation_types).flatten!
      module_def_obj.data_clients_ops_mapper[data_client] = data_operation_types
    end
  end

  def generate_model_types(resource_provider, resource_type_version, mode_name, module_def_obj)
    namespace = get_namespace(resource_provider, resource_type_version, true, mode_name)
    obj = Module.const_get(namespace)
    obj.constants.select do |const_name|
        model_name = const_name.to_s
        model_body = "#{obj.name}::#{const_name.to_s}"
        method_name = get_model_name(const_name.to_s)

        if(mode_name == 'management')
          if(check_and_delete_if_available(module_def_obj.management_model_types, model_name))
            puts "WARNING: #{model_name} Model is appearing twice for the RP: #{resource_provider}."
          end
          module_def_obj.management_model_types << {'model_name': model_name, 'model_body': model_body, 'method_name': method_name}
        else
          if(check_and_delete_if_available(module_def_obj.data_model_types, model_name))
            puts "WARNING: #{model_name} Model is appearing twice for the RP: #{resource_provider}."
          end
          module_def_obj.data_model_types << {'model_name': model_name, 'model_body': model_body, 'method_name': method_name}
        end
    end
  end

  def check_and_delete_if_available(array_of_hash, key)
    array_of_hash.each do |hash_entry|
      if(hash_entry.keys.include?(:model_name))
        if(hash_entry[:model_name] == key)
          array_of_hash.delete(hash_entry)
          return true
        end
      elsif(hash_entry.keys.include?(:method_name))
        if(hash_entry[:method_name] == key)
          array_of_hash.delete(hash_entry)
          return true
        end
      end
    end
    false
  end

  def get_client_file
    check_and_create_directory
    client_file_name = ''
    if @individual_gem_profile == true
      client_file_name = "#{@class_name.downcase}_#{@profile['name'].downcase}_profile_client.rb"
    else
      client_file_name = "#{@profile['name'].downcase}_profile_client.rb"
    end

    file_name =  "#{@output_dir}/#{@profile['name'].downcase}/#{client_file_name}"
    File.new(file_name, 'w')
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
    if @individual_gem_profile == true
      @client_def_obj.module_definition_file_name = "#{@class_name.downcase}_module_definition.rb"
    else
      @client_def_obj.module_definition_file_name = 'module_definition.rb'
    end
  end

  #
  # Creates the module definition file
  #
  def get_module_definition_file
    check_and_create_directory
    file_name =  "#{@output_dir}/#{@profile['name'].downcase}/#{@client_def_obj.module_definition_file_name}"
    File.new(file_name, 'w')
  end

  #
  # Creates the Module file
  #
  def get_module_file(resource_type_name, module_def_obj)
    check_and_create_directory
    file_name = get_module_file_name(resource_type_name)
    module_def_obj.file_name = file_name.sub('.rb', '')
    complete_file_name = "#{@output_dir}/#{@profile['name'].downcase}/modules/#{file_name}"
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
    Dir.mkdir("#{@output_dir}/#{@profile['name'].downcase}") unless File.directory?("#{@output_dir}/#{@profile['name'].downcase}")
    Dir.mkdir("#{@output_dir}/#{@profile['name'].downcase}/modules") unless File.directory?("#{@output_dir}/#{@profile['name'].downcase}/modules")
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
    version = version.capitalize
    version = (version.start_with?'V')?version[1..version.length]:version
    "V#{version.gsub('-','_')}"
  end
end
