# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative 'profile_template_files'

#
# Class represents the different templates to be used
# during the generation of profile sdks
#
class ProfileTemplates
  #
  # Module template to generate the individual module
  # files per RP (such as ComputModule, NetworkModule, etc)
  #
  def self.module_template
    File.read(ProfileTemplateFiles::MODULE_TEMPLATE)
  end

  #
  # Client template to generate the profile client
  #
  def self.client_template
    File.read(ProfileTemplateFiles::CLIENT_TEMPLATE)
  end

  #
  # Module definition template to generate the profile client
  #
  def self.module_definition_template
    File.read(ProfileTemplateFiles::MODULE_DEFINITION_TEMPLATE)
  end
end
