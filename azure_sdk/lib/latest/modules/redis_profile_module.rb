# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_redis'

module Azure::Profiles::Latest
  module Redis
    module Mgmt
      PatchSchedules = Azure::Redis::Mgmt::V2017_10_01::PatchSchedules
      LinkedServer = Azure::Redis::Mgmt::V2017_10_01::LinkedServer
      Operations = Azure::Redis::Mgmt::V2017_10_01::Operations
      FirewallRules = Azure::Redis::Mgmt::V2017_10_01::FirewallRules
      Redis = Azure::Redis::Mgmt::V2017_10_01::Redis

      module Models
        RedisKeyType = Azure::Redis::Mgmt::V2017_10_01::Models::RedisKeyType
        ReplicationRole = Azure::Redis::Mgmt::V2017_10_01::Models::ReplicationRole
        Sku = Azure::Redis::Mgmt::V2017_10_01::Models::Sku
        DayOfWeek = Azure::Redis::Mgmt::V2017_10_01::Models::DayOfWeek
        Resource = Azure::Redis::Mgmt::V2017_10_01::Models::Resource
        SkuName = Azure::Redis::Mgmt::V2017_10_01::Models::SkuName
        RedisListResult = Azure::Redis::Mgmt::V2017_10_01::Models::RedisListResult
        OperationDisplay = Azure::Redis::Mgmt::V2017_10_01::Models::OperationDisplay
        RedisFirewallRuleListResult = Azure::Redis::Mgmt::V2017_10_01::Models::RedisFirewallRuleListResult
        RedisAccessKeys = Azure::Redis::Mgmt::V2017_10_01::Models::RedisAccessKeys
        RedisLinkedServerCreateParameters = Azure::Redis::Mgmt::V2017_10_01::Models::RedisLinkedServerCreateParameters
        RedisUpdateParameters = Azure::Redis::Mgmt::V2017_10_01::Models::RedisUpdateParameters
        RedisRebootParameters = Azure::Redis::Mgmt::V2017_10_01::Models::RedisRebootParameters
        RedisRegenerateKeyParameters = Azure::Redis::Mgmt::V2017_10_01::Models::RedisRegenerateKeyParameters
        RedisFirewallRuleCreateParameters = Azure::Redis::Mgmt::V2017_10_01::Models::RedisFirewallRuleCreateParameters
        OperationListResult = Azure::Redis::Mgmt::V2017_10_01::Models::OperationListResult
        ImportRDBParameters = Azure::Redis::Mgmt::V2017_10_01::Models::ImportRDBParameters
        ExportRDBParameters = Azure::Redis::Mgmt::V2017_10_01::Models::ExportRDBParameters
        RedisCreateParameters = Azure::Redis::Mgmt::V2017_10_01::Models::RedisCreateParameters
        ScheduleEntry = Azure::Redis::Mgmt::V2017_10_01::Models::ScheduleEntry
        RedisForceRebootResponse = Azure::Redis::Mgmt::V2017_10_01::Models::RedisForceRebootResponse
        RedisLinkedServerWithPropertiesList = Azure::Redis::Mgmt::V2017_10_01::Models::RedisLinkedServerWithPropertiesList
        Operation = Azure::Redis::Mgmt::V2017_10_01::Models::Operation
        ProxyResource = Azure::Redis::Mgmt::V2017_10_01::Models::ProxyResource
        RedisFirewallRule = Azure::Redis::Mgmt::V2017_10_01::Models::RedisFirewallRule
        TrackedResource = Azure::Redis::Mgmt::V2017_10_01::Models::TrackedResource
        RedisPatchSchedule = Azure::Redis::Mgmt::V2017_10_01::Models::RedisPatchSchedule
        RedisLinkedServerWithProperties = Azure::Redis::Mgmt::V2017_10_01::Models::RedisLinkedServerWithProperties
        RedisResource = Azure::Redis::Mgmt::V2017_10_01::Models::RedisResource
        RedisLinkedServer = Azure::Redis::Mgmt::V2017_10_01::Models::RedisLinkedServer
        RebootType = Azure::Redis::Mgmt::V2017_10_01::Models::RebootType
        SkuFamily = Azure::Redis::Mgmt::V2017_10_01::Models::SkuFamily
      end

      class RedisManagementClass
        attr_reader :patch_schedules, :linked_server, :operations, :firewall_rules, :redis, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Redis::Mgmt::V2017_10_01::RedisManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @patch_schedules = @client_0.patch_schedules
          @linked_server = @client_0.linked_server
          @operations = @client_0.operations
          @firewall_rules = @client_0.firewall_rules
          @redis = @client_0.redis

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Redis/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def redis_key_type
            Azure::Redis::Mgmt::V2017_10_01::Models::RedisKeyType
          end
          def replication_role
            Azure::Redis::Mgmt::V2017_10_01::Models::ReplicationRole
          end
          def sku
            Azure::Redis::Mgmt::V2017_10_01::Models::Sku
          end
          def day_of_week
            Azure::Redis::Mgmt::V2017_10_01::Models::DayOfWeek
          end
          def resource
            Azure::Redis::Mgmt::V2017_10_01::Models::Resource
          end
          def sku_name
            Azure::Redis::Mgmt::V2017_10_01::Models::SkuName
          end
          def redis_list_result
            Azure::Redis::Mgmt::V2017_10_01::Models::RedisListResult
          end
          def operation_display
            Azure::Redis::Mgmt::V2017_10_01::Models::OperationDisplay
          end
          def redis_firewall_rule_list_result
            Azure::Redis::Mgmt::V2017_10_01::Models::RedisFirewallRuleListResult
          end
          def redis_access_keys
            Azure::Redis::Mgmt::V2017_10_01::Models::RedisAccessKeys
          end
          def redis_linked_server_create_parameters
            Azure::Redis::Mgmt::V2017_10_01::Models::RedisLinkedServerCreateParameters
          end
          def redis_update_parameters
            Azure::Redis::Mgmt::V2017_10_01::Models::RedisUpdateParameters
          end
          def redis_reboot_parameters
            Azure::Redis::Mgmt::V2017_10_01::Models::RedisRebootParameters
          end
          def redis_regenerate_key_parameters
            Azure::Redis::Mgmt::V2017_10_01::Models::RedisRegenerateKeyParameters
          end
          def redis_firewall_rule_create_parameters
            Azure::Redis::Mgmt::V2017_10_01::Models::RedisFirewallRuleCreateParameters
          end
          def operation_list_result
            Azure::Redis::Mgmt::V2017_10_01::Models::OperationListResult
          end
          def import_rdbparameters
            Azure::Redis::Mgmt::V2017_10_01::Models::ImportRDBParameters
          end
          def export_rdbparameters
            Azure::Redis::Mgmt::V2017_10_01::Models::ExportRDBParameters
          end
          def redis_create_parameters
            Azure::Redis::Mgmt::V2017_10_01::Models::RedisCreateParameters
          end
          def schedule_entry
            Azure::Redis::Mgmt::V2017_10_01::Models::ScheduleEntry
          end
          def redis_force_reboot_response
            Azure::Redis::Mgmt::V2017_10_01::Models::RedisForceRebootResponse
          end
          def redis_linked_server_with_properties_list
            Azure::Redis::Mgmt::V2017_10_01::Models::RedisLinkedServerWithPropertiesList
          end
          def operation
            Azure::Redis::Mgmt::V2017_10_01::Models::Operation
          end
          def proxy_resource
            Azure::Redis::Mgmt::V2017_10_01::Models::ProxyResource
          end
          def redis_firewall_rule
            Azure::Redis::Mgmt::V2017_10_01::Models::RedisFirewallRule
          end
          def tracked_resource
            Azure::Redis::Mgmt::V2017_10_01::Models::TrackedResource
          end
          def redis_patch_schedule
            Azure::Redis::Mgmt::V2017_10_01::Models::RedisPatchSchedule
          end
          def redis_linked_server_with_properties
            Azure::Redis::Mgmt::V2017_10_01::Models::RedisLinkedServerWithProperties
          end
          def redis_resource
            Azure::Redis::Mgmt::V2017_10_01::Models::RedisResource
          end
          def redis_linked_server
            Azure::Redis::Mgmt::V2017_10_01::Models::RedisLinkedServer
          end
          def reboot_type
            Azure::Redis::Mgmt::V2017_10_01::Models::RebootType
          end
          def sku_family
            Azure::Redis::Mgmt::V2017_10_01::Models::SkuFamily
          end
        end
      end
    end
  end
end
