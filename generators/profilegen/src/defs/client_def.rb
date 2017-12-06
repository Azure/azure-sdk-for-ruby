# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative 'definition'

#
# Class for the definition of the profile client object.
#
class ClientDef < Definition
  attr_accessor :profile_name, :mode
  attr_accessor :module_objs
  attr_accessor :module_definition_file_name

  def initialize
    @profile_name = nil
    @mode = nil
    @module_objs  = []
    @module_definition_file_name = nil
  end
end