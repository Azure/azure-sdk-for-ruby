# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_redis'

module Azure::Redis::Profiles::V2017_02_01::Mgmt
    Operations = Azure::ARM::Redis::Api_2017_02_01::Operations
    Redis = Azure::ARM::Redis::Api_2017_02_01::Redis
    FirewallRules = Azure::ARM::Redis::Api_2017_02_01::FirewallRules
    PatchSchedules = Azure::ARM::Redis::Api_2017_02_01::PatchSchedules
    RedisLinkedServerOperations = Azure::ARM::Redis::Api_2017_02_01::RedisLinkedServerOperations

    module Models
      RedisListResult = Azure::ARM::Redis::Api_2017_02_01::Models::RedisListResult
      RedisRegenerateKeyParameters = Azure::ARM::Redis::Api_2017_02_01::Models::RedisRegenerateKeyParameters
      RedisRebootParameters = Azure::ARM::Redis::Api_2017_02_01::Models::RedisRebootParameters
      Sku = Azure::ARM::Redis::Api_2017_02_01::Models::Sku
      Resource = Azure::ARM::Redis::Api_2017_02_01::Models::Resource
      RedisUpdateParameters = Azure::ARM::Redis::Api_2017_02_01::Models::RedisUpdateParameters
      RedisLinkedServerCreateParameters = Azure::ARM::Redis::Api_2017_02_01::Models::RedisLinkedServerCreateParameters
      Operation = Azure::ARM::Redis::Api_2017_02_01::Models::Operation
      ExportRDBParameters = Azure::ARM::Redis::Api_2017_02_01::Models::ExportRDBParameters
      RedisLinkedServer = Azure::ARM::Redis::Api_2017_02_01::Models::RedisLinkedServer
      ImportRDBParameters = Azure::ARM::Redis::Api_2017_02_01::Models::ImportRDBParameters
      OperationDisplay = Azure::ARM::Redis::Api_2017_02_01::Models::OperationDisplay
      ScheduleEntry = Azure::ARM::Redis::Api_2017_02_01::Models::ScheduleEntry
      RedisAccessKeys = Azure::ARM::Redis::Api_2017_02_01::Models::RedisAccessKeys
      RedisPatchSchedule = Azure::ARM::Redis::Api_2017_02_01::Models::RedisPatchSchedule
      RedisLinkedServerList = Azure::ARM::Redis::Api_2017_02_01::Models::RedisLinkedServerList
      RedisForceRebootResponse = Azure::ARM::Redis::Api_2017_02_01::Models::RedisForceRebootResponse
      RedisFirewallRuleListResult = Azure::ARM::Redis::Api_2017_02_01::Models::RedisFirewallRuleListResult
      RedisLinkedServerWithProperties = Azure::ARM::Redis::Api_2017_02_01::Models::RedisLinkedServerWithProperties
      OperationListResult = Azure::ARM::Redis::Api_2017_02_01::Models::OperationListResult
      RedisLinkedServerWithPropertiesList = Azure::ARM::Redis::Api_2017_02_01::Models::RedisLinkedServerWithPropertiesList
      ProxyResource = Azure::ARM::Redis::Api_2017_02_01::Models::ProxyResource
      TrackedResource = Azure::ARM::Redis::Api_2017_02_01::Models::TrackedResource
      RedisCreateParameters = Azure::ARM::Redis::Api_2017_02_01::Models::RedisCreateParameters
      RedisFirewallRule = Azure::ARM::Redis::Api_2017_02_01::Models::RedisFirewallRule
      RedisResource = Azure::ARM::Redis::Api_2017_02_01::Models::RedisResource
      SkuName = Azure::ARM::Redis::Api_2017_02_01::Models::SkuName
      SkuFamily = Azure::ARM::Redis::Api_2017_02_01::Models::SkuFamily
      RedisKeyType = Azure::ARM::Redis::Api_2017_02_01::Models::RedisKeyType
      RebootType = Azure::ARM::Redis::Api_2017_02_01::Models::RebootType
      DayOfWeek = Azure::ARM::Redis::Api_2017_02_01::Models::DayOfWeek
      ReplicationRole = Azure::ARM::Redis::Api_2017_02_01::Models::ReplicationRole
    end

    #
    # Redis
    #
    class RedisClass
      attr_reader :operations, :redis, :firewall_rules, :patch_schedules, :redis_linked_server_operations, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_options
        else
          @options = options
        end

        reset!(options)

        @configurable, @base_url, @options = self, nil, nil

        client_0 = Azure::ARM::Redis::Api_2017_02_01::RedisManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @operations = client_0.operations
        @redis = client_0.redis
        @firewall_rules = client_0.firewall_rules
        @patch_schedules = client_0.patch_schedules
        @redis_linked_server_operations = client_0.redis_linked_server_operations

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '2017-02-01')
        case version
          when '2017-02-01'
            client = Azure::ARM::Redis::Api_2017_02_01::RedisManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def redis_list_result
          Azure::ARM::Redis::Api_2017_02_01::Models::RedisListResult
        end
        def redis_regenerate_key_parameters
          Azure::ARM::Redis::Api_2017_02_01::Models::RedisRegenerateKeyParameters
        end
        def redis_reboot_parameters
          Azure::ARM::Redis::Api_2017_02_01::Models::RedisRebootParameters
        end
        def sku
          Azure::ARM::Redis::Api_2017_02_01::Models::Sku
        end
        def resource
          Azure::ARM::Redis::Api_2017_02_01::Models::Resource
        end
        def redis_update_parameters
          Azure::ARM::Redis::Api_2017_02_01::Models::RedisUpdateParameters
        end
        def redis_linked_server_create_parameters
          Azure::ARM::Redis::Api_2017_02_01::Models::RedisLinkedServerCreateParameters
        end
        def operation
          Azure::ARM::Redis::Api_2017_02_01::Models::Operation
        end
        def export_rdbparameters
          Azure::ARM::Redis::Api_2017_02_01::Models::ExportRDBParameters
        end
        def redis_linked_server
          Azure::ARM::Redis::Api_2017_02_01::Models::RedisLinkedServer
        end
        def import_rdbparameters
          Azure::ARM::Redis::Api_2017_02_01::Models::ImportRDBParameters
        end
        def operation_display
          Azure::ARM::Redis::Api_2017_02_01::Models::OperationDisplay
        end
        def schedule_entry
          Azure::ARM::Redis::Api_2017_02_01::Models::ScheduleEntry
        end
        def redis_access_keys
          Azure::ARM::Redis::Api_2017_02_01::Models::RedisAccessKeys
        end
        def redis_patch_schedule
          Azure::ARM::Redis::Api_2017_02_01::Models::RedisPatchSchedule
        end
        def redis_linked_server_list
          Azure::ARM::Redis::Api_2017_02_01::Models::RedisLinkedServerList
        end
        def redis_force_reboot_response
          Azure::ARM::Redis::Api_2017_02_01::Models::RedisForceRebootResponse
        end
        def redis_firewall_rule_list_result
          Azure::ARM::Redis::Api_2017_02_01::Models::RedisFirewallRuleListResult
        end
        def redis_linked_server_with_properties
          Azure::ARM::Redis::Api_2017_02_01::Models::RedisLinkedServerWithProperties
        end
        def operation_list_result
          Azure::ARM::Redis::Api_2017_02_01::Models::OperationListResult
        end
        def redis_linked_server_with_properties_list
          Azure::ARM::Redis::Api_2017_02_01::Models::RedisLinkedServerWithPropertiesList
        end
        def proxy_resource
          Azure::ARM::Redis::Api_2017_02_01::Models::ProxyResource
        end
        def tracked_resource
          Azure::ARM::Redis::Api_2017_02_01::Models::TrackedResource
        end
        def redis_create_parameters
          Azure::ARM::Redis::Api_2017_02_01::Models::RedisCreateParameters
        end
        def redis_firewall_rule
          Azure::ARM::Redis::Api_2017_02_01::Models::RedisFirewallRule
        end
        def redis_resource
          Azure::ARM::Redis::Api_2017_02_01::Models::RedisResource
        end
        def sku_name
          Azure::ARM::Redis::Api_2017_02_01::Models::SkuName
        end
        def sku_family
          Azure::ARM::Redis::Api_2017_02_01::Models::SkuFamily
        end
        def redis_key_type
          Azure::ARM::Redis::Api_2017_02_01::Models::RedisKeyType
        end
        def reboot_type
          Azure::ARM::Redis::Api_2017_02_01::Models::RebootType
        end
        def day_of_week
          Azure::ARM::Redis::Api_2017_02_01::Models::DayOfWeek
        end
        def replication_role
          Azure::ARM::Redis::Api_2017_02_01::Models::ReplicationRole
        end
      end
    end
end
