# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_locks'

module Azure::Profiles::V2017_03_09
  module Locks
    module Mgmt
      ManagementLocks = Azure::Locks::Mgmt::V2015_01_01::ManagementLocks

      module Models
        ManagementLockListResult = Azure::Locks::Mgmt::V2015_01_01::Models::ManagementLockListResult
        ManagementLockObject = Azure::Locks::Mgmt::V2015_01_01::Models::ManagementLockObject
        LockLevel = Azure::Locks::Mgmt::V2015_01_01::Models::LockLevel
      end

      class LocksManagementClass
        attr_reader :management_locks, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          client_0 = Azure::Locks::Mgmt::V2015_01_01::ManagementLockClient.new(configurable.credentials, base_url, options)
          if(client_0.respond_to?(:subscription_id))
            client_0.subscription_id = configurable.subscription_id
          end

          @management_locks = client_0.management_locks

          @model_classes = ModelClasses.new
        end

        class ModelClasses
          def management_lock_list_result
            Azure::Locks::Mgmt::V2015_01_01::Models::ManagementLockListResult
          end
          def management_lock_object
            Azure::Locks::Mgmt::V2015_01_01::Models::ManagementLockObject
          end
          def lock_level
            Azure::Locks::Mgmt::V2015_01_01::Models::LockLevel
          end
        end
      end
    end
  end
end
