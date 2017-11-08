# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'profiles/v2017_03_09/resources_module_definition'
require 'profiles/v2017_03_09/modules/resources_profile_module'

module Azure::Resources::Profiles::V2017_03_09::Mgmt
  #
  # Client class for the V2017_03_09 profile SDK.
  #
  class Client < ResourcesClass
    include MsRestAzure::Common::Configurable


    def initialize(options = {})
      super(options)
    end

  end
end
