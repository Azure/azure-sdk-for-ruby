# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_locks'

module Azure::Locks::Profiles::Latest::Mgmt
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
      attr_reader :management_locks, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_options
        else
          @options = options
        end

        reset!(options)

        @configurable, @base_url, @options = self, nil, nil

        client_0 = Azure::ARM::Locks::Api_2016_09_01::ManagementLockClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @management_locks = client_0.management_locks

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '2016-09-01')
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
