# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_redis'

module Azure::Redis::Profiles::Latest::Mgmt
    Operations = Azure::Redis::Mgmt::V2017_02_01::Operations
    Redis = Azure::Redis::Mgmt::V2017_02_01::Redis
    FirewallRules = Azure::Redis::Mgmt::V2017_02_01::FirewallRules
    PatchSchedules = Azure::Redis::Mgmt::V2017_02_01::PatchSchedules
    RedisLinkedServerOperations = Azure::Redis::Mgmt::V2017_02_01::RedisLinkedServerOperations

    module Models
      RedisListResult = Azure::Redis::Mgmt::V2017_02_01::Models::RedisListResult
      RedisRegenerateKeyParameters = Azure::Redis::Mgmt::V2017_02_01::Models::RedisRegenerateKeyParameters
      RedisRebootParameters = Azure::Redis::Mgmt::V2017_02_01::Models::RedisRebootParameters
      Sku = Azure::Redis::Mgmt::V2017_02_01::Models::Sku
      Resource = Azure::Redis::Mgmt::V2017_02_01::Models::Resource
      RedisUpdateParameters = Azure::Redis::Mgmt::V2017_02_01::Models::RedisUpdateParameters
      RedisLinkedServerCreateParameters = Azure::Redis::Mgmt::V2017_02_01::Models::RedisLinkedServerCreateParameters
      Operation = Azure::Redis::Mgmt::V2017_02_01::Models::Operation
      ExportRDBParameters = Azure::Redis::Mgmt::V2017_02_01::Models::ExportRDBParameters
      RedisLinkedServer = Azure::Redis::Mgmt::V2017_02_01::Models::RedisLinkedServer
      ImportRDBParameters = Azure::Redis::Mgmt::V2017_02_01::Models::ImportRDBParameters
      OperationDisplay = Azure::Redis::Mgmt::V2017_02_01::Models::OperationDisplay
      ScheduleEntry = Azure::Redis::Mgmt::V2017_02_01::Models::ScheduleEntry
      RedisAccessKeys = Azure::Redis::Mgmt::V2017_02_01::Models::RedisAccessKeys
      RedisPatchSchedule = Azure::Redis::Mgmt::V2017_02_01::Models::RedisPatchSchedule
      RedisLinkedServerList = Azure::Redis::Mgmt::V2017_02_01::Models::RedisLinkedServerList
      RedisForceRebootResponse = Azure::Redis::Mgmt::V2017_02_01::Models::RedisForceRebootResponse
      RedisFirewallRuleListResult = Azure::Redis::Mgmt::V2017_02_01::Models::RedisFirewallRuleListResult
      RedisLinkedServerWithProperties = Azure::Redis::Mgmt::V2017_02_01::Models::RedisLinkedServerWithProperties
      OperationListResult = Azure::Redis::Mgmt::V2017_02_01::Models::OperationListResult
      RedisLinkedServerWithPropertiesList = Azure::Redis::Mgmt::V2017_02_01::Models::RedisLinkedServerWithPropertiesList
      ProxyResource = Azure::Redis::Mgmt::V2017_02_01::Models::ProxyResource
      TrackedResource = Azure::Redis::Mgmt::V2017_02_01::Models::TrackedResource
      RedisCreateParameters = Azure::Redis::Mgmt::V2017_02_01::Models::RedisCreateParameters
      RedisFirewallRule = Azure::Redis::Mgmt::V2017_02_01::Models::RedisFirewallRule
      RedisResource = Azure::Redis::Mgmt::V2017_02_01::Models::RedisResource
      SkuName = Azure::Redis::Mgmt::V2017_02_01::Models::SkuName
      SkuFamily = Azure::Redis::Mgmt::V2017_02_01::Models::SkuFamily
      RedisKeyType = Azure::Redis::Mgmt::V2017_02_01::Models::RedisKeyType
      RebootType = Azure::Redis::Mgmt::V2017_02_01::Models::RebootType
      DayOfWeek = Azure::Redis::Mgmt::V2017_02_01::Models::DayOfWeek
      ReplicationRole = Azure::Redis::Mgmt::V2017_02_01::Models::ReplicationRole
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

        client_0 = Azure::Redis::Mgmt::V2017_02_01::RedisManagementClient.new(configurable.credentials, base_url, options)
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

      class ModelClasses
        def redis_list_result
          Azure::Redis::Mgmt::V2017_02_01::Models::RedisListResult
        end
        def redis_regenerate_key_parameters
          Azure::Redis::Mgmt::V2017_02_01::Models::RedisRegenerateKeyParameters
        end
        def redis_reboot_parameters
          Azure::Redis::Mgmt::V2017_02_01::Models::RedisRebootParameters
        end
        def sku
          Azure::Redis::Mgmt::V2017_02_01::Models::Sku
        end
        def resource
          Azure::Redis::Mgmt::V2017_02_01::Models::Resource
        end
        def redis_update_parameters
          Azure::Redis::Mgmt::V2017_02_01::Models::RedisUpdateParameters
        end
        def redis_linked_server_create_parameters
          Azure::Redis::Mgmt::V2017_02_01::Models::RedisLinkedServerCreateParameters
        end
        def operation
          Azure::Redis::Mgmt::V2017_02_01::Models::Operation
        end
        def export_rdbparameters
          Azure::Redis::Mgmt::V2017_02_01::Models::ExportRDBParameters
        end
        def redis_linked_server
          Azure::Redis::Mgmt::V2017_02_01::Models::RedisLinkedServer
        end
        def import_rdbparameters
          Azure::Redis::Mgmt::V2017_02_01::Models::ImportRDBParameters
        end
        def operation_display
          Azure::Redis::Mgmt::V2017_02_01::Models::OperationDisplay
        end
        def schedule_entry
          Azure::Redis::Mgmt::V2017_02_01::Models::ScheduleEntry
        end
        def redis_access_keys
          Azure::Redis::Mgmt::V2017_02_01::Models::RedisAccessKeys
        end
        def redis_patch_schedule
          Azure::Redis::Mgmt::V2017_02_01::Models::RedisPatchSchedule
        end
        def redis_linked_server_list
          Azure::Redis::Mgmt::V2017_02_01::Models::RedisLinkedServerList
        end
        def redis_force_reboot_response
          Azure::Redis::Mgmt::V2017_02_01::Models::RedisForceRebootResponse
        end
        def redis_firewall_rule_list_result
          Azure::Redis::Mgmt::V2017_02_01::Models::RedisFirewallRuleListResult
        end
        def redis_linked_server_with_properties
          Azure::Redis::Mgmt::V2017_02_01::Models::RedisLinkedServerWithProperties
        end
        def operation_list_result
          Azure::Redis::Mgmt::V2017_02_01::Models::OperationListResult
        end
        def redis_linked_server_with_properties_list
          Azure::Redis::Mgmt::V2017_02_01::Models::RedisLinkedServerWithPropertiesList
        end
        def proxy_resource
          Azure::Redis::Mgmt::V2017_02_01::Models::ProxyResource
        end
        def tracked_resource
          Azure::Redis::Mgmt::V2017_02_01::Models::TrackedResource
        end
        def redis_create_parameters
          Azure::Redis::Mgmt::V2017_02_01::Models::RedisCreateParameters
        end
        def redis_firewall_rule
          Azure::Redis::Mgmt::V2017_02_01::Models::RedisFirewallRule
        end
        def redis_resource
          Azure::Redis::Mgmt::V2017_02_01::Models::RedisResource
        end
        def sku_name
          Azure::Redis::Mgmt::V2017_02_01::Models::SkuName
        end
        def sku_family
          Azure::Redis::Mgmt::V2017_02_01::Models::SkuFamily
        end
        def redis_key_type
          Azure::Redis::Mgmt::V2017_02_01::Models::RedisKeyType
        end
        def reboot_type
          Azure::Redis::Mgmt::V2017_02_01::Models::RebootType
        end
        def day_of_week
          Azure::Redis::Mgmt::V2017_02_01::Models::DayOfWeek
        end
        def replication_role
          Azure::Redis::Mgmt::V2017_02_01::Models::ReplicationRole
        end
      end
    end
end
