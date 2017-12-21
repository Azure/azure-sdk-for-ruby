# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative 'definition'

#
# Class for the definition of the module object.
#
class ModuleDef < Definition
  attr_accessor :profile_name, :module_name, :file_name, :module_requires
  attr_accessor :management_mode, :data_mode
  attr_accessor :management_class_name, :data_class_name
  attr_accessor :management_operation_types, :data_operation_types
  attr_accessor :management_model_types, :data_model_types
  attr_accessor :management_clients_ops_mapper, :data_clients_ops_mapper

  def initialize
    @profile_name = nil
    @module_name = nil
    @file_name = nil
    @module_requires = []

    @management_mode = false
    @management_class_name = nil
    @management_operation_types = []
    @management_model_types = []
    @management_clients_ops_mapper = {}

    @data_mode = false
    @data_class_name = nil
    @data_operation_types = []
    @data_model_types = []
    @data_clients_ops_mapper = {}
  end

  def get_full_class_name(management_mode = false)
    if management_mode
      "Azure::Profiles::#{@profile_name}::#{@module_name}::Mgmt::#{@management_class_name}"
    else
      "Azure::Profiles::#{@profile_name}::#{@module_name}::#{@data_class_name}"
    end
  end
end