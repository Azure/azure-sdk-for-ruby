# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'profiles/v2017_03_09/locks_module_definition'
require 'profiles/v2017_03_09/modules/locks_profile_module'

module Azure::Locks::Profiles::V2017_03_09
  module Mgmt
    #
    # Client class for the V2017_03_09 profile SDK.
    #
    class Client < LocksManagementClass
      include MsRestAzure::Common::Configurable

      def initialize(options = {})
        super(options)
      end

    end
  end
end
