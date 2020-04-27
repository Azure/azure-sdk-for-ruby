# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_synapse'

module Azure::Profiles::Latest
  module Synapse
    module Mgmt
      BigDataPools = Azure::Synapse::Mgmt::V2019_06_01_preview::BigDataPools
      Operations = Azure::Synapse::Mgmt::V2019_06_01_preview::Operations
      IpFirewallRules = Azure::Synapse::Mgmt::V2019_06_01_preview::IpFirewallRules
      SqlPools = Azure::Synapse::Mgmt::V2019_06_01_preview::SqlPools
      SqlPoolMetadataSyncConfigs = Azure::Synapse::Mgmt::V2019_06_01_preview::SqlPoolMetadataSyncConfigs
      SqlPoolOperationResults = Azure::Synapse::Mgmt::V2019_06_01_preview::SqlPoolOperationResults
      SqlPoolGeoBackupPolicies = Azure::Synapse::Mgmt::V2019_06_01_preview::SqlPoolGeoBackupPolicies
      SqlPoolDataWarehouseUserActivities = Azure::Synapse::Mgmt::V2019_06_01_preview::SqlPoolDataWarehouseUserActivities
      SqlPoolRestorePoints = Azure::Synapse::Mgmt::V2019_06_01_preview::SqlPoolRestorePoints
      SqlPoolReplicationLinks = Azure::Synapse::Mgmt::V2019_06_01_preview::SqlPoolReplicationLinks
      SqlPoolTransparentDataEncryptions = Azure::Synapse::Mgmt::V2019_06_01_preview::SqlPoolTransparentDataEncryptions
      SqlPoolBlobAuditingPolicies = Azure::Synapse::Mgmt::V2019_06_01_preview::SqlPoolBlobAuditingPolicies
      SqlPoolOperations = Azure::Synapse::Mgmt::V2019_06_01_preview::SqlPoolOperations
      SqlPoolUsages = Azure::Synapse::Mgmt::V2019_06_01_preview::SqlPoolUsages
      SqlPoolSensitivityLabels = Azure::Synapse::Mgmt::V2019_06_01_preview::SqlPoolSensitivityLabels
      SqlPoolSchemas = Azure::Synapse::Mgmt::V2019_06_01_preview::SqlPoolSchemas
      SqlPoolTables = Azure::Synapse::Mgmt::V2019_06_01_preview::SqlPoolTables
      SqlPoolTableColumns = Azure::Synapse::Mgmt::V2019_06_01_preview::SqlPoolTableColumns
      SqlPoolConnectionPolicies = Azure::Synapse::Mgmt::V2019_06_01_preview::SqlPoolConnectionPolicies
      SqlPoolVulnerabilityAssessments = Azure::Synapse::Mgmt::V2019_06_01_preview::SqlPoolVulnerabilityAssessments
      SqlPoolVulnerabilityAssessmentScans = Azure::Synapse::Mgmt::V2019_06_01_preview::SqlPoolVulnerabilityAssessmentScans
      SqlPoolSecurityAlertPolicies = Azure::Synapse::Mgmt::V2019_06_01_preview::SqlPoolSecurityAlertPolicies
      SqlPoolVulnerabilityAssessmentRuleBaselines = Azure::Synapse::Mgmt::V2019_06_01_preview::SqlPoolVulnerabilityAssessmentRuleBaselines
      Workspaces = Azure::Synapse::Mgmt::V2019_06_01_preview::Workspaces
      WorkspaceAadAdmins = Azure::Synapse::Mgmt::V2019_06_01_preview::WorkspaceAadAdmins
      WorkspaceManagedIdentitySqlControlSettings = Azure::Synapse::Mgmt::V2019_06_01_preview::WorkspaceManagedIdentitySqlControlSettings

      module Models
        SqlPoolPatchInfo = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolPatchInfo
        AutoScaleProperties = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::AutoScaleProperties
        SqlPoolInfoListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolInfoListResult
        AutoPauseProperties = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::AutoPauseProperties
        ResourceMoveDefinition = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ResourceMoveDefinition
        BigDataPoolResourceInfoListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::BigDataPoolResourceInfoListResult
        LibraryRequirements = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::LibraryRequirements
        VulnerabilityAssessmentRecurringScansProperties = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::VulnerabilityAssessmentRecurringScansProperties
        SqlPoolTableListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolTableListResult
        Resource = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::Resource
        VulnerabilityAssessmentScanError = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::VulnerabilityAssessmentScanError
        ErrorAdditionalInfo = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ErrorAdditionalInfo
        SqlPoolVulnerabilityAssessmentListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolVulnerabilityAssessmentListResult
        ErrorContract = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ErrorContract
        QueryMetric = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::QueryMetric
        CheckNameAvailabilityResponse = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::CheckNameAvailabilityResponse
        QueryInterval = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::QueryInterval
        SqlPoolColumnListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolColumnListResult
        QueryStatistic = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::QueryStatistic
        IpFirewallRuleInfoListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IpFirewallRuleInfoListResult
        TopQueries = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::TopQueries
        AvailableRpOperationDisplayInfo = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::AvailableRpOperationDisplayInfo
        TopQueriesListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::TopQueriesListResult
        OperationMetaMetricSpecification = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::OperationMetaMetricSpecification
        VulnerabilityAssessmentScanRecordListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::VulnerabilityAssessmentScanRecordListResult
        OperationMetaServiceSpecification = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::OperationMetaServiceSpecification
        ErrorDetail = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ErrorDetail
        RestorePointListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::RestorePointListResult
        Sku = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::Sku
        ManagedIdentitySqlControlSettingsModelPropertiesGrantSqlControlToManagedIdentity = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ManagedIdentitySqlControlSettingsModelPropertiesGrantSqlControlToManagedIdentity
        SqlPoolVulnerabilityAssessmentRuleBaselineItem = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolVulnerabilityAssessmentRuleBaselineItem
        ReplicationLinkListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ReplicationLinkListResult
        ErrorResponse = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ErrorResponse
        WorkspacePatchInfo = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::WorkspacePatchInfo
        IpFirewallRuleProperties = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IpFirewallRuleProperties
        WorkspaceInfoListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::WorkspaceInfoListResult
        ReplaceAllFirewallRulesOperationResponse = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ReplaceAllFirewallRulesOperationResponse
        ManagedIdentity = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ManagedIdentity
        OperationMetaLogSpecification = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::OperationMetaLogSpecification
        SqlPoolBlobAuditingPolicySqlPoolOperationListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolBlobAuditingPolicySqlPoolOperationListResult
        OperationResource = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::OperationResource
        SqlPoolUsage = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolUsage
        CreateSqlPoolRestorePointDefinition = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::CreateSqlPoolRestorePointDefinition
        CheckNameAvailabilityRequest = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::CheckNameAvailabilityRequest
        SqlPoolUsageListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolUsageListResult
        OperationMetaMetricDimensionSpecification = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::OperationMetaMetricDimensionSpecification
        VirtualNetworkProfile = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::VirtualNetworkProfile
        BigDataPoolPatchInfo = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::BigDataPoolPatchInfo
        SensitivityLabelListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SensitivityLabelListResult
        AvailableRpOperation = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::AvailableRpOperation
        DataLakeStorageAccountDetails = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::DataLakeStorageAccountDetails
        ReplaceAllIpFirewallRulesRequest = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ReplaceAllIpFirewallRulesRequest
        SqlPoolSchemaListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolSchemaListResult
        TrackedResource = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::TrackedResource
        BigDataPoolResourceInfo = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::BigDataPoolResourceInfo
        ProxyResource = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ProxyResource
        AzureEntityResource = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::AzureEntityResource
        IpFirewallRuleInfo = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IpFirewallRuleInfo
        SqlPool = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPool
        MetadataSyncConfig = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::MetadataSyncConfig
        GeoBackupPolicy = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::GeoBackupPolicy
        DataWarehouseUserActivities = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::DataWarehouseUserActivities
        RestorePoint = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::RestorePoint
        ReplicationLink = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ReplicationLink
        TransparentDataEncryption = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::TransparentDataEncryption
        SqlPoolBlobAuditingPolicy = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolBlobAuditingPolicy
        SqlPoolOperation = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolOperation
        SensitivityLabel = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SensitivityLabel
        SqlPoolSchema = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolSchema
        SqlPoolTable = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolTable
        SqlPoolColumn = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolColumn
        SqlPoolConnectionPolicy = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolConnectionPolicy
        SqlPoolVulnerabilityAssessment = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolVulnerabilityAssessment
        VulnerabilityAssessmentScanRecord = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::VulnerabilityAssessmentScanRecord
        SqlPoolSecurityAlertPolicy = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolSecurityAlertPolicy
        SqlPoolVulnerabilityAssessmentRuleBaseline = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolVulnerabilityAssessmentRuleBaseline
        SqlPoolVulnerabilityAssessmentScansExport = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolVulnerabilityAssessmentScansExport
        Workspace = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::Workspace
        WorkspaceAadAdminInfo = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::WorkspaceAadAdminInfo
        ManagedIdentitySqlControlSettingsModel = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ManagedIdentitySqlControlSettingsModel
        NodeSize = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::NodeSize
        NodeSizeFamily = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::NodeSizeFamily
        ProvisioningState = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ProvisioningState
        OperationStatus = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::OperationStatus
        GeoBackupPolicyState = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::GeoBackupPolicyState
        QueryAggregationFunction = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::QueryAggregationFunction
        QueryExecutionType = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::QueryExecutionType
        QueryObservedMetricType = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::QueryObservedMetricType
        QueryMetricUnit = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::QueryMetricUnit
        RestorePointType = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::RestorePointType
        ReplicationRole = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ReplicationRole
        ReplicationState = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ReplicationState
        TransparentDataEncryptionStatus = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::TransparentDataEncryptionStatus
        BlobAuditingPolicyState = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::BlobAuditingPolicyState
        ManagementOperationState = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ManagementOperationState
        ColumnDataType = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ColumnDataType
        VulnerabilityAssessmentScanTriggerType = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::VulnerabilityAssessmentScanTriggerType
        VulnerabilityAssessmentScanState = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::VulnerabilityAssessmentScanState
        SecurityAlertPolicyState = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SecurityAlertPolicyState
        ResourceIdentityType = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ResourceIdentityType
        VulnerabilityAssessmentPolicyBaselineName = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::VulnerabilityAssessmentPolicyBaselineName
      end

      class SynapseManagementClass
        attr_reader :big_data_pools, :operations, :ip_firewall_rules, :sql_pools, :sql_pool_metadata_sync_configs, :sql_pool_operation_results, :sql_pool_geo_backup_policies, :sql_pool_data_warehouse_user_activities, :sql_pool_restore_points, :sql_pool_replication_links, :sql_pool_transparent_data_encryptions, :sql_pool_blob_auditing_policies, :sql_pool_operations, :sql_pool_usages, :sql_pool_sensitivity_labels, :sql_pool_schemas, :sql_pool_tables, :sql_pool_table_columns, :sql_pool_connection_policies, :sql_pool_vulnerability_assessments, :sql_pool_vulnerability_assessment_scans, :sql_pool_security_alert_policies, :sql_pool_vulnerability_assessment_rule_baselines, :workspaces, :workspace_aad_admins, :workspace_managed_identity_sql_control_settings, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Synapse::Mgmt::V2019_06_01_preview::SynapseManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @big_data_pools = @client_0.big_data_pools
          @operations = @client_0.operations
          @ip_firewall_rules = @client_0.ip_firewall_rules
          @sql_pools = @client_0.sql_pools
          @sql_pool_metadata_sync_configs = @client_0.sql_pool_metadata_sync_configs
          @sql_pool_operation_results = @client_0.sql_pool_operation_results
          @sql_pool_geo_backup_policies = @client_0.sql_pool_geo_backup_policies
          @sql_pool_data_warehouse_user_activities = @client_0.sql_pool_data_warehouse_user_activities
          @sql_pool_restore_points = @client_0.sql_pool_restore_points
          @sql_pool_replication_links = @client_0.sql_pool_replication_links
          @sql_pool_transparent_data_encryptions = @client_0.sql_pool_transparent_data_encryptions
          @sql_pool_blob_auditing_policies = @client_0.sql_pool_blob_auditing_policies
          @sql_pool_operations = @client_0.sql_pool_operations
          @sql_pool_usages = @client_0.sql_pool_usages
          @sql_pool_sensitivity_labels = @client_0.sql_pool_sensitivity_labels
          @sql_pool_schemas = @client_0.sql_pool_schemas
          @sql_pool_tables = @client_0.sql_pool_tables
          @sql_pool_table_columns = @client_0.sql_pool_table_columns
          @sql_pool_connection_policies = @client_0.sql_pool_connection_policies
          @sql_pool_vulnerability_assessments = @client_0.sql_pool_vulnerability_assessments
          @sql_pool_vulnerability_assessment_scans = @client_0.sql_pool_vulnerability_assessment_scans
          @sql_pool_security_alert_policies = @client_0.sql_pool_security_alert_policies
          @sql_pool_vulnerability_assessment_rule_baselines = @client_0.sql_pool_vulnerability_assessment_rule_baselines
          @workspaces = @client_0.workspaces
          @workspace_aad_admins = @client_0.workspace_aad_admins
          @workspace_managed_identity_sql_control_settings = @client_0.workspace_managed_identity_sql_control_settings

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Synapse/Mgmt"
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
          def sql_pool_patch_info
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolPatchInfo
          end
          def auto_scale_properties
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::AutoScaleProperties
          end
          def sql_pool_info_list_result
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolInfoListResult
          end
          def auto_pause_properties
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::AutoPauseProperties
          end
          def resource_move_definition
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ResourceMoveDefinition
          end
          def big_data_pool_resource_info_list_result
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::BigDataPoolResourceInfoListResult
          end
          def library_requirements
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::LibraryRequirements
          end
          def vulnerability_assessment_recurring_scans_properties
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::VulnerabilityAssessmentRecurringScansProperties
          end
          def sql_pool_table_list_result
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolTableListResult
          end
          def resource
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::Resource
          end
          def vulnerability_assessment_scan_error
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::VulnerabilityAssessmentScanError
          end
          def error_additional_info
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ErrorAdditionalInfo
          end
          def sql_pool_vulnerability_assessment_list_result
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolVulnerabilityAssessmentListResult
          end
          def error_contract
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ErrorContract
          end
          def query_metric
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::QueryMetric
          end
          def check_name_availability_response
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::CheckNameAvailabilityResponse
          end
          def query_interval
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::QueryInterval
          end
          def sql_pool_column_list_result
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolColumnListResult
          end
          def query_statistic
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::QueryStatistic
          end
          def ip_firewall_rule_info_list_result
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IpFirewallRuleInfoListResult
          end
          def top_queries
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::TopQueries
          end
          def available_rp_operation_display_info
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::AvailableRpOperationDisplayInfo
          end
          def top_queries_list_result
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::TopQueriesListResult
          end
          def operation_meta_metric_specification
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::OperationMetaMetricSpecification
          end
          def vulnerability_assessment_scan_record_list_result
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::VulnerabilityAssessmentScanRecordListResult
          end
          def operation_meta_service_specification
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::OperationMetaServiceSpecification
          end
          def error_detail
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ErrorDetail
          end
          def restore_point_list_result
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::RestorePointListResult
          end
          def sku
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::Sku
          end
          def managed_identity_sql_control_settings_model_properties_grant_sql_control_to_managed_identity
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ManagedIdentitySqlControlSettingsModelPropertiesGrantSqlControlToManagedIdentity
          end
          def sql_pool_vulnerability_assessment_rule_baseline_item
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolVulnerabilityAssessmentRuleBaselineItem
          end
          def replication_link_list_result
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ReplicationLinkListResult
          end
          def error_response
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ErrorResponse
          end
          def workspace_patch_info
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::WorkspacePatchInfo
          end
          def ip_firewall_rule_properties
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IpFirewallRuleProperties
          end
          def workspace_info_list_result
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::WorkspaceInfoListResult
          end
          def replace_all_firewall_rules_operation_response
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ReplaceAllFirewallRulesOperationResponse
          end
          def managed_identity
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ManagedIdentity
          end
          def operation_meta_log_specification
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::OperationMetaLogSpecification
          end
          def sql_pool_blob_auditing_policy_sql_pool_operation_list_result
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolBlobAuditingPolicySqlPoolOperationListResult
          end
          def operation_resource
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::OperationResource
          end
          def sql_pool_usage
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolUsage
          end
          def create_sql_pool_restore_point_definition
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::CreateSqlPoolRestorePointDefinition
          end
          def check_name_availability_request
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::CheckNameAvailabilityRequest
          end
          def sql_pool_usage_list_result
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolUsageListResult
          end
          def operation_meta_metric_dimension_specification
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::OperationMetaMetricDimensionSpecification
          end
          def virtual_network_profile
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::VirtualNetworkProfile
          end
          def big_data_pool_patch_info
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::BigDataPoolPatchInfo
          end
          def sensitivity_label_list_result
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SensitivityLabelListResult
          end
          def available_rp_operation
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::AvailableRpOperation
          end
          def data_lake_storage_account_details
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::DataLakeStorageAccountDetails
          end
          def replace_all_ip_firewall_rules_request
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ReplaceAllIpFirewallRulesRequest
          end
          def sql_pool_schema_list_result
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolSchemaListResult
          end
          def tracked_resource
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::TrackedResource
          end
          def big_data_pool_resource_info
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::BigDataPoolResourceInfo
          end
          def proxy_resource
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ProxyResource
          end
          def azure_entity_resource
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::AzureEntityResource
          end
          def ip_firewall_rule_info
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IpFirewallRuleInfo
          end
          def sql_pool
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPool
          end
          def metadata_sync_config
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::MetadataSyncConfig
          end
          def geo_backup_policy
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::GeoBackupPolicy
          end
          def data_warehouse_user_activities
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::DataWarehouseUserActivities
          end
          def restore_point
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::RestorePoint
          end
          def replication_link
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ReplicationLink
          end
          def transparent_data_encryption
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::TransparentDataEncryption
          end
          def sql_pool_blob_auditing_policy
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolBlobAuditingPolicy
          end
          def sql_pool_operation
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolOperation
          end
          def sensitivity_label
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SensitivityLabel
          end
          def sql_pool_schema
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolSchema
          end
          def sql_pool_table
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolTable
          end
          def sql_pool_column
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolColumn
          end
          def sql_pool_connection_policy
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolConnectionPolicy
          end
          def sql_pool_vulnerability_assessment
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolVulnerabilityAssessment
          end
          def vulnerability_assessment_scan_record
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::VulnerabilityAssessmentScanRecord
          end
          def sql_pool_security_alert_policy
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolSecurityAlertPolicy
          end
          def sql_pool_vulnerability_assessment_rule_baseline
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolVulnerabilityAssessmentRuleBaseline
          end
          def sql_pool_vulnerability_assessment_scans_export
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolVulnerabilityAssessmentScansExport
          end
          def workspace
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::Workspace
          end
          def workspace_aad_admin_info
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::WorkspaceAadAdminInfo
          end
          def managed_identity_sql_control_settings_model
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ManagedIdentitySqlControlSettingsModel
          end
          def node_size
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::NodeSize
          end
          def node_size_family
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::NodeSizeFamily
          end
          def provisioning_state
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ProvisioningState
          end
          def operation_status
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::OperationStatus
          end
          def geo_backup_policy_state
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::GeoBackupPolicyState
          end
          def query_aggregation_function
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::QueryAggregationFunction
          end
          def query_execution_type
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::QueryExecutionType
          end
          def query_observed_metric_type
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::QueryObservedMetricType
          end
          def query_metric_unit
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::QueryMetricUnit
          end
          def restore_point_type
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::RestorePointType
          end
          def replication_role
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ReplicationRole
          end
          def replication_state
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ReplicationState
          end
          def transparent_data_encryption_status
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::TransparentDataEncryptionStatus
          end
          def blob_auditing_policy_state
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::BlobAuditingPolicyState
          end
          def management_operation_state
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ManagementOperationState
          end
          def column_data_type
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ColumnDataType
          end
          def vulnerability_assessment_scan_trigger_type
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::VulnerabilityAssessmentScanTriggerType
          end
          def vulnerability_assessment_scan_state
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::VulnerabilityAssessmentScanState
          end
          def security_alert_policy_state
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SecurityAlertPolicyState
          end
          def resource_identity_type
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ResourceIdentityType
          end
          def vulnerability_assessment_policy_baseline_name
            Azure::Synapse::Mgmt::V2019_06_01_preview::Models::VulnerabilityAssessmentPolicyBaselineName
          end
        end
      end
    end
  end
end
