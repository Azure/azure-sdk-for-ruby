# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_sql'


module Azure::Profiles::SQLModule::Management::Profile_2015_05_01_Preview
  module SQL
    DatabaseAdvisors = Azure::ARM::SQL::Api_2015_05_01_preview::DatabaseAdvisors
    DatabaseRecommendedActions = Azure::ARM::SQL::Api_2015_05_01_preview::DatabaseRecommendedActions
    ServerAdvisors = Azure::ARM::SQL::Api_2015_05_01_preview::ServerAdvisors
    DatabaseBlobAuditingPolicies = Azure::ARM::SQL::Api_2015_05_01_preview::DatabaseBlobAuditingPolicies
    EncryptionProtectors = Azure::ARM::SQL::Api_2015_05_01_preview::EncryptionProtectors
    FailoverGroups = Azure::ARM::SQL::Api_2015_05_01_preview::FailoverGroups
    Operations = Azure::ARM::SQL::Api_2015_05_01_preview::Operations
    ServerKeys = Azure::ARM::SQL::Api_2015_05_01_preview::ServerKeys
    Servers = Azure::ARM::SQL::Api_2015_05_01_preview::Servers
    SyncAgents = Azure::ARM::SQL::Api_2015_05_01_preview::SyncAgents
    SyncGroups = Azure::ARM::SQL::Api_2015_05_01_preview::SyncGroups
    SyncMembers = Azure::ARM::SQL::Api_2015_05_01_preview::SyncMembers
    VirtualNetworkRules = Azure::ARM::SQL::Api_2015_05_01_preview::VirtualNetworkRules

    module Models
      ServerListResult = Azure::ARM::SQL::Api_2015_05_01_preview::Models::ServerListResult
      ServerKeyListResult = Azure::ARM::SQL::Api_2015_05_01_preview::Models::ServerKeyListResult
      ResourceIdentity = Azure::ARM::SQL::Api_2015_05_01_preview::Models::ResourceIdentity
      RecommendedActionImplementationInfo = Azure::ARM::SQL::Api_2015_05_01_preview::Models::RecommendedActionImplementationInfo
      RecommendedActionImpactRecord = Azure::ARM::SQL::Api_2015_05_01_preview::Models::RecommendedActionImpactRecord
      SyncFullSchemaPropertiesListResult = Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncFullSchemaPropertiesListResult
      RecommendedActionStateInfo = Azure::ARM::SQL::Api_2015_05_01_preview::Models::RecommendedActionStateInfo
      SyncGroupSchemaTable = Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncGroupSchemaTable
      RecommendedActionErrorInfo = Azure::ARM::SQL::Api_2015_05_01_preview::Models::RecommendedActionErrorInfo
      SyncGroupLogListResult = Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncGroupLogListResult
      RecommendedActionMetricInfo = Azure::ARM::SQL::Api_2015_05_01_preview::Models::RecommendedActionMetricInfo
      FailoverGroupReadWriteEndpoint = Azure::ARM::SQL::Api_2015_05_01_preview::Models::FailoverGroupReadWriteEndpoint
      SyncFullSchemaProperties = Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncFullSchemaProperties
      PartnerInfo = Azure::ARM::SQL::Api_2015_05_01_preview::Models::PartnerInfo
      VirtualNetworkRuleListResult = Azure::ARM::SQL::Api_2015_05_01_preview::Models::VirtualNetworkRuleListResult
      FailoverGroupUpdate = Azure::ARM::SQL::Api_2015_05_01_preview::Models::FailoverGroupUpdate
      ServerUpdate = Azure::ARM::SQL::Api_2015_05_01_preview::Models::ServerUpdate
      OperationDisplay = Azure::ARM::SQL::Api_2015_05_01_preview::Models::OperationDisplay
      SyncMemberListResult = Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncMemberListResult
      OperationListResult = Azure::ARM::SQL::Api_2015_05_01_preview::Models::OperationListResult
      SyncAgentListResult = Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncAgentListResult
      SyncGroupSchemaTableColumn = Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncGroupSchemaTableColumn
      SyncAgentKeyProperties = Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncAgentKeyProperties
      FailoverGroupReadOnlyEndpoint = Azure::ARM::SQL::Api_2015_05_01_preview::Models::FailoverGroupReadOnlyEndpoint
      SyncGroupListResult = Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncGroupListResult
      FailoverGroupListResult = Azure::ARM::SQL::Api_2015_05_01_preview::Models::FailoverGroupListResult
      SyncAgentLinkedDatabaseListResult = Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncAgentLinkedDatabaseListResult
      SyncGroupSchema = Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncGroupSchema
      SyncDatabaseIdProperties = Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncDatabaseIdProperties
      SyncGroupLogProperties = Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncGroupLogProperties
      SyncDatabaseIdListResult = Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncDatabaseIdListResult
      EncryptionProtectorListResult = Azure::ARM::SQL::Api_2015_05_01_preview::Models::EncryptionProtectorListResult
      SyncFullSchemaTableColumn = Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncFullSchemaTableColumn
      Operation = Azure::ARM::SQL::Api_2015_05_01_preview::Models::Operation
      SyncFullSchemaTable = Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncFullSchemaTable
      ProxyResource = Azure::ARM::SQL::Api_2015_05_01_preview::Models::ProxyResource
      RecommendedAction = Azure::ARM::SQL::Api_2015_05_01_preview::Models::RecommendedAction
      Advisor = Azure::ARM::SQL::Api_2015_05_01_preview::Models::Advisor
      DatabaseBlobAuditingPolicy = Azure::ARM::SQL::Api_2015_05_01_preview::Models::DatabaseBlobAuditingPolicy
      EncryptionProtector = Azure::ARM::SQL::Api_2015_05_01_preview::Models::EncryptionProtector
      FailoverGroup = Azure::ARM::SQL::Api_2015_05_01_preview::Models::FailoverGroup
      ServerKey = Azure::ARM::SQL::Api_2015_05_01_preview::Models::ServerKey
      TrackedResource = Azure::ARM::SQL::Api_2015_05_01_preview::Models::TrackedResource
      Server = Azure::ARM::SQL::Api_2015_05_01_preview::Models::Server
      SyncAgent = Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncAgent
      SyncAgentLinkedDatabase = Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncAgentLinkedDatabase
      SyncGroup = Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncGroup
      SyncMember = Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncMember
      VirtualNetworkRule = Azure::ARM::SQL::Api_2015_05_01_preview::Models::VirtualNetworkRule
      AdvisorStatus = Azure::ARM::SQL::Api_2015_05_01_preview::Models::AdvisorStatus
      AutoExecuteStatus = Azure::ARM::SQL::Api_2015_05_01_preview::Models::AutoExecuteStatus
      AutoExecuteStatusInheritedFrom = Azure::ARM::SQL::Api_2015_05_01_preview::Models::AutoExecuteStatusInheritedFrom
      RecommendedActionCurrentState = Azure::ARM::SQL::Api_2015_05_01_preview::Models::RecommendedActionCurrentState
      RecommendedActionInitiatedBy = Azure::ARM::SQL::Api_2015_05_01_preview::Models::RecommendedActionInitiatedBy
      ImplementationMethod = Azure::ARM::SQL::Api_2015_05_01_preview::Models::ImplementationMethod
      IsRetryable = Azure::ARM::SQL::Api_2015_05_01_preview::Models::IsRetryable
      BlobAuditingPolicyState = Azure::ARM::SQL::Api_2015_05_01_preview::Models::BlobAuditingPolicyState
      ServerKeyType = Azure::ARM::SQL::Api_2015_05_01_preview::Models::ServerKeyType
      ReadWriteEndpointFailoverPolicy = Azure::ARM::SQL::Api_2015_05_01_preview::Models::ReadWriteEndpointFailoverPolicy
      ReadOnlyEndpointFailoverPolicy = Azure::ARM::SQL::Api_2015_05_01_preview::Models::ReadOnlyEndpointFailoverPolicy
      FailoverGroupReplicationRole = Azure::ARM::SQL::Api_2015_05_01_preview::Models::FailoverGroupReplicationRole
      OperationOrigin = Azure::ARM::SQL::Api_2015_05_01_preview::Models::OperationOrigin
      IdentityType = Azure::ARM::SQL::Api_2015_05_01_preview::Models::IdentityType
      SyncAgentState = Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncAgentState
      SyncMemberDbType = Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncMemberDbType
      SyncGroupLogType = Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncGroupLogType
      SyncConflictResolutionPolicy = Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncConflictResolutionPolicy
      SyncGroupState = Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncGroupState
      SyncDirection = Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncDirection
      SyncMemberState = Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncMemberState
    end

    #
    # SQL
    #
    class SQLClass
      attr_accessor :database_advisors, :database_recommended_actions, :server_advisors, :database_blob_auditing_policies, :encryption_protectors, :failover_groups, :operations, :server_keys, :servers, :sync_agents, :sync_groups, :sync_members, :virtual_network_rules, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::SQL::Api_2015_05_01_preview::SqlManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.database_advisors = Azure::ARM::SQL::Api_2015_05_01_preview::DatabaseAdvisors.new(client)
        self.database_recommended_actions = Azure::ARM::SQL::Api_2015_05_01_preview::DatabaseRecommendedActions.new(client)
        self.server_advisors = Azure::ARM::SQL::Api_2015_05_01_preview::ServerAdvisors.new(client)
        self.database_blob_auditing_policies = Azure::ARM::SQL::Api_2015_05_01_preview::DatabaseBlobAuditingPolicies.new(client)
        self.encryption_protectors = Azure::ARM::SQL::Api_2015_05_01_preview::EncryptionProtectors.new(client)
        self.failover_groups = Azure::ARM::SQL::Api_2015_05_01_preview::FailoverGroups.new(client)
        self.operations = Azure::ARM::SQL::Api_2015_05_01_preview::Operations.new(client)
        self.server_keys = Azure::ARM::SQL::Api_2015_05_01_preview::ServerKeys.new(client)
        self.servers = Azure::ARM::SQL::Api_2015_05_01_preview::Servers.new(client)
        self.sync_agents = Azure::ARM::SQL::Api_2015_05_01_preview::SyncAgents.new(client)
        self.sync_groups = Azure::ARM::SQL::Api_2015_05_01_preview::SyncGroups.new(client)
        self.sync_members = Azure::ARM::SQL::Api_2015_05_01_preview::SyncMembers.new(client)
        self.virtual_network_rules = Azure::ARM::SQL::Api_2015_05_01_preview::VirtualNetworkRules.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2015-05-01-preview'
            client = Azure::ARM::SQL::Api_2015_05_01_preview::SqlManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def server_list_result
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::ServerListResult
        end
        def server_key_list_result
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::ServerKeyListResult
        end
        def resource_identity
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::ResourceIdentity
        end
        def recommended_action_implementation_info
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::RecommendedActionImplementationInfo
        end
        def recommended_action_impact_record
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::RecommendedActionImpactRecord
        end
        def sync_full_schema_properties_list_result
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncFullSchemaPropertiesListResult
        end
        def recommended_action_state_info
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::RecommendedActionStateInfo
        end
        def sync_group_schema_table
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncGroupSchemaTable
        end
        def recommended_action_error_info
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::RecommendedActionErrorInfo
        end
        def sync_group_log_list_result
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncGroupLogListResult
        end
        def recommended_action_metric_info
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::RecommendedActionMetricInfo
        end
        def failover_group_read_write_endpoint
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::FailoverGroupReadWriteEndpoint
        end
        def sync_full_schema_properties
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncFullSchemaProperties
        end
        def partner_info
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::PartnerInfo
        end
        def virtual_network_rule_list_result
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::VirtualNetworkRuleListResult
        end
        def failover_group_update
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::FailoverGroupUpdate
        end
        def server_update
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::ServerUpdate
        end
        def operation_display
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::OperationDisplay
        end
        def sync_member_list_result
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncMemberListResult
        end
        def operation_list_result
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::OperationListResult
        end
        def sync_agent_list_result
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncAgentListResult
        end
        def sync_group_schema_table_column
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncGroupSchemaTableColumn
        end
        def sync_agent_key_properties
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncAgentKeyProperties
        end
        def failover_group_read_only_endpoint
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::FailoverGroupReadOnlyEndpoint
        end
        def sync_group_list_result
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncGroupListResult
        end
        def failover_group_list_result
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::FailoverGroupListResult
        end
        def sync_agent_linked_database_list_result
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncAgentLinkedDatabaseListResult
        end
        def sync_group_schema
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncGroupSchema
        end
        def sync_database_id_properties
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncDatabaseIdProperties
        end
        def sync_group_log_properties
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncGroupLogProperties
        end
        def sync_database_id_list_result
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncDatabaseIdListResult
        end
        def encryption_protector_list_result
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::EncryptionProtectorListResult
        end
        def sync_full_schema_table_column
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncFullSchemaTableColumn
        end
        def operation
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::Operation
        end
        def sync_full_schema_table
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncFullSchemaTable
        end
        def proxy_resource
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::ProxyResource
        end
        def recommended_action
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::RecommendedAction
        end
        def advisor
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::Advisor
        end
        def database_blob_auditing_policy
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::DatabaseBlobAuditingPolicy
        end
        def encryption_protector
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::EncryptionProtector
        end
        def failover_group
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::FailoverGroup
        end
        def server_key
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::ServerKey
        end
        def tracked_resource
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::TrackedResource
        end
        def server
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::Server
        end
        def sync_agent
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncAgent
        end
        def sync_agent_linked_database
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncAgentLinkedDatabase
        end
        def sync_group
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncGroup
        end
        def sync_member
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncMember
        end
        def virtual_network_rule
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::VirtualNetworkRule
        end
        def advisor_status
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::AdvisorStatus
        end
        def auto_execute_status
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::AutoExecuteStatus
        end
        def auto_execute_status_inherited_from
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::AutoExecuteStatusInheritedFrom
        end
        def recommended_action_current_state
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::RecommendedActionCurrentState
        end
        def recommended_action_initiated_by
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::RecommendedActionInitiatedBy
        end
        def implementation_method
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::ImplementationMethod
        end
        def is_retryable
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::IsRetryable
        end
        def blob_auditing_policy_state
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::BlobAuditingPolicyState
        end
        def server_key_type
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::ServerKeyType
        end
        def read_write_endpoint_failover_policy
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::ReadWriteEndpointFailoverPolicy
        end
        def read_only_endpoint_failover_policy
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::ReadOnlyEndpointFailoverPolicy
        end
        def failover_group_replication_role
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::FailoverGroupReplicationRole
        end
        def operation_origin
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::OperationOrigin
        end
        def identity_type
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::IdentityType
        end
        def sync_agent_state
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncAgentState
        end
        def sync_member_db_type
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncMemberDbType
        end
        def sync_group_log_type
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncGroupLogType
        end
        def sync_conflict_resolution_policy
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncConflictResolutionPolicy
        end
        def sync_group_state
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncGroupState
        end
        def sync_direction
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncDirection
        end
        def sync_member_state
          Azure::ARM::SQL::Api_2015_05_01_preview::Models::SyncMemberState
        end
      end
    end
  end
end
