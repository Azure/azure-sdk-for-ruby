# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'profiles/v2017_03_09/storage_module_definition'
require 'profiles/v2017_03_09/modules/storage_profile_module'
require 'profiles/common/configurable'
require 'profiles/common/default'

module Azure::Storage::Profiles::V2017_03_09::Mgmt
  #
  # Client class for the V2017_03_09 profile SDK.
  #
  class Client < StorageClass
    include Azure::Common::Configurable


    def initialize(options = {})
      super(options)
    end

  end
end
