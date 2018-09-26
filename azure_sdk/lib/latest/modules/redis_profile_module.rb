# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_redis'

module Azure::Profiles::Latest
  module Redis
    module Mgmt
      Operations = Azure::Redis::Mgmt::V2018_03_01::Operations
      FirewallRules = Azure::Redis::Mgmt::V2018_03_01::FirewallRules
      PatchSchedules = Azure::Redis::Mgmt::V2018_03_01::PatchSchedules
      LinkedServer = Azure::Redis::Mgmt::V2018_03_01::LinkedServer
      Redis = Azure::Redis::Mgmt::V2018_03_01::Redis

      module Models
        Operation = Azure::Redis::Mgmt::V2018_03_01::Models::Operation
        DayOfWeek = Azure::Redis::Mgmt::V2018_03_01::Models::DayOfWeek
        Sku = Azure::Redis::Mgmt::V2018_03_01::Models::Sku
        TrackedResource = Azure::Redis::Mgmt::V2018_03_01::Models::TrackedResource
        ProxyResource = Azure::Redis::Mgmt::V2018_03_01::Models::ProxyResource
        Resource = Azure::Redis::Mgmt::V2018_03_01::Models::Resource
        RedisRebootParameters = Azure::Redis::Mgmt::V2018_03_01::Models::RedisRebootParameters
        ExportRDBParameters = Azure::Redis::Mgmt::V2018_03_01::Models::ExportRDBParameters
        CheckNameAvailabilityParameters = Azure::Redis::Mgmt::V2018_03_01::Models::CheckNameAvailabilityParameters
        RedisListResult = Azure::Redis::Mgmt::V2018_03_01::Models::RedisListResult
        RedisAccessKeys = Azure::Redis::Mgmt::V2018_03_01::Models::RedisAccessKeys
        RedisRegenerateKeyParameters = Azure::Redis::Mgmt::V2018_03_01::Models::RedisRegenerateKeyParameters
        RedisUpdateParameters = Azure::Redis::Mgmt::V2018_03_01::Models::RedisUpdateParameters
        ImportRDBParameters = Azure::Redis::Mgmt::V2018_03_01::Models::ImportRDBParameters
        RedisFirewallRuleCreateParameters = Azure::Redis::Mgmt::V2018_03_01::Models::RedisFirewallRuleCreateParameters
        ScheduleEntry = Azure::Redis::Mgmt::V2018_03_01::Models::ScheduleEntry
        RedisPatchScheduleListResult = Azure::Redis::Mgmt::V2018_03_01::Models::RedisPatchScheduleListResult
        UpgradeNotification = Azure::Redis::Mgmt::V2018_03_01::Models::UpgradeNotification
        RedisForceRebootResponse = Azure::Redis::Mgmt::V2018_03_01::Models::RedisForceRebootResponse
        RedisLinkedServer = Azure::Redis::Mgmt::V2018_03_01::Models::RedisLinkedServer
        RedisFirewallRuleListResult = Azure::Redis::Mgmt::V2018_03_01::Models::RedisFirewallRuleListResult
        RedisLinkedServerWithPropertiesList = Azure::Redis::Mgmt::V2018_03_01::Models::RedisLinkedServerWithPropertiesList
        RedisCreateParameters = Azure::Redis::Mgmt::V2018_03_01::Models::RedisCreateParameters
        RedisLinkedServerCreateParameters = Azure::Redis::Mgmt::V2018_03_01::Models::RedisLinkedServerCreateParameters
        RedisFirewallRule = Azure::Redis::Mgmt::V2018_03_01::Models::RedisFirewallRule
        RedisResource = Azure::Redis::Mgmt::V2018_03_01::Models::RedisResource
        NotificationListResponse = Azure::Redis::Mgmt::V2018_03_01::Models::NotificationListResponse
        RedisPatchSchedule = Azure::Redis::Mgmt::V2018_03_01::Models::RedisPatchSchedule
        RedisLinkedServerWithProperties = Azure::Redis::Mgmt::V2018_03_01::Models::RedisLinkedServerWithProperties
        SkuFamily = Azure::Redis::Mgmt::V2018_03_01::Models::SkuFamily
        TlsVersion = Azure::Redis::Mgmt::V2018_03_01::Models::TlsVersion
        RedisKeyType = Azure::Redis::Mgmt::V2018_03_01::Models::RedisKeyType
        ProvisioningState = Azure::Redis::Mgmt::V2018_03_01::Models::ProvisioningState
        OperationDisplay = Azure::Redis::Mgmt::V2018_03_01::Models::OperationDisplay
        RebootType = Azure::Redis::Mgmt::V2018_03_01::Models::RebootType
        OperationListResult = Azure::Redis::Mgmt::V2018_03_01::Models::OperationListResult
        ReplicationRole = Azure::Redis::Mgmt::V2018_03_01::Models::ReplicationRole
        SkuName = Azure::Redis::Mgmt::V2018_03_01::Models::SkuName
      end

      class RedisManagementClass
        attr_reader :operations, :firewall_rules, :patch_schedules, :linked_server, :redis, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Redis::Mgmt::V2018_03_01::RedisManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @firewall_rules = @client_0.firewall_rules
          @patch_schedules = @client_0.patch_schedules
          @linked_server = @client_0.linked_server
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
          def operation
            Azure::Redis::Mgmt::V2018_03_01::Models::Operation
          end
          def day_of_week
            Azure::Redis::Mgmt::V2018_03_01::Models::DayOfWeek
          end
          def sku
            Azure::Redis::Mgmt::V2018_03_01::Models::Sku
          end
          def tracked_resource
            Azure::Redis::Mgmt::V2018_03_01::Models::TrackedResource
          end
          def proxy_resource
            Azure::Redis::Mgmt::V2018_03_01::Models::ProxyResource
          end
          def resource
            Azure::Redis::Mgmt::V2018_03_01::Models::Resource
          end
          def redis_reboot_parameters
            Azure::Redis::Mgmt::V2018_03_01::Models::RedisRebootParameters
          end
          def export_rdbparameters
            Azure::Redis::Mgmt::V2018_03_01::Models::ExportRDBParameters
          end
          def check_name_availability_parameters
            Azure::Redis::Mgmt::V2018_03_01::Models::CheckNameAvailabilityParameters
          end
          def redis_list_result
            Azure::Redis::Mgmt::V2018_03_01::Models::RedisListResult
          end
          def redis_access_keys
            Azure::Redis::Mgmt::V2018_03_01::Models::RedisAccessKeys
          end
          def redis_regenerate_key_parameters
            Azure::Redis::Mgmt::V2018_03_01::Models::RedisRegenerateKeyParameters
          end
          def redis_update_parameters
            Azure::Redis::Mgmt::V2018_03_01::Models::RedisUpdateParameters
          end
          def import_rdbparameters
            Azure::Redis::Mgmt::V2018_03_01::Models::ImportRDBParameters
          end
          def redis_firewall_rule_create_parameters
            Azure::Redis::Mgmt::V2018_03_01::Models::RedisFirewallRuleCreateParameters
          end
          def schedule_entry
            Azure::Redis::Mgmt::V2018_03_01::Models::ScheduleEntry
          end
          def redis_patch_schedule_list_result
            Azure::Redis::Mgmt::V2018_03_01::Models::RedisPatchScheduleListResult
          end
          def upgrade_notification
            Azure::Redis::Mgmt::V2018_03_01::Models::UpgradeNotification
          end
          def redis_force_reboot_response
            Azure::Redis::Mgmt::V2018_03_01::Models::RedisForceRebootResponse
          end
          def redis_linked_server
            Azure::Redis::Mgmt::V2018_03_01::Models::RedisLinkedServer
          end
          def redis_firewall_rule_list_result
            Azure::Redis::Mgmt::V2018_03_01::Models::RedisFirewallRuleListResult
          end
          def redis_linked_server_with_properties_list
            Azure::Redis::Mgmt::V2018_03_01::Models::RedisLinkedServerWithPropertiesList
          end
          def redis_create_parameters
            Azure::Redis::Mgmt::V2018_03_01::Models::RedisCreateParameters
          end
          def redis_linked_server_create_parameters
            Azure::Redis::Mgmt::V2018_03_01::Models::RedisLinkedServerCreateParameters
          end
          def redis_firewall_rule
            Azure::Redis::Mgmt::V2018_03_01::Models::RedisFirewallRule
          end
          def redis_resource
            Azure::Redis::Mgmt::V2018_03_01::Models::RedisResource
          end
          def notification_list_response
            Azure::Redis::Mgmt::V2018_03_01::Models::NotificationListResponse
          end
          def redis_patch_schedule
            Azure::Redis::Mgmt::V2018_03_01::Models::RedisPatchSchedule
          end
          def redis_linked_server_with_properties
            Azure::Redis::Mgmt::V2018_03_01::Models::RedisLinkedServerWithProperties
          end
          def sku_family
            Azure::Redis::Mgmt::V2018_03_01::Models::SkuFamily
          end
          def tls_version
            Azure::Redis::Mgmt::V2018_03_01::Models::TlsVersion
          end
          def redis_key_type
            Azure::Redis::Mgmt::V2018_03_01::Models::RedisKeyType
          end
          def provisioning_state
            Azure::Redis::Mgmt::V2018_03_01::Models::ProvisioningState
          end
          def operation_display
            Azure::Redis::Mgmt::V2018_03_01::Models::OperationDisplay
          end
          def reboot_type
            Azure::Redis::Mgmt::V2018_03_01::Models::RebootType
          end
          def operation_list_result
            Azure::Redis::Mgmt::V2018_03_01::Models::OperationListResult
          end
          def replication_role
            Azure::Redis::Mgmt::V2018_03_01::Models::ReplicationRole
          end
          def sku_name
            Azure::Redis::Mgmt::V2018_03_01::Models::SkuName
          end
        end
      end
    end
  end
end
