# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_synapse'

module Azure::Synapse::Profiles::Latest
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
    ExtendedSqlPoolBlobAuditingPolicies = Azure::Synapse::Mgmt::V2019_06_01_preview::ExtendedSqlPoolBlobAuditingPolicies
    DataMaskingPolicies = Azure::Synapse::Mgmt::V2019_06_01_preview::DataMaskingPolicies
    DataMaskingRules = Azure::Synapse::Mgmt::V2019_06_01_preview::DataMaskingRules
    SqlPoolColumns = Azure::Synapse::Mgmt::V2019_06_01_preview::SqlPoolColumns
    SqlPoolWorkloadGroup = Azure::Synapse::Mgmt::V2019_06_01_preview::SqlPoolWorkloadGroup
    SqlPoolWorkloadClassifier = Azure::Synapse::Mgmt::V2019_06_01_preview::SqlPoolWorkloadClassifier
    Workspaces = Azure::Synapse::Mgmt::V2019_06_01_preview::Workspaces
    WorkspaceAadAdmins = Azure::Synapse::Mgmt::V2019_06_01_preview::WorkspaceAadAdmins
    WorkspaceSqlAadAdmins = Azure::Synapse::Mgmt::V2019_06_01_preview::WorkspaceSqlAadAdmins
    WorkspaceManagedIdentitySqlControlSettings = Azure::Synapse::Mgmt::V2019_06_01_preview::WorkspaceManagedIdentitySqlControlSettings
    RestorableDroppedSqlPools = Azure::Synapse::Mgmt::V2019_06_01_preview::RestorableDroppedSqlPools
    IntegrationRuntimes = Azure::Synapse::Mgmt::V2019_06_01_preview::IntegrationRuntimes
    IntegrationRuntimeNodeIpAddressOperations = Azure::Synapse::Mgmt::V2019_06_01_preview::IntegrationRuntimeNodeIpAddressOperations
    IntegrationRuntimeObjectMetadata = Azure::Synapse::Mgmt::V2019_06_01_preview::IntegrationRuntimeObjectMetadata
    IntegrationRuntimeNodes = Azure::Synapse::Mgmt::V2019_06_01_preview::IntegrationRuntimeNodes
    IntegrationRuntimeCredentials = Azure::Synapse::Mgmt::V2019_06_01_preview::IntegrationRuntimeCredentials
    IntegrationRuntimeConnectionInfos = Azure::Synapse::Mgmt::V2019_06_01_preview::IntegrationRuntimeConnectionInfos
    IntegrationRuntimeAuthKeysOperations = Azure::Synapse::Mgmt::V2019_06_01_preview::IntegrationRuntimeAuthKeysOperations
    IntegrationRuntimeMonitoringDataOperations = Azure::Synapse::Mgmt::V2019_06_01_preview::IntegrationRuntimeMonitoringDataOperations
    IntegrationRuntimeStatusOperations = Azure::Synapse::Mgmt::V2019_06_01_preview::IntegrationRuntimeStatusOperations
    PrivateLinkResources = Azure::Synapse::Mgmt::V2019_06_01_preview::PrivateLinkResources
    PrivateEndpointConnections = Azure::Synapse::Mgmt::V2019_06_01_preview::PrivateEndpointConnections
    PrivateLinkHubs = Azure::Synapse::Mgmt::V2019_06_01_preview::PrivateLinkHubs
    PrivateEndpointConnectionsPrivateLinkHub = Azure::Synapse::Mgmt::V2019_06_01_preview::PrivateEndpointConnectionsPrivateLinkHub
    WorkspaceManagedSqlServerBlobAuditingPolicies = Azure::Synapse::Mgmt::V2019_06_01_preview::WorkspaceManagedSqlServerBlobAuditingPolicies
    WorkspaceManagedSqlServerExtendedBlobAuditingPolicies = Azure::Synapse::Mgmt::V2019_06_01_preview::WorkspaceManagedSqlServerExtendedBlobAuditingPolicies
    WorkspaceManagedSqlServerSecurityAlertPolicy = Azure::Synapse::Mgmt::V2019_06_01_preview::WorkspaceManagedSqlServerSecurityAlertPolicy
    WorkspaceManagedSqlServerVulnerabilityAssessments = Azure::Synapse::Mgmt::V2019_06_01_preview::WorkspaceManagedSqlServerVulnerabilityAssessments
    WorkspaceManagedSqlServerUsages = Azure::Synapse::Mgmt::V2019_06_01_preview::WorkspaceManagedSqlServerUsages
    WorkspaceManagedSqlServerRecoverableSqlpools = Azure::Synapse::Mgmt::V2019_06_01_preview::WorkspaceManagedSqlServerRecoverableSqlpools
    Keys = Azure::Synapse::Mgmt::V2019_06_01_preview::Keys

    module Models
      WorkspaceKeyDetails = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::WorkspaceKeyDetails
      AutoScaleProperties = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::AutoScaleProperties
      CustomerManagedKeyDetails = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::CustomerManagedKeyDetails
      LibraryRequirements = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::LibraryRequirements
      EncryptionDetails = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::EncryptionDetails
      BigDataPoolResourceInfoListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::BigDataPoolResourceInfoListResult
      ManagedVirtualNetworkSettings = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ManagedVirtualNetworkSettings
      SqlPoolVulnerabilityAssessmentListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolVulnerabilityAssessmentListResult
      VulnerabilityAssessmentScanError = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::VulnerabilityAssessmentScanError
      Resource = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::Resource
      UpdateIntegrationRuntimeNodeRequest = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::UpdateIntegrationRuntimeNodeRequest
      ErrorAdditionalInfo = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ErrorAdditionalInfo
      VulnerabilityAssessmentScanRecordListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::VulnerabilityAssessmentScanRecordListResult
      ErrorContract = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ErrorContract
      GetSsisObjectMetadataRequest = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::GetSsisObjectMetadataRequest
      CheckNameAvailabilityResponse = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::CheckNameAvailabilityResponse
      ListSqlPoolSecurityAlertPolicies = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ListSqlPoolSecurityAlertPolicies
      ServerUsageListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ServerUsageListResult
      SqlPoolVulnerabilityAssessmentRuleBaselineItem = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolVulnerabilityAssessmentRuleBaselineItem
      IpFirewallRuleInfoListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IpFirewallRuleInfoListResult
      UpdateIntegrationRuntimeRequest = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::UpdateIntegrationRuntimeRequest
      AvailableRpOperationDisplayInfo = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::AvailableRpOperationDisplayInfo
      SsisVariable = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SsisVariable
      OperationMetaMetricSpecification = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::OperationMetaMetricSpecification
      CreateSqlPoolRestorePointDefinition = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::CreateSqlPoolRestorePointDefinition
      OperationMetaServiceSpecification = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::OperationMetaServiceSpecification
      SsisParameter = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SsisParameter
      ErrorDetail = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ErrorDetail
      WorkloadGroupListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::WorkloadGroupListResult
      Sku = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::Sku
      SsisEnvironmentReference = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SsisEnvironmentReference
      SqlPoolInfoListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolInfoListResult
      WorkloadClassifierListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::WorkloadClassifierListResult
      ServerVulnerabilityAssessmentListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ServerVulnerabilityAssessmentListResult
      SsisObjectMetadataListResponse = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SsisObjectMetadataListResponse
      GeoBackupPolicyListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::GeoBackupPolicyListResult
      SsisObjectMetadata = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SsisObjectMetadata
      QueryInterval = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::QueryInterval
      ExtendedSqlPoolBlobAuditingPolicyListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ExtendedSqlPoolBlobAuditingPolicyListResult
      TopQueries = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::TopQueries
      IntegrationRuntimeNodeIpAddress = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeNodeIpAddress
      ExtendedServerBlobAuditingPolicyListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ExtendedServerBlobAuditingPolicyListResult
      DataMaskingRuleListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::DataMaskingRuleListResult
      RestorePointListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::RestorePointListResult
      SqlPoolBlobAuditingPolicyListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolBlobAuditingPolicyListResult
      ReplicationLinkListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ReplicationLinkListResult
      TransparentDataEncryptionListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::TransparentDataEncryptionListResult
      DataLakeStorageAccountDetails = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::DataLakeStorageAccountDetails
      PrivateEndpointConnectionForPrivateLinkHubBasic = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::PrivateEndpointConnectionForPrivateLinkHubBasic
      VirtualNetworkProfile = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::VirtualNetworkProfile
      SqlPoolUsage = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolUsage
      PrivateEndpoint = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::PrivateEndpoint
      PrivateEndpointConnectionList = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::PrivateEndpointConnectionList
      PrivateLinkServiceConnectionState = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::PrivateLinkServiceConnectionState
      PrivateLinkResourceListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::PrivateLinkResourceListResult
      IntegrationRuntimeMonitoringData = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeMonitoringData
      PrivateLinkResourceProperties = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::PrivateLinkResourceProperties
      AutoPauseProperties = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::AutoPauseProperties
      SsisObjectMetadataStatusResponse = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SsisObjectMetadataStatusResponse
      SqlPoolColumnListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolColumnListResult
      LinkedIntegrationRuntimeType = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::LinkedIntegrationRuntimeType
      VulnerabilityAssessmentRecurringScansProperties = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::VulnerabilityAssessmentRecurringScansProperties
      BigDataPoolPatchInfo = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::BigDataPoolPatchInfo
      KeyInfoListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::KeyInfoListResult
      IntegrationRuntimeNodeMonitoringData = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeNodeMonitoringData
      ErrorResponse = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ErrorResponse
      WorkspaceRepositoryConfiguration = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::WorkspaceRepositoryConfiguration
      IpFirewallRuleProperties = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IpFirewallRuleProperties
      PurviewConfiguration = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::PurviewConfiguration
      ReplaceAllFirewallRulesOperationResponse = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ReplaceAllFirewallRulesOperationResponse
      ManagedIdentity = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ManagedIdentity
      OperationMetaLogSpecification = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::OperationMetaLogSpecification
      IntegrationRuntimeAuthKeys = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeAuthKeys
      OperationResource = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::OperationResource
      WorkspaceInfoListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::WorkspaceInfoListResult
      SqlPoolPatchInfo = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolPatchInfo
      IntegrationRuntimeRegenerateKeyParameters = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeRegenerateKeyParameters
      QueryMetric = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::QueryMetric
      WorkspacePatchInfo = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::WorkspacePatchInfo
      TopQueriesListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::TopQueriesListResult
      ManagedIdentitySqlControlSettingsModelPropertiesGrantSqlControlToManagedIdentity = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ManagedIdentitySqlControlSettingsModelPropertiesGrantSqlControlToManagedIdentity
      PrivateEndpointConnectionForPrivateLinkHubResourceCollectionResponse = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::PrivateEndpointConnectionForPrivateLinkHubResourceCollectionResponse
      IntegrationRuntimeConnectionInfo = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeConnectionInfo
      PrivateLinkHubInfoListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::PrivateLinkHubInfoListResult
      LinkedIntegrationRuntime = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::LinkedIntegrationRuntime
      SqlPoolUsageListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolUsageListResult
      RestorableDroppedSqlPoolListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::RestorableDroppedSqlPoolListResult
      SqlPoolSchemaListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolSchemaListResult
      SelfHostedIntegrationRuntimeNode = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SelfHostedIntegrationRuntimeNode
      IntegrationRuntimeStatusResponse = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeStatusResponse
      IntegrationRuntime = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntime
      RecoverableSqlPoolListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::RecoverableSqlPoolListResult
      IntegrationRuntimeDataFlowProperties = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeDataFlowProperties
      ReplaceAllIpFirewallRulesRequest = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ReplaceAllIpFirewallRulesRequest
      IntegrationRuntimeVNetProperties = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeVNetProperties
      AvailableRpOperation = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::AvailableRpOperation
      IntegrationRuntimeComputeProperties = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeComputeProperties
      ServerSecurityAlertPolicyListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ServerSecurityAlertPolicyListResult
      ManagedIntegrationRuntimeOperationResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ManagedIntegrationRuntimeOperationResult
      ServerBlobAuditingPolicyListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ServerBlobAuditingPolicyListResult
      IntegrationRuntimeSsisCatalogInfo = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeSsisCatalogInfo
      SqlPoolBlobAuditingPolicySqlPoolOperationListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolBlobAuditingPolicySqlPoolOperationListResult
      IntegrationRuntimeCustomSetupScriptProperties = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeCustomSetupScriptProperties
      SqlPoolTableListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolTableListResult
      EntityReference = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::EntityReference
      CheckNameAvailabilityRequest = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::CheckNameAvailabilityRequest
      IntegrationRuntimeDataProxyProperties = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeDataProxyProperties
      ServerUsage = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ServerUsage
      CustomSetupBase = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::CustomSetupBase
      PrivateLinkHubPatchInfo = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::PrivateLinkHubPatchInfo
      IntegrationRuntimeSsisProperties = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeSsisProperties
      IntegrationRuntimeListResponse = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeListResponse
      ManagedIntegrationRuntimeNode = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ManagedIntegrationRuntimeNode
      QueryStatistic = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::QueryStatistic
      SecretBase = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SecretBase
      OperationMetaMetricDimensionSpecification = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::OperationMetaMetricDimensionSpecification
      ManagedIntegrationRuntimeError = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ManagedIntegrationRuntimeError
      SensitivityLabelListResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SensitivityLabelListResult
      IntegrationRuntimeStatus = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeStatus
      BigDataPoolResourceInfo = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::BigDataPoolResourceInfo
      ProxyResource = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ProxyResource
      AzureEntityResource = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::AzureEntityResource
      TrackedResource = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::TrackedResource
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
      WorkloadGroup = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::WorkloadGroup
      WorkloadClassifier = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::WorkloadClassifier
      DataMaskingPolicy = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::DataMaskingPolicy
      ExtendedSqlPoolBlobAuditingPolicy = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ExtendedSqlPoolBlobAuditingPolicy
      DataMaskingRule = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::DataMaskingRule
      PrivateEndpointConnection = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::PrivateEndpointConnection
      Workspace = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::Workspace
      WorkspaceAadAdminInfo = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::WorkspaceAadAdminInfo
      ManagedIdentitySqlControlSettingsModel = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ManagedIdentitySqlControlSettingsModel
      RestorableDroppedSqlPool = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::RestorableDroppedSqlPool
      SubResource = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SubResource
      SecureString = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SecureString
      ManagedIntegrationRuntime = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ManagedIntegrationRuntime
      CmdkeySetup = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::CmdkeySetup
      EnvironmentVariableSetup = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::EnvironmentVariableSetup
      ComponentSetup = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ComponentSetup
      SelfHostedIntegrationRuntime = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SelfHostedIntegrationRuntime
      LinkedIntegrationRuntimeKeyAuthorization = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::LinkedIntegrationRuntimeKeyAuthorization
      LinkedIntegrationRuntimeRbacAuthorization = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::LinkedIntegrationRuntimeRbacAuthorization
      ManagedIntegrationRuntimeStatus = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ManagedIntegrationRuntimeStatus
      SelfHostedIntegrationRuntimeStatus = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SelfHostedIntegrationRuntimeStatus
      SsisFolder = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SsisFolder
      SsisProject = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SsisProject
      SsisPackage = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SsisPackage
      SsisEnvironment = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SsisEnvironment
      IntegrationRuntimeResource = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeResource
      PrivateLinkResource = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::PrivateLinkResource
      PrivateLinkHub = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::PrivateLinkHub
      PrivateEndpointConnectionForPrivateLinkHub = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::PrivateEndpointConnectionForPrivateLinkHub
      ServerBlobAuditingPolicy = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ServerBlobAuditingPolicy
      ExtendedServerBlobAuditingPolicy = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ExtendedServerBlobAuditingPolicy
      ServerSecurityAlertPolicy = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ServerSecurityAlertPolicy
      ServerVulnerabilityAssessment = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ServerVulnerabilityAssessment
      RecoverableSqlPool = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::RecoverableSqlPool
      Key = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::Key
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
      DataMaskingState = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::DataMaskingState
      DataMaskingRuleState = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::DataMaskingRuleState
      DataMaskingFunction = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::DataMaskingFunction
      ResourceIdentityType = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ResourceIdentityType
      IntegrationRuntimeType = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeType
      IntegrationRuntimeState = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeState
      DataFlowComputeType = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::DataFlowComputeType
      IntegrationRuntimeSsisCatalogPricingTier = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeSsisCatalogPricingTier
      IntegrationRuntimeLicenseType = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeLicenseType
      IntegrationRuntimeEntityReferenceType = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeEntityReferenceType
      IntegrationRuntimeEdition = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeEdition
      ManagedIntegrationRuntimeNodeStatus = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ManagedIntegrationRuntimeNodeStatus
      IntegrationRuntimeInternalChannelEncryptionMode = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeInternalChannelEncryptionMode
      SelfHostedIntegrationRuntimeNodeStatus = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SelfHostedIntegrationRuntimeNodeStatus
      IntegrationRuntimeUpdateResult = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeUpdateResult
      IntegrationRuntimeAutoUpdate = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeAutoUpdate
      IntegrationRuntimeAuthKeyName = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeAuthKeyName
      SsisObjectMetadataType = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SsisObjectMetadataType
      SensitivityLabelSource = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SensitivityLabelSource
      VulnerabilityAssessmentPolicyBaselineName = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::VulnerabilityAssessmentPolicyBaselineName
    end

    #
    # SynapseManagementClass
    #
    class SynapseManagementClass
      attr_reader :big_data_pools, :operations, :ip_firewall_rules, :sql_pools, :sql_pool_metadata_sync_configs, :sql_pool_operation_results, :sql_pool_geo_backup_policies, :sql_pool_data_warehouse_user_activities, :sql_pool_restore_points, :sql_pool_replication_links, :sql_pool_transparent_data_encryptions, :sql_pool_blob_auditing_policies, :sql_pool_operations, :sql_pool_usages, :sql_pool_sensitivity_labels, :sql_pool_schemas, :sql_pool_tables, :sql_pool_table_columns, :sql_pool_connection_policies, :sql_pool_vulnerability_assessments, :sql_pool_vulnerability_assessment_scans, :sql_pool_security_alert_policies, :sql_pool_vulnerability_assessment_rule_baselines, :extended_sql_pool_blob_auditing_policies, :data_masking_policies, :data_masking_rules, :sql_pool_columns, :sql_pool_workload_group, :sql_pool_workload_classifier, :workspaces, :workspace_aad_admins, :workspace_sql_aad_admins, :workspace_managed_identity_sql_control_settings, :restorable_dropped_sql_pools, :integration_runtimes, :integration_runtime_node_ip_address_operations, :integration_runtime_object_metadata, :integration_runtime_nodes, :integration_runtime_credentials, :integration_runtime_connection_infos, :integration_runtime_auth_keys_operations, :integration_runtime_monitoring_data_operations, :integration_runtime_status_operations, :private_link_resources, :private_endpoint_connections, :private_link_hubs, :private_endpoint_connections_private_link_hub, :workspace_managed_sql_server_blob_auditing_policies, :workspace_managed_sql_server_extended_blob_auditing_policies, :workspace_managed_sql_server_security_alert_policy, :workspace_managed_sql_server_vulnerability_assessments, :workspace_managed_sql_server_usages, :workspace_managed_sql_server_recoverable_sqlpools, :keys, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_default_options
        else
          @options = options
        end

        reset!(options)

        @configurable = self
        @base_url = options[:base_url].nil? ? nil:options[:base_url]
        @options = options[:options].nil? ? nil:options[:options]

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
        @extended_sql_pool_blob_auditing_policies = @client_0.extended_sql_pool_blob_auditing_policies
        @data_masking_policies = @client_0.data_masking_policies
        @data_masking_rules = @client_0.data_masking_rules
        @sql_pool_columns = @client_0.sql_pool_columns
        @sql_pool_workload_group = @client_0.sql_pool_workload_group
        @sql_pool_workload_classifier = @client_0.sql_pool_workload_classifier
        @workspaces = @client_0.workspaces
        @workspace_aad_admins = @client_0.workspace_aad_admins
        @workspace_sql_aad_admins = @client_0.workspace_sql_aad_admins
        @workspace_managed_identity_sql_control_settings = @client_0.workspace_managed_identity_sql_control_settings
        @restorable_dropped_sql_pools = @client_0.restorable_dropped_sql_pools
        @integration_runtimes = @client_0.integration_runtimes
        @integration_runtime_node_ip_address_operations = @client_0.integration_runtime_node_ip_address_operations
        @integration_runtime_object_metadata = @client_0.integration_runtime_object_metadata
        @integration_runtime_nodes = @client_0.integration_runtime_nodes
        @integration_runtime_credentials = @client_0.integration_runtime_credentials
        @integration_runtime_connection_infos = @client_0.integration_runtime_connection_infos
        @integration_runtime_auth_keys_operations = @client_0.integration_runtime_auth_keys_operations
        @integration_runtime_monitoring_data_operations = @client_0.integration_runtime_monitoring_data_operations
        @integration_runtime_status_operations = @client_0.integration_runtime_status_operations
        @private_link_resources = @client_0.private_link_resources
        @private_endpoint_connections = @client_0.private_endpoint_connections
        @private_link_hubs = @client_0.private_link_hubs
        @private_endpoint_connections_private_link_hub = @client_0.private_endpoint_connections_private_link_hub
        @workspace_managed_sql_server_blob_auditing_policies = @client_0.workspace_managed_sql_server_blob_auditing_policies
        @workspace_managed_sql_server_extended_blob_auditing_policies = @client_0.workspace_managed_sql_server_extended_blob_auditing_policies
        @workspace_managed_sql_server_security_alert_policy = @client_0.workspace_managed_sql_server_security_alert_policy
        @workspace_managed_sql_server_vulnerability_assessments = @client_0.workspace_managed_sql_server_vulnerability_assessments
        @workspace_managed_sql_server_usages = @client_0.workspace_managed_sql_server_usages
        @workspace_managed_sql_server_recoverable_sqlpools = @client_0.workspace_managed_sql_server_recoverable_sqlpools
        @keys = @client_0.keys

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Synapse/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
      end

    end

    class ModelClasses
      def workspace_key_details
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::WorkspaceKeyDetails
      end
      def auto_scale_properties
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::AutoScaleProperties
      end
      def customer_managed_key_details
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::CustomerManagedKeyDetails
      end
      def library_requirements
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::LibraryRequirements
      end
      def encryption_details
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::EncryptionDetails
      end
      def big_data_pool_resource_info_list_result
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::BigDataPoolResourceInfoListResult
      end
      def managed_virtual_network_settings
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ManagedVirtualNetworkSettings
      end
      def sql_pool_vulnerability_assessment_list_result
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolVulnerabilityAssessmentListResult
      end
      def vulnerability_assessment_scan_error
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::VulnerabilityAssessmentScanError
      end
      def resource
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::Resource
      end
      def update_integration_runtime_node_request
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::UpdateIntegrationRuntimeNodeRequest
      end
      def error_additional_info
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ErrorAdditionalInfo
      end
      def vulnerability_assessment_scan_record_list_result
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::VulnerabilityAssessmentScanRecordListResult
      end
      def error_contract
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ErrorContract
      end
      def get_ssis_object_metadata_request
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::GetSsisObjectMetadataRequest
      end
      def check_name_availability_response
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::CheckNameAvailabilityResponse
      end
      def list_sql_pool_security_alert_policies
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ListSqlPoolSecurityAlertPolicies
      end
      def server_usage_list_result
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ServerUsageListResult
      end
      def sql_pool_vulnerability_assessment_rule_baseline_item
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolVulnerabilityAssessmentRuleBaselineItem
      end
      def ip_firewall_rule_info_list_result
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IpFirewallRuleInfoListResult
      end
      def update_integration_runtime_request
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::UpdateIntegrationRuntimeRequest
      end
      def available_rp_operation_display_info
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::AvailableRpOperationDisplayInfo
      end
      def ssis_variable
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SsisVariable
      end
      def operation_meta_metric_specification
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::OperationMetaMetricSpecification
      end
      def create_sql_pool_restore_point_definition
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::CreateSqlPoolRestorePointDefinition
      end
      def operation_meta_service_specification
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::OperationMetaServiceSpecification
      end
      def ssis_parameter
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SsisParameter
      end
      def error_detail
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ErrorDetail
      end
      def workload_group_list_result
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::WorkloadGroupListResult
      end
      def sku
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::Sku
      end
      def ssis_environment_reference
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SsisEnvironmentReference
      end
      def sql_pool_info_list_result
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolInfoListResult
      end
      def workload_classifier_list_result
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::WorkloadClassifierListResult
      end
      def server_vulnerability_assessment_list_result
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ServerVulnerabilityAssessmentListResult
      end
      def ssis_object_metadata_list_response
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SsisObjectMetadataListResponse
      end
      def geo_backup_policy_list_result
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::GeoBackupPolicyListResult
      end
      def ssis_object_metadata
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SsisObjectMetadata
      end
      def query_interval
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::QueryInterval
      end
      def extended_sql_pool_blob_auditing_policy_list_result
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ExtendedSqlPoolBlobAuditingPolicyListResult
      end
      def top_queries
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::TopQueries
      end
      def integration_runtime_node_ip_address
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeNodeIpAddress
      end
      def extended_server_blob_auditing_policy_list_result
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ExtendedServerBlobAuditingPolicyListResult
      end
      def data_masking_rule_list_result
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::DataMaskingRuleListResult
      end
      def restore_point_list_result
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::RestorePointListResult
      end
      def sql_pool_blob_auditing_policy_list_result
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolBlobAuditingPolicyListResult
      end
      def replication_link_list_result
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ReplicationLinkListResult
      end
      def transparent_data_encryption_list_result
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::TransparentDataEncryptionListResult
      end
      def data_lake_storage_account_details
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::DataLakeStorageAccountDetails
      end
      def private_endpoint_connection_for_private_link_hub_basic
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::PrivateEndpointConnectionForPrivateLinkHubBasic
      end
      def virtual_network_profile
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::VirtualNetworkProfile
      end
      def sql_pool_usage
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolUsage
      end
      def private_endpoint
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::PrivateEndpoint
      end
      def private_endpoint_connection_list
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::PrivateEndpointConnectionList
      end
      def private_link_service_connection_state
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::PrivateLinkServiceConnectionState
      end
      def private_link_resource_list_result
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::PrivateLinkResourceListResult
      end
      def integration_runtime_monitoring_data
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeMonitoringData
      end
      def private_link_resource_properties
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::PrivateLinkResourceProperties
      end
      def auto_pause_properties
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::AutoPauseProperties
      end
      def ssis_object_metadata_status_response
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SsisObjectMetadataStatusResponse
      end
      def sql_pool_column_list_result
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolColumnListResult
      end
      def linked_integration_runtime_type
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::LinkedIntegrationRuntimeType
      end
      def vulnerability_assessment_recurring_scans_properties
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::VulnerabilityAssessmentRecurringScansProperties
      end
      def big_data_pool_patch_info
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::BigDataPoolPatchInfo
      end
      def key_info_list_result
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::KeyInfoListResult
      end
      def integration_runtime_node_monitoring_data
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeNodeMonitoringData
      end
      def error_response
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ErrorResponse
      end
      def workspace_repository_configuration
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::WorkspaceRepositoryConfiguration
      end
      def ip_firewall_rule_properties
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IpFirewallRuleProperties
      end
      def purview_configuration
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::PurviewConfiguration
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
      def integration_runtime_auth_keys
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeAuthKeys
      end
      def operation_resource
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::OperationResource
      end
      def workspace_info_list_result
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::WorkspaceInfoListResult
      end
      def sql_pool_patch_info
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolPatchInfo
      end
      def integration_runtime_regenerate_key_parameters
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeRegenerateKeyParameters
      end
      def query_metric
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::QueryMetric
      end
      def workspace_patch_info
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::WorkspacePatchInfo
      end
      def top_queries_list_result
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::TopQueriesListResult
      end
      def managed_identity_sql_control_settings_model_properties_grant_sql_control_to_managed_identity
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ManagedIdentitySqlControlSettingsModelPropertiesGrantSqlControlToManagedIdentity
      end
      def private_endpoint_connection_for_private_link_hub_resource_collection_response
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::PrivateEndpointConnectionForPrivateLinkHubResourceCollectionResponse
      end
      def integration_runtime_connection_info
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeConnectionInfo
      end
      def private_link_hub_info_list_result
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::PrivateLinkHubInfoListResult
      end
      def linked_integration_runtime
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::LinkedIntegrationRuntime
      end
      def sql_pool_usage_list_result
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolUsageListResult
      end
      def restorable_dropped_sql_pool_list_result
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::RestorableDroppedSqlPoolListResult
      end
      def sql_pool_schema_list_result
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolSchemaListResult
      end
      def self_hosted_integration_runtime_node
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SelfHostedIntegrationRuntimeNode
      end
      def integration_runtime_status_response
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeStatusResponse
      end
      def integration_runtime
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntime
      end
      def recoverable_sql_pool_list_result
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::RecoverableSqlPoolListResult
      end
      def integration_runtime_data_flow_properties
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeDataFlowProperties
      end
      def replace_all_ip_firewall_rules_request
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ReplaceAllIpFirewallRulesRequest
      end
      def integration_runtime_vnet_properties
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeVNetProperties
      end
      def available_rp_operation
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::AvailableRpOperation
      end
      def integration_runtime_compute_properties
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeComputeProperties
      end
      def server_security_alert_policy_list_result
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ServerSecurityAlertPolicyListResult
      end
      def managed_integration_runtime_operation_result
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ManagedIntegrationRuntimeOperationResult
      end
      def server_blob_auditing_policy_list_result
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ServerBlobAuditingPolicyListResult
      end
      def integration_runtime_ssis_catalog_info
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeSsisCatalogInfo
      end
      def sql_pool_blob_auditing_policy_sql_pool_operation_list_result
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolBlobAuditingPolicySqlPoolOperationListResult
      end
      def integration_runtime_custom_setup_script_properties
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeCustomSetupScriptProperties
      end
      def sql_pool_table_list_result
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolTableListResult
      end
      def entity_reference
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::EntityReference
      end
      def check_name_availability_request
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::CheckNameAvailabilityRequest
      end
      def integration_runtime_data_proxy_properties
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeDataProxyProperties
      end
      def server_usage
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ServerUsage
      end
      def custom_setup_base
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::CustomSetupBase
      end
      def private_link_hub_patch_info
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::PrivateLinkHubPatchInfo
      end
      def integration_runtime_ssis_properties
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeSsisProperties
      end
      def integration_runtime_list_response
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeListResponse
      end
      def managed_integration_runtime_node
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ManagedIntegrationRuntimeNode
      end
      def query_statistic
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::QueryStatistic
      end
      def secret_base
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SecretBase
      end
      def operation_meta_metric_dimension_specification
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::OperationMetaMetricDimensionSpecification
      end
      def managed_integration_runtime_error
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ManagedIntegrationRuntimeError
      end
      def sensitivity_label_list_result
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SensitivityLabelListResult
      end
      def integration_runtime_status
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeStatus
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
      def tracked_resource
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::TrackedResource
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
      def workload_group
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::WorkloadGroup
      end
      def workload_classifier
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::WorkloadClassifier
      end
      def data_masking_policy
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::DataMaskingPolicy
      end
      def extended_sql_pool_blob_auditing_policy
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ExtendedSqlPoolBlobAuditingPolicy
      end
      def data_masking_rule
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::DataMaskingRule
      end
      def private_endpoint_connection
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::PrivateEndpointConnection
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
      def restorable_dropped_sql_pool
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::RestorableDroppedSqlPool
      end
      def sub_resource
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SubResource
      end
      def secure_string
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SecureString
      end
      def managed_integration_runtime
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ManagedIntegrationRuntime
      end
      def cmdkey_setup
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::CmdkeySetup
      end
      def environment_variable_setup
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::EnvironmentVariableSetup
      end
      def component_setup
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ComponentSetup
      end
      def self_hosted_integration_runtime
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SelfHostedIntegrationRuntime
      end
      def linked_integration_runtime_key_authorization
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::LinkedIntegrationRuntimeKeyAuthorization
      end
      def linked_integration_runtime_rbac_authorization
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::LinkedIntegrationRuntimeRbacAuthorization
      end
      def managed_integration_runtime_status
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ManagedIntegrationRuntimeStatus
      end
      def self_hosted_integration_runtime_status
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SelfHostedIntegrationRuntimeStatus
      end
      def ssis_folder
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SsisFolder
      end
      def ssis_project
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SsisProject
      end
      def ssis_package
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SsisPackage
      end
      def ssis_environment
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SsisEnvironment
      end
      def integration_runtime_resource
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeResource
      end
      def private_link_resource
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::PrivateLinkResource
      end
      def private_link_hub
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::PrivateLinkHub
      end
      def private_endpoint_connection_for_private_link_hub
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::PrivateEndpointConnectionForPrivateLinkHub
      end
      def server_blob_auditing_policy
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ServerBlobAuditingPolicy
      end
      def extended_server_blob_auditing_policy
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ExtendedServerBlobAuditingPolicy
      end
      def server_security_alert_policy
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ServerSecurityAlertPolicy
      end
      def server_vulnerability_assessment
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ServerVulnerabilityAssessment
      end
      def recoverable_sql_pool
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::RecoverableSqlPool
      end
      def key
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::Key
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
      def data_masking_state
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::DataMaskingState
      end
      def data_masking_rule_state
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::DataMaskingRuleState
      end
      def data_masking_function
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::DataMaskingFunction
      end
      def resource_identity_type
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ResourceIdentityType
      end
      def integration_runtime_type
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeType
      end
      def integration_runtime_state
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeState
      end
      def data_flow_compute_type
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::DataFlowComputeType
      end
      def integration_runtime_ssis_catalog_pricing_tier
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeSsisCatalogPricingTier
      end
      def integration_runtime_license_type
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeLicenseType
      end
      def integration_runtime_entity_reference_type
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeEntityReferenceType
      end
      def integration_runtime_edition
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeEdition
      end
      def managed_integration_runtime_node_status
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::ManagedIntegrationRuntimeNodeStatus
      end
      def integration_runtime_internal_channel_encryption_mode
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeInternalChannelEncryptionMode
      end
      def self_hosted_integration_runtime_node_status
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SelfHostedIntegrationRuntimeNodeStatus
      end
      def integration_runtime_update_result
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeUpdateResult
      end
      def integration_runtime_auto_update
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeAutoUpdate
      end
      def integration_runtime_auth_key_name
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::IntegrationRuntimeAuthKeyName
      end
      def ssis_object_metadata_type
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SsisObjectMetadataType
      end
      def sensitivity_label_source
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SensitivityLabelSource
      end
      def vulnerability_assessment_policy_baseline_name
        Azure::Synapse::Mgmt::V2019_06_01_preview::Models::VulnerabilityAssessmentPolicyBaselineName
      end
    end
  end
end
