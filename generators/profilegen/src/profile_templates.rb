# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative 'profile_template_files'

#
# Class represents the different templates to be used
# during the generation of profile sdks
#
class ProfileTemplates
  Profile_gen_resources_path = 'generators/profilegen/src/resources'
  #
  # Module template to generate the individual module
  # files per RP (such as ComputModule, NetworkModule, etc)
  #
  def self.module_template(sdk_path, individual)
    if(individual)
      File.read("#{sdk_path}/#{Profile_gen_resources_path}/#{ProfileTemplateFiles::Individual::MODULE_TEMPLATE}")
    else
      File.read("#{sdk_path}/#{Profile_gen_resources_path}/#{ProfileTemplateFiles::Rollup::MODULE_TEMPLATE}")
    end
  end

  #
  # Client template to generate the profile client
  #
  def self.client_template(sdk_path, individual)
    if(individual)
      File.read("#{sdk_path}/#{Profile_gen_resources_path}/#{ProfileTemplateFiles::Individual::CLIENT_TEMPLATE}")
    else
      File.read("#{sdk_path}/#{Profile_gen_resources_path}/#{ProfileTemplateFiles::Rollup::CLIENT_TEMPLATE}")
    end    
  end

  #
  # Module definition template to generate the profile client
  #
  def self.module_definition_template(sdk_path, individual)
    if(individual)
      File.read("#{sdk_path}/#{Profile_gen_resources_path}/#{ProfileTemplateFiles::Individual::MODULE_DEFINITION_TEMPLATE}")
    else
      File.read("#{sdk_path}/#{Profile_gen_resources_path}/#{ProfileTemplateFiles::Rollup::MODULE_DEFINITION_TEMPLATE}")
    end
  end
end
