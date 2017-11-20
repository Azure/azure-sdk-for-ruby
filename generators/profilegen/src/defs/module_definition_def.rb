# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative 'definition'

#
# Class for the definition of the module definition object.
#
class ModuleDefinitionDef < Definition
  attr_accessor :profile_name
  attr_accessor :module_name

  def initialize
    @profile_name = nil
    @module_name = nil
  end
end