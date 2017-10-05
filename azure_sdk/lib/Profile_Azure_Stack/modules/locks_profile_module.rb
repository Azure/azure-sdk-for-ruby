# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_locks'


module Azure::Profiles::Management::Profile_Azure_Stack
  module Locks
    ManagementLocks = Azure::ARM::Locks::Api_2016_09_01::ManagementLocks

    module Models
      ManagementLockObject = Azure::ARM::Locks::Api_2016_09_01::Models::ManagementLockObject
      ManagementLockListResult = Azure::ARM::Locks::Api_2016_09_01::Models::ManagementLockListResult
      ManagementLockOwner = Azure::ARM::Locks::Api_2016_09_01::Models::ManagementLockOwner
      LockLevel = Azure::ARM::Locks::Api_2016_09_01::Models::LockLevel
    end

    #
    # Locks
    #
    class LocksClass
      attr_accessor :management_locks, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Locks::Api_2016_09_01::ManagementLockClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.management_locks = Azure::ARM::Locks::Api_2016_09_01::ManagementLocks.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2016-09-01'
            client = Azure::ARM::Locks::Api_2016_09_01::ManagementLockClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def management_lock_object
          Azure::ARM::Locks::Api_2016_09_01::Models::ManagementLockObject
        end
        def management_lock_list_result
          Azure::ARM::Locks::Api_2016_09_01::Models::ManagementLockListResult
        end
        def management_lock_owner
          Azure::ARM::Locks::Api_2016_09_01::Models::ManagementLockOwner
        end
        def lock_level
          Azure::ARM::Locks::Api_2016_09_01::Models::LockLevel
        end
      end
    end
  end
end
