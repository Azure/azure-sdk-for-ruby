# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_data_factory'

module Azure::Profiles::Latest
  module DataFactory
    module Mgmt
      Operations = Azure::DataFactory::Mgmt::V2018_06_01::Operations
      Factories = Azure::DataFactory::Mgmt::V2018_06_01::Factories
      ExposureControl = Azure::DataFactory::Mgmt::V2018_06_01::ExposureControl
      IntegrationRuntimes = Azure::DataFactory::Mgmt::V2018_06_01::IntegrationRuntimes
      IntegrationRuntimeObjectMetadata = Azure::DataFactory::Mgmt::V2018_06_01::IntegrationRuntimeObjectMetadata
      IntegrationRuntimeNodes = Azure::DataFactory::Mgmt::V2018_06_01::IntegrationRuntimeNodes
      LinkedServices = Azure::DataFactory::Mgmt::V2018_06_01::LinkedServices
      Datasets = Azure::DataFactory::Mgmt::V2018_06_01::Datasets
      Pipelines = Azure::DataFactory::Mgmt::V2018_06_01::Pipelines
      PipelineRuns = Azure::DataFactory::Mgmt::V2018_06_01::PipelineRuns
      ActivityRuns = Azure::DataFactory::Mgmt::V2018_06_01::ActivityRuns
      Triggers = Azure::DataFactory::Mgmt::V2018_06_01::Triggers
      TriggerRuns = Azure::DataFactory::Mgmt::V2018_06_01::TriggerRuns
      DataFlows = Azure::DataFactory::Mgmt::V2018_06_01::DataFlows
      DataFlowDebugSession = Azure::DataFactory::Mgmt::V2018_06_01::DataFlowDebugSession
      ManagedVirtualNetworks = Azure::DataFactory::Mgmt::V2018_06_01::ManagedVirtualNetworks
      ManagedPrivateEndpoints = Azure::DataFactory::Mgmt::V2018_06_01::ManagedPrivateEndpoints

      module Models
        DataFlowReference = Azure::DataFactory::Mgmt::V2018_06_01::Models::DataFlowReference
        ConnectionStateProperties = Azure::DataFactory::Mgmt::V2018_06_01::Models::ConnectionStateProperties
        SubResource = Azure::DataFactory::Mgmt::V2018_06_01::Models::SubResource
        ManagedPrivateEndpoint = Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedPrivateEndpoint
        Expression = Azure::DataFactory::Mgmt::V2018_06_01::Models::Expression
        AddDataFlowToDebugSessionResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::AddDataFlowToDebugSessionResponse
        DeleteDataFlowDebugSessionRequest = Azure::DataFactory::Mgmt::V2018_06_01::Models::DeleteDataFlowDebugSessionRequest
        CreateDataFlowDebugSessionResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::CreateDataFlowDebugSessionResponse
        DataFlowSourceSetting = Azure::DataFactory::Mgmt::V2018_06_01::Models::DataFlowSourceSetting
        FactoryIdentity = Azure::DataFactory::Mgmt::V2018_06_01::Models::FactoryIdentity
        DataFlowStagingInfo = Azure::DataFactory::Mgmt::V2018_06_01::Models::DataFlowStagingInfo
        GlobalParameterSpecification = Azure::DataFactory::Mgmt::V2018_06_01::Models::GlobalParameterSpecification
        DWCopyCommandSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::DWCopyCommandSettings
        FactoryListResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::FactoryListResponse
        DataFlowDebugPackageDebugSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::DataFlowDebugPackageDebugSettings
        SSISExecutionParameter = Azure::DataFactory::Mgmt::V2018_06_01::Models::SSISExecutionParameter
        DataFlowDebugPackage = Azure::DataFactory::Mgmt::V2018_06_01::Models::DataFlowDebugPackage
        IntegrationRuntimeReference = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeReference
        LinkedServiceReference = Azure::DataFactory::Mgmt::V2018_06_01::Models::LinkedServiceReference
        IntegrationRuntimeStatus = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeStatus
        ExecuteDataFlowActivityTypePropertiesCompute = Azure::DataFactory::Mgmt::V2018_06_01::Models::ExecuteDataFlowActivityTypePropertiesCompute
        IntegrationRuntimeStatusListResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeStatusListResponse
        DataFlowDebugCommandPayload = Azure::DataFactory::Mgmt::V2018_06_01::Models::DataFlowDebugCommandPayload
        UpdateIntegrationRuntimeNodeRequest = Azure::DataFactory::Mgmt::V2018_06_01::Models::UpdateIntegrationRuntimeNodeRequest
        DataFlowDebugCommandRequest = Azure::DataFactory::Mgmt::V2018_06_01::Models::DataFlowDebugCommandRequest
        CreateLinkedIntegrationRuntimeRequest = Azure::DataFactory::Mgmt::V2018_06_01::Models::CreateLinkedIntegrationRuntimeRequest
        DataFlowDebugCommandResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::DataFlowDebugCommandResponse
        LinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::LinkedService
        DataFlowDebugSessionInfo = Azure::DataFactory::Mgmt::V2018_06_01::Models::DataFlowDebugSessionInfo
        LinkedServiceListResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::LinkedServiceListResponse
        QueryDataFlowDebugSessionsResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::QueryDataFlowDebugSessionsResponse
        Dataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::Dataset
        GetDataFactoryOperationStatusResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::GetDataFactoryOperationStatusResponse
        DatasetListResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetListResponse
        Resource = Azure::DataFactory::Mgmt::V2018_06_01::Models::Resource
        UserProperty = Azure::DataFactory::Mgmt::V2018_06_01::Models::UserProperty
        SubResourceDebugResource = Azure::DataFactory::Mgmt::V2018_06_01::Models::SubResourceDebugResource
        VariableSpecification = Azure::DataFactory::Mgmt::V2018_06_01::Models::VariableSpecification
        PipelineFolder = Azure::DataFactory::Mgmt::V2018_06_01::Models::PipelineFolder
        ActivityPolicy = Azure::DataFactory::Mgmt::V2018_06_01::Models::ActivityPolicy
        PipelineListResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::PipelineListResponse
        SSISAccessCredential = Azure::DataFactory::Mgmt::V2018_06_01::Models::SSISAccessCredential
        SSISPackageLocation = Azure::DataFactory::Mgmt::V2018_06_01::Models::SSISPackageLocation
        ManagedPrivateEndpointListResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedPrivateEndpointListResponse
        TriggerListResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerListResponse
        ManagedVirtualNetwork = Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedVirtualNetwork
        CustomActivityReferenceObject = Azure::DataFactory::Mgmt::V2018_06_01::Models::CustomActivityReferenceObject
        SkipErrorFile = Azure::DataFactory::Mgmt::V2018_06_01::Models::SkipErrorFile
        ManagedVirtualNetworkListResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedVirtualNetworkListResponse
        FactoryRepoUpdate = Azure::DataFactory::Mgmt::V2018_06_01::Models::FactoryRepoUpdate
        LogStorageSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::LogStorageSettings
        GitHubAccessTokenResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::GitHubAccessTokenResponse
        CopySource = Azure::DataFactory::Mgmt::V2018_06_01::Models::CopySource
        AccessPolicyResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::AccessPolicyResponse
        Transformation = Azure::DataFactory::Mgmt::V2018_06_01::Models::Transformation
        TriggerPipelineReference = Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerPipelineReference
        FormatReadSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::FormatReadSettings
        DatasetReference = Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetReference
        DistcpSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::DistcpSettings
        ImportSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::ImportSettings
        SapHanaPartitionSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::SapHanaPartitionSettings
        RunQueryFilter = Azure::DataFactory::Mgmt::V2018_06_01::Models::RunQueryFilter
        SapTablePartitionSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::SapTablePartitionSettings
        RunFilterParameters = Azure::DataFactory::Mgmt::V2018_06_01::Models::RunFilterParameters
        StoredProcedureParameter = Azure::DataFactory::Mgmt::V2018_06_01::Models::StoredProcedureParameter
        PipelineRun = Azure::DataFactory::Mgmt::V2018_06_01::Models::PipelineRun
        SqlPartitionSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::SqlPartitionSettings
        ActivityRun = Azure::DataFactory::Mgmt::V2018_06_01::Models::ActivityRun
        TeradataPartitionSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::TeradataPartitionSettings
        TriggerRun = Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerRun
        NetezzaPartitionSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::NetezzaPartitionSettings
        OperationDisplay = Azure::DataFactory::Mgmt::V2018_06_01::Models::OperationDisplay
        RedshiftUnloadSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::RedshiftUnloadSettings
        OperationMetricAvailability = Azure::DataFactory::Mgmt::V2018_06_01::Models::OperationMetricAvailability
        OraclePartitionSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::OraclePartitionSettings
        OperationMetricSpecification = Azure::DataFactory::Mgmt::V2018_06_01::Models::OperationMetricSpecification
        MongoDbCursorMethodsProperties = Azure::DataFactory::Mgmt::V2018_06_01::Models::MongoDbCursorMethodsProperties
        Operation = Azure::DataFactory::Mgmt::V2018_06_01::Models::Operation
        AdditionalColumns = Azure::DataFactory::Mgmt::V2018_06_01::Models::AdditionalColumns
        GetSsisObjectMetadataRequest = Azure::DataFactory::Mgmt::V2018_06_01::Models::GetSsisObjectMetadataRequest
        ScriptAction = Azure::DataFactory::Mgmt::V2018_06_01::Models::ScriptAction
        ExposureControlRequest = Azure::DataFactory::Mgmt::V2018_06_01::Models::ExposureControlRequest
        ExportSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::ExportSettings
        ExposureControlResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::ExposureControlResponse
        StoreReadSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::StoreReadSettings
        DataFlowFolder = Azure::DataFactory::Mgmt::V2018_06_01::Models::DataFlowFolder
        WebActivityAuthentication = Azure::DataFactory::Mgmt::V2018_06_01::Models::WebActivityAuthentication
        DWCopyCommandDefaultValue = Azure::DataFactory::Mgmt::V2018_06_01::Models::DWCopyCommandDefaultValue
        CompressionReadSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::CompressionReadSettings
        CreateDataFlowDebugSessionRequest = Azure::DataFactory::Mgmt::V2018_06_01::Models::CreateDataFlowDebugSessionRequest
        SSISLogLocation = Azure::DataFactory::Mgmt::V2018_06_01::Models::SSISLogLocation
        FactoryRepoConfiguration = Azure::DataFactory::Mgmt::V2018_06_01::Models::FactoryRepoConfiguration
        DatasetStorageFormat = Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetStorageFormat
        IntegrationRuntime = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntime
        IntegrationRuntimeConnectionInfo = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeConnectionInfo
        SSISExecutionCredential = Azure::DataFactory::Mgmt::V2018_06_01::Models::SSISExecutionCredential
        IntegrationRuntimeRegenerateKeyParameters = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeRegenerateKeyParameters
        UpdateIntegrationRuntimeRequest = Azure::DataFactory::Mgmt::V2018_06_01::Models::UpdateIntegrationRuntimeRequest
        IntegrationRuntimeAuthKeys = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeAuthKeys
        ParameterSpecification = Azure::DataFactory::Mgmt::V2018_06_01::Models::ParameterSpecification
        IntegrationRuntimeMonitoringData = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeMonitoringData
        DatasetFolder = Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetFolder
        IntegrationRuntimeNodeMonitoringData = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeNodeMonitoringData
        ActivityDependency = Azure::DataFactory::Mgmt::V2018_06_01::Models::ActivityDependency
        DatasetCompression = Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetCompression
        SSISChildPackage = Azure::DataFactory::Mgmt::V2018_06_01::Models::SSISChildPackage
        SsisObjectMetadataListResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisObjectMetadataListResponse
        TriggerQueryResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerQueryResponse
        SsisObjectMetadata = Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisObjectMetadata
        TriggerSubscriptionOperationStatus = Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerSubscriptionOperationStatus
        SsisEnvironmentReference = Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisEnvironmentReference
        GitHubAccessTokenRequest = Azure::DataFactory::Mgmt::V2018_06_01::Models::GitHubAccessTokenRequest
        SsisParameter = Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisParameter
        PipelineReference = Azure::DataFactory::Mgmt::V2018_06_01::Models::PipelineReference
        SsisVariable = Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisVariable
        StagingSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::StagingSettings
        IntegrationRuntimeNodeIpAddress = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeNodeIpAddress
        RunQueryOrderBy = Azure::DataFactory::Mgmt::V2018_06_01::Models::RunQueryOrderBy
        IntegrationRuntimeComputeProperties = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeComputeProperties
        PipelineRunsQueryResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::PipelineRunsQueryResponse
        IntegrationRuntimeDataFlowProperties = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeDataFlowProperties
        TriggerRunsQueryResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerRunsQueryResponse
        DatasetLocation = Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetLocation
        OperationMetricDimension = Azure::DataFactory::Mgmt::V2018_06_01::Models::OperationMetricDimension
        IntegrationRuntimeVNetProperties = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeVNetProperties
        OperationListResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::OperationListResponse
        IntegrationRuntimeSsisProperties = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeSsisProperties
        ExposureControlBatchRequest = Azure::DataFactory::Mgmt::V2018_06_01::Models::ExposureControlBatchRequest
        IntegrationRuntimeSsisCatalogInfo = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeSsisCatalogInfo
        DataFlow = Azure::DataFactory::Mgmt::V2018_06_01::Models::DataFlow
        IntegrationRuntimeCustomSetupScriptProperties = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeCustomSetupScriptProperties
        SecretBase = Azure::DataFactory::Mgmt::V2018_06_01::Models::SecretBase
        IntegrationRuntimeDataProxyProperties = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeDataProxyProperties
        IntegrationRuntimeListResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeListResponse
        CustomSetupBase = Azure::DataFactory::Mgmt::V2018_06_01::Models::CustomSetupBase
        LinkedIntegrationRuntimeRequest = Azure::DataFactory::Mgmt::V2018_06_01::Models::LinkedIntegrationRuntimeRequest
        PackageStore = Azure::DataFactory::Mgmt::V2018_06_01::Models::PackageStore
        WebLinkedServiceTypeProperties = Azure::DataFactory::Mgmt::V2018_06_01::Models::WebLinkedServiceTypeProperties
        EntityReference = Azure::DataFactory::Mgmt::V2018_06_01::Models::EntityReference
        Trigger = Azure::DataFactory::Mgmt::V2018_06_01::Models::Trigger
        LinkedIntegrationRuntimeType = Azure::DataFactory::Mgmt::V2018_06_01::Models::LinkedIntegrationRuntimeType
        RedirectIncompatibleRowSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::RedirectIncompatibleRowSettings
        ManagedIntegrationRuntimeNode = Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedIntegrationRuntimeNode
        FactoryUpdateParameters = Azure::DataFactory::Mgmt::V2018_06_01::Models::FactoryUpdateParameters
        ManagedIntegrationRuntimeError = Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedIntegrationRuntimeError
        PipelineRunInvokedBy = Azure::DataFactory::Mgmt::V2018_06_01::Models::PipelineRunInvokedBy
        ManagedIntegrationRuntimeOperationResult = Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedIntegrationRuntimeOperationResult
        OperationLogSpecification = Azure::DataFactory::Mgmt::V2018_06_01::Models::OperationLogSpecification
        TriggerReference = Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerReference
        SsisObjectMetadataStatusResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisObjectMetadataStatusResponse
        SelfHostedIntegrationRuntimeNode = Azure::DataFactory::Mgmt::V2018_06_01::Models::SelfHostedIntegrationRuntimeNode
        DataFlowListResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::DataFlowListResponse
        LinkedIntegrationRuntime = Azure::DataFactory::Mgmt::V2018_06_01::Models::LinkedIntegrationRuntime
        IntegrationRuntimeStatusResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeStatusResponse
        DependencyReference = Azure::DataFactory::Mgmt::V2018_06_01::Models::DependencyReference
        Activity = Azure::DataFactory::Mgmt::V2018_06_01::Models::Activity
        RetryPolicy = Azure::DataFactory::Mgmt::V2018_06_01::Models::RetryPolicy
        UserAccessPolicy = Azure::DataFactory::Mgmt::V2018_06_01::Models::UserAccessPolicy
        SwitchCase = Azure::DataFactory::Mgmt::V2018_06_01::Models::SwitchCase
        ActivityRunsQueryResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::ActivityRunsQueryResponse
        CopySink = Azure::DataFactory::Mgmt::V2018_06_01::Models::CopySink
        ExposureControlBatchResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::ExposureControlBatchResponse
        FormatWriteSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::FormatWriteSettings
        AzureMLWebServiceFile = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMLWebServiceFile
        RecurrenceScheduleOccurrence = Azure::DataFactory::Mgmt::V2018_06_01::Models::RecurrenceScheduleOccurrence
        TriggerFilterParameters = Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerFilterParameters
        RecurrenceSchedule = Azure::DataFactory::Mgmt::V2018_06_01::Models::RecurrenceSchedule
        SSISPropertyOverride = Azure::DataFactory::Mgmt::V2018_06_01::Models::SSISPropertyOverride
        ScheduleTriggerRecurrence = Azure::DataFactory::Mgmt::V2018_06_01::Models::ScheduleTriggerRecurrence
        OperationServiceSpecification = Azure::DataFactory::Mgmt::V2018_06_01::Models::OperationServiceSpecification
        StoreWriteSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::StoreWriteSettings
        CreateRunResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::CreateRunResponse
        PolybaseSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::PolybaseSettings
        SecureString = Azure::DataFactory::Mgmt::V2018_06_01::Models::SecureString
        AzureKeyVaultSecretReference = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureKeyVaultSecretReference
        Factory = Azure::DataFactory::Mgmt::V2018_06_01::Models::Factory
        IntegrationRuntimeResource = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeResource
        IntegrationRuntimeDebugResource = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeDebugResource
        LinkedServiceResource = Azure::DataFactory::Mgmt::V2018_06_01::Models::LinkedServiceResource
        DatasetResource = Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetResource
        PipelineResource = Azure::DataFactory::Mgmt::V2018_06_01::Models::PipelineResource
        TriggerResource = Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerResource
        FactoryVSTSConfiguration = Azure::DataFactory::Mgmt::V2018_06_01::Models::FactoryVSTSConfiguration
        FactoryGitHubConfiguration = Azure::DataFactory::Mgmt::V2018_06_01::Models::FactoryGitHubConfiguration
        DatasetDebugResource = Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetDebugResource
        LinkedServiceDebugResource = Azure::DataFactory::Mgmt::V2018_06_01::Models::LinkedServiceDebugResource
        DataFlowResource = Azure::DataFactory::Mgmt::V2018_06_01::Models::DataFlowResource
        DataFlowDebugResource = Azure::DataFactory::Mgmt::V2018_06_01::Models::DataFlowDebugResource
        ManagedPrivateEndpointResource = Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedPrivateEndpointResource
        ManagedVirtualNetworkResource = Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedVirtualNetworkResource
        DataFlowSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::DataFlowSink
        DataFlowSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::DataFlowSource
        MappingDataFlow = Azure::DataFactory::Mgmt::V2018_06_01::Models::MappingDataFlow
        SharePointOnlineListLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::SharePointOnlineListLinkedService
        SnowflakeLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::SnowflakeLinkedService
        AzureFunctionLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureFunctionLinkedService
        AzureDataExplorerLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDataExplorerLinkedService
        SapTableLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::SapTableLinkedService
        GoogleAdWordsLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::GoogleAdWordsLinkedService
        OracleServiceCloudLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::OracleServiceCloudLinkedService
        DynamicsAXLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::DynamicsAXLinkedService
        ResponsysLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::ResponsysLinkedService
        AzureDatabricksLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDatabricksLinkedService
        AzureDataLakeAnalyticsLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDataLakeAnalyticsLinkedService
        HDInsightOnDemandLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::HDInsightOnDemandLinkedService
        SalesforceMarketingCloudLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::SalesforceMarketingCloudLinkedService
        NetezzaLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::NetezzaLinkedService
        VerticaLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::VerticaLinkedService
        ZohoLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::ZohoLinkedService
        XeroLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::XeroLinkedService
        SquareLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::SquareLinkedService
        SparkLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::SparkLinkedService
        ShopifyLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::ShopifyLinkedService
        ServiceNowLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::ServiceNowLinkedService
        QuickBooksLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::QuickBooksLinkedService
        PrestoLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::PrestoLinkedService
        PhoenixLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::PhoenixLinkedService
        PaypalLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::PaypalLinkedService
        MarketoLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::MarketoLinkedService
        AzureMariaDBLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMariaDBLinkedService
        MariaDBLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::MariaDBLinkedService
        MagentoLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::MagentoLinkedService
        JiraLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::JiraLinkedService
        ImpalaLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::ImpalaLinkedService
        HubspotLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::HubspotLinkedService
        HiveLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::HiveLinkedService
        HBaseLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::HBaseLinkedService
        GreenplumLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::GreenplumLinkedService
        GoogleBigQueryLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::GoogleBigQueryLinkedService
        EloquaLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::EloquaLinkedService
        DrillLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::DrillLinkedService
        CouchbaseLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::CouchbaseLinkedService
        ConcurLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::ConcurLinkedService
        AzurePostgreSqlLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzurePostgreSqlLinkedService
        AmazonMWSLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::AmazonMWSLinkedService
        SapHanaLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::SapHanaLinkedService
        SapBWLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::SapBWLinkedService
        SftpServerLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::SftpServerLinkedService
        FtpServerLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::FtpServerLinkedService
        HttpLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::HttpLinkedService
        AzureSearchLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureSearchLinkedService
        CustomDataSourceLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::CustomDataSourceLinkedService
        AmazonRedshiftLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::AmazonRedshiftLinkedService
        AmazonS3LinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::AmazonS3LinkedService
        RestServiceLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::RestServiceLinkedService
        SapOpenHubLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::SapOpenHubLinkedService
        SapEccLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::SapEccLinkedService
        SapCloudForCustomerLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::SapCloudForCustomerLinkedService
        SalesforceServiceCloudLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::SalesforceServiceCloudLinkedService
        SalesforceLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::SalesforceLinkedService
        Office365LinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::Office365LinkedService
        AzureBlobFSLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBlobFSLinkedService
        AzureDataLakeStoreLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDataLakeStoreLinkedService
        CosmosDbMongoDbApiLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::CosmosDbMongoDbApiLinkedService
        MongoDbV2LinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::MongoDbV2LinkedService
        MongoDbLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::MongoDbLinkedService
        CassandraLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::CassandraLinkedService
        WebClientCertificateAuthentication = Azure::DataFactory::Mgmt::V2018_06_01::Models::WebClientCertificateAuthentication
        WebBasicAuthentication = Azure::DataFactory::Mgmt::V2018_06_01::Models::WebBasicAuthentication
        WebAnonymousAuthentication = Azure::DataFactory::Mgmt::V2018_06_01::Models::WebAnonymousAuthentication
        WebLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::WebLinkedService
        ODataLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::ODataLinkedService
        HdfsLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::HdfsLinkedService
        MicrosoftAccessLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::MicrosoftAccessLinkedService
        InformixLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::InformixLinkedService
        OdbcLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::OdbcLinkedService
        AzureMLServiceLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMLServiceLinkedService
        AzureMLLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMLLinkedService
        TeradataLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::TeradataLinkedService
        Db2LinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::Db2LinkedService
        SybaseLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::SybaseLinkedService
        PostgreSqlLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::PostgreSqlLinkedService
        MySqlLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::MySqlLinkedService
        AzureMySqlLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMySqlLinkedService
        OracleLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::OracleLinkedService
        GoogleCloudStorageLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::GoogleCloudStorageLinkedService
        AzureFileStorageLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureFileStorageLinkedService
        FileServerLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::FileServerLinkedService
        HDInsightLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::HDInsightLinkedService
        CommonDataServiceForAppsLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::CommonDataServiceForAppsLinkedService
        DynamicsCrmLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::DynamicsCrmLinkedService
        DynamicsLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::DynamicsLinkedService
        CosmosDbLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::CosmosDbLinkedService
        AzureKeyVaultLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureKeyVaultLinkedService
        AzureBatchLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBatchLinkedService
        AzureSqlMILinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureSqlMILinkedService
        AzureSqlDatabaseLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureSqlDatabaseLinkedService
        SqlServerLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::SqlServerLinkedService
        AzureSqlDWLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureSqlDWLinkedService
        AzureTableStorageLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureTableStorageLinkedService
        AzureBlobStorageLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBlobStorageLinkedService
        AzureStorageLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureStorageLinkedService
        SharePointOnlineListResourceDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::SharePointOnlineListResourceDataset
        SnowflakeDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::SnowflakeDataset
        GoogleAdWordsObjectDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::GoogleAdWordsObjectDataset
        AzureDataExplorerTableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDataExplorerTableDataset
        OracleServiceCloudObjectDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::OracleServiceCloudObjectDataset
        DynamicsAXResourceDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::DynamicsAXResourceDataset
        ResponsysObjectDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::ResponsysObjectDataset
        SalesforceMarketingCloudObjectDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::SalesforceMarketingCloudObjectDataset
        VerticaTableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::VerticaTableDataset
        NetezzaTableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::NetezzaTableDataset
        ZohoObjectDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::ZohoObjectDataset
        XeroObjectDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::XeroObjectDataset
        SquareObjectDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::SquareObjectDataset
        SparkObjectDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::SparkObjectDataset
        ShopifyObjectDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::ShopifyObjectDataset
        ServiceNowObjectDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::ServiceNowObjectDataset
        QuickBooksObjectDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::QuickBooksObjectDataset
        PrestoObjectDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::PrestoObjectDataset
        PhoenixObjectDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::PhoenixObjectDataset
        PaypalObjectDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::PaypalObjectDataset
        MarketoObjectDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::MarketoObjectDataset
        AzureMariaDBTableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMariaDBTableDataset
        MariaDBTableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::MariaDBTableDataset
        MagentoObjectDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::MagentoObjectDataset
        JiraObjectDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::JiraObjectDataset
        ImpalaObjectDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::ImpalaObjectDataset
        HubspotObjectDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::HubspotObjectDataset
        HiveObjectDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::HiveObjectDataset
        HBaseObjectDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::HBaseObjectDataset
        GreenplumTableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::GreenplumTableDataset
        GoogleBigQueryObjectDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::GoogleBigQueryObjectDataset
        EloquaObjectDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::EloquaObjectDataset
        DrillTableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::DrillTableDataset
        CouchbaseTableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::CouchbaseTableDataset
        ConcurObjectDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::ConcurObjectDataset
        AzurePostgreSqlTableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzurePostgreSqlTableDataset
        AmazonMWSObjectDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::AmazonMWSObjectDataset
        DatasetTarGZipCompression = Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetTarGZipCompression
        DatasetTarCompression = Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetTarCompression
        DatasetZipDeflateCompression = Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetZipDeflateCompression
        DatasetDeflateCompression = Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetDeflateCompression
        DatasetGZipCompression = Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetGZipCompression
        DatasetBZip2Compression = Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetBZip2Compression
        ParquetFormat = Azure::DataFactory::Mgmt::V2018_06_01::Models::ParquetFormat
        OrcFormat = Azure::DataFactory::Mgmt::V2018_06_01::Models::OrcFormat
        AvroFormat = Azure::DataFactory::Mgmt::V2018_06_01::Models::AvroFormat
        JsonFormat = Azure::DataFactory::Mgmt::V2018_06_01::Models::JsonFormat
        TextFormat = Azure::DataFactory::Mgmt::V2018_06_01::Models::TextFormat
        HttpDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::HttpDataset
        AzureSearchIndexDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureSearchIndexDataset
        WebTableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::WebTableDataset
        SapTableResourceDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::SapTableResourceDataset
        RestResourceDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::RestResourceDataset
        SqlServerTableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::SqlServerTableDataset
        SapOpenHubTableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::SapOpenHubTableDataset
        SapHanaTableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::SapHanaTableDataset
        SapEccResourceDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::SapEccResourceDataset
        SapCloudForCustomerResourceDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::SapCloudForCustomerResourceDataset
        SapBwCubeDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::SapBwCubeDataset
        SybaseTableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::SybaseTableDataset
        SalesforceServiceCloudObjectDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::SalesforceServiceCloudObjectDataset
        SalesforceObjectDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::SalesforceObjectDataset
        MicrosoftAccessTableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::MicrosoftAccessTableDataset
        PostgreSqlTableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::PostgreSqlTableDataset
        MySqlTableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::MySqlTableDataset
        OdbcTableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::OdbcTableDataset
        InformixTableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::InformixTableDataset
        RelationalTableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::RelationalTableDataset
        Db2TableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::Db2TableDataset
        AmazonRedshiftTableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::AmazonRedshiftTableDataset
        AzureMySqlTableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMySqlTableDataset
        TeradataTableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::TeradataTableDataset
        OracleTableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::OracleTableDataset
        ODataResourceDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::ODataResourceDataset
        CosmosDbMongoDbApiCollectionDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::CosmosDbMongoDbApiCollectionDataset
        MongoDbV2CollectionDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::MongoDbV2CollectionDataset
        MongoDbCollectionDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::MongoDbCollectionDataset
        FileShareDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::FileShareDataset
        Office365Dataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::Office365Dataset
        AzureBlobFSDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBlobFSDataset
        AzureDataLakeStoreDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDataLakeStoreDataset
        CommonDataServiceForAppsEntityDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::CommonDataServiceForAppsEntityDataset
        DynamicsCrmEntityDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::DynamicsCrmEntityDataset
        DynamicsEntityDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::DynamicsEntityDataset
        DocumentDbCollectionDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::DocumentDbCollectionDataset
        CosmosDbSqlApiCollectionDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::CosmosDbSqlApiCollectionDataset
        CustomDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::CustomDataset
        CassandraTableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::CassandraTableDataset
        AzureSqlDWTableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureSqlDWTableDataset
        AzureSqlMITableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureSqlMITableDataset
        AzureSqlTableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureSqlTableDataset
        AzureTableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureTableDataset
        AzureBlobDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBlobDataset
        HdfsLocation = Azure::DataFactory::Mgmt::V2018_06_01::Models::HdfsLocation
        HttpServerLocation = Azure::DataFactory::Mgmt::V2018_06_01::Models::HttpServerLocation
        SftpLocation = Azure::DataFactory::Mgmt::V2018_06_01::Models::SftpLocation
        FtpServerLocation = Azure::DataFactory::Mgmt::V2018_06_01::Models::FtpServerLocation
        GoogleCloudStorageLocation = Azure::DataFactory::Mgmt::V2018_06_01::Models::GoogleCloudStorageLocation
        AzureFileStorageLocation = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureFileStorageLocation
        FileServerLocation = Azure::DataFactory::Mgmt::V2018_06_01::Models::FileServerLocation
        AmazonS3Location = Azure::DataFactory::Mgmt::V2018_06_01::Models::AmazonS3Location
        AzureDataLakeStoreLocation = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDataLakeStoreLocation
        AzureBlobFSLocation = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBlobFSLocation
        AzureBlobStorageLocation = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBlobStorageLocation
        BinaryDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::BinaryDataset
        OrcDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::OrcDataset
        XmlDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::XmlDataset
        JsonDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::JsonDataset
        DelimitedTextDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::DelimitedTextDataset
        ParquetDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::ParquetDataset
        ExcelDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::ExcelDataset
        AvroDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::AvroDataset
        AmazonS3Dataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::AmazonS3Dataset
        ChainingTrigger = Azure::DataFactory::Mgmt::V2018_06_01::Models::ChainingTrigger
        RerunTumblingWindowTrigger = Azure::DataFactory::Mgmt::V2018_06_01::Models::RerunTumblingWindowTrigger
        SelfDependencyTumblingWindowTriggerReference = Azure::DataFactory::Mgmt::V2018_06_01::Models::SelfDependencyTumblingWindowTriggerReference
        TriggerDependencyReference = Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerDependencyReference
        TumblingWindowTriggerDependencyReference = Azure::DataFactory::Mgmt::V2018_06_01::Models::TumblingWindowTriggerDependencyReference
        TumblingWindowTrigger = Azure::DataFactory::Mgmt::V2018_06_01::Models::TumblingWindowTrigger
        MultiplePipelineTrigger = Azure::DataFactory::Mgmt::V2018_06_01::Models::MultiplePipelineTrigger
        BlobEventsTrigger = Azure::DataFactory::Mgmt::V2018_06_01::Models::BlobEventsTrigger
        BlobTrigger = Azure::DataFactory::Mgmt::V2018_06_01::Models::BlobTrigger
        ScheduleTrigger = Azure::DataFactory::Mgmt::V2018_06_01::Models::ScheduleTrigger
        ExecutionActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::ExecutionActivity
        ExecuteDataFlowActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::ExecuteDataFlowActivity
        AzureFunctionActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureFunctionActivity
        DatabricksSparkPythonActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::DatabricksSparkPythonActivity
        DatabricksSparkJarActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::DatabricksSparkJarActivity
        DatabricksNotebookActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::DatabricksNotebookActivity
        DataLakeAnalyticsUSQLActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::DataLakeAnalyticsUSQLActivity
        AzureMLExecutePipelineActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMLExecutePipelineActivity
        AzureMLUpdateResourceActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMLUpdateResourceActivity
        AzureMLBatchExecutionActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMLBatchExecutionActivity
        TarGZipReadSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::TarGZipReadSettings
        TarReadSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::TarReadSettings
        ZipDeflateReadSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::ZipDeflateReadSettings
        BinaryReadSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::BinaryReadSettings
        XmlReadSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::XmlReadSettings
        JsonReadSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::JsonReadSettings
        DelimitedTextReadSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::DelimitedTextReadSettings
        HdfsReadSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::HdfsReadSettings
        HttpReadSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::HttpReadSettings
        SftpReadSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::SftpReadSettings
        FtpReadSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::FtpReadSettings
        GoogleCloudStorageReadSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::GoogleCloudStorageReadSettings
        AzureFileStorageReadSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureFileStorageReadSettings
        FileServerReadSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::FileServerReadSettings
        AmazonS3ReadSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::AmazonS3ReadSettings
        AzureDataLakeStoreReadSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDataLakeStoreReadSettings
        AzureBlobFSReadSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBlobFSReadSettings
        AzureBlobStorageReadSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBlobStorageReadSettings
        GetMetadataActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::GetMetadataActivity
        WebActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::WebActivity
        SharePointOnlineListSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::SharePointOnlineListSource
        SnowflakeExportCopyCommand = Azure::DataFactory::Mgmt::V2018_06_01::Models::SnowflakeExportCopyCommand
        SnowflakeSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::SnowflakeSource
        HttpSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::HttpSource
        AzureBlobFSSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBlobFSSource
        AzureDataLakeStoreSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDataLakeStoreSource
        Office365Source = Azure::DataFactory::Mgmt::V2018_06_01::Models::Office365Source
        CosmosDbMongoDbApiSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::CosmosDbMongoDbApiSource
        MongoDbV2Source = Azure::DataFactory::Mgmt::V2018_06_01::Models::MongoDbV2Source
        MongoDbSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::MongoDbSource
        WebSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::WebSource
        OracleSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::OracleSource
        AzureDataExplorerSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDataExplorerSource
        HdfsSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::HdfsSource
        FileSystemSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::FileSystemSource
        RestSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::RestSource
        SalesforceServiceCloudSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::SalesforceServiceCloudSource
        ODataSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::ODataSource
        MicrosoftAccessSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::MicrosoftAccessSource
        RelationalSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::RelationalSource
        CommonDataServiceForAppsSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::CommonDataServiceForAppsSource
        DynamicsCrmSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::DynamicsCrmSource
        DynamicsSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::DynamicsSource
        CosmosDbSqlApiSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::CosmosDbSqlApiSource
        DocumentDbCollectionSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::DocumentDbCollectionSource
        BlobSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::BlobSource
        TabularSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::TabularSource
        AmazonRedshiftSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::AmazonRedshiftSource
        GoogleAdWordsSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::GoogleAdWordsSource
        OracleServiceCloudSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::OracleServiceCloudSource
        DynamicsAXSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::DynamicsAXSource
        ResponsysSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::ResponsysSource
        SalesforceMarketingCloudSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::SalesforceMarketingCloudSource
        VerticaSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::VerticaSource
        NetezzaSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::NetezzaSource
        ZohoSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::ZohoSource
        XeroSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::XeroSource
        SquareSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::SquareSource
        SparkSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::SparkSource
        ShopifySource = Azure::DataFactory::Mgmt::V2018_06_01::Models::ShopifySource
        ServiceNowSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::ServiceNowSource
        QuickBooksSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::QuickBooksSource
        PrestoSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::PrestoSource
        PhoenixSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::PhoenixSource
        PaypalSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::PaypalSource
        MarketoSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::MarketoSource
        AzureMariaDBSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMariaDBSource
        MariaDBSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::MariaDBSource
        MagentoSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::MagentoSource
        JiraSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::JiraSource
        ImpalaSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::ImpalaSource
        HubspotSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::HubspotSource
        HiveSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::HiveSource
        HBaseSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::HBaseSource
        GreenplumSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::GreenplumSource
        GoogleBigQuerySource = Azure::DataFactory::Mgmt::V2018_06_01::Models::GoogleBigQuerySource
        EloquaSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::EloquaSource
        DrillSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::DrillSource
        CouchbaseSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::CouchbaseSource
        ConcurSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::ConcurSource
        AzurePostgreSqlSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzurePostgreSqlSource
        AmazonMWSSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::AmazonMWSSource
        CassandraSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::CassandraSource
        TeradataSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::TeradataSource
        AzureMySqlSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMySqlSource
        SqlDWSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::SqlDWSource
        SqlMISource = Azure::DataFactory::Mgmt::V2018_06_01::Models::SqlMISource
        AzureSqlSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureSqlSource
        SqlServerSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::SqlServerSource
        SqlSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::SqlSource
        SapTableSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::SapTableSource
        SapOpenHubSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::SapOpenHubSource
        SapHanaSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::SapHanaSource
        SapEccSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::SapEccSource
        SapCloudForCustomerSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::SapCloudForCustomerSource
        SalesforceSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::SalesforceSource
        SapBwSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::SapBwSource
        SybaseSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::SybaseSource
        PostgreSqlSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::PostgreSqlSource
        MySqlSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::MySqlSource
        OdbcSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::OdbcSource
        Db2Source = Azure::DataFactory::Mgmt::V2018_06_01::Models::Db2Source
        InformixSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::InformixSource
        AzureTableSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureTableSource
        BinarySource = Azure::DataFactory::Mgmt::V2018_06_01::Models::BinarySource
        OrcSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::OrcSource
        XmlSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::XmlSource
        JsonSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::JsonSource
        DelimitedTextSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::DelimitedTextSource
        ParquetSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::ParquetSource
        ExcelSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::ExcelSource
        AvroSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::AvroSource
        LookupActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::LookupActivity
        AzureDataExplorerCommandActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDataExplorerCommandActivity
        DeleteActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::DeleteActivity
        SqlServerStoredProcedureActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::SqlServerStoredProcedureActivity
        CustomActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::CustomActivity
        ExecuteSSISPackageActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::ExecuteSSISPackageActivity
        HDInsightSparkActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::HDInsightSparkActivity
        HDInsightStreamingActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::HDInsightStreamingActivity
        HDInsightMapReduceActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::HDInsightMapReduceActivity
        HDInsightPigActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::HDInsightPigActivity
        HDInsightHiveActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::HDInsightHiveActivity
        CosmosDbMongoDbApiSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::CosmosDbMongoDbApiSink
        SalesforceServiceCloudSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::SalesforceServiceCloudSink
        SalesforceSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::SalesforceSink
        AzureDataExplorerSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDataExplorerSink
        CommonDataServiceForAppsSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::CommonDataServiceForAppsSink
        DynamicsCrmSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::DynamicsCrmSink
        DynamicsSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::DynamicsSink
        MicrosoftAccessSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::MicrosoftAccessSink
        InformixSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::InformixSink
        OdbcSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::OdbcSink
        AzureSearchIndexSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureSearchIndexSink
        AzureBlobFSSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBlobFSSink
        AzureDataLakeStoreSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDataLakeStoreSink
        OracleSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::OracleSink
        SnowflakeImportCopyCommand = Azure::DataFactory::Mgmt::V2018_06_01::Models::SnowflakeImportCopyCommand
        SnowflakeSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::SnowflakeSink
        SqlDWSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::SqlDWSink
        SqlMISink = Azure::DataFactory::Mgmt::V2018_06_01::Models::SqlMISink
        AzureSqlSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureSqlSink
        SqlServerSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::SqlServerSink
        SqlSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::SqlSink
        CosmosDbSqlApiSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::CosmosDbSqlApiSink
        DocumentDbCollectionSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::DocumentDbCollectionSink
        FileSystemSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::FileSystemSink
        BlobSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::BlobSink
        AzureFileStorageWriteSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureFileStorageWriteSettings
        FileServerWriteSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::FileServerWriteSettings
        AzureDataLakeStoreWriteSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDataLakeStoreWriteSettings
        AzureBlobFSWriteSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBlobFSWriteSettings
        AzureBlobStorageWriteSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBlobStorageWriteSettings
        SftpWriteSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::SftpWriteSettings
        BinarySink = Azure::DataFactory::Mgmt::V2018_06_01::Models::BinarySink
        ParquetSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::ParquetSink
        JsonWriteSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::JsonWriteSettings
        DelimitedTextWriteSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::DelimitedTextWriteSettings
        AvroWriteSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::AvroWriteSettings
        AvroSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::AvroSink
        AzureTableSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureTableSink
        AzureQueueSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureQueueSink
        SapCloudForCustomerSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::SapCloudForCustomerSink
        AzureMySqlSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMySqlSink
        AzurePostgreSqlSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzurePostgreSqlSink
        RestSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::RestSink
        OrcSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::OrcSink
        JsonSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::JsonSink
        DelimitedTextSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::DelimitedTextSink
        CopyActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::CopyActivity
        ControlActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::ControlActivity
        WebHookActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::WebHookActivity
        AppendVariableActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::AppendVariableActivity
        SetVariableActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::SetVariableActivity
        FilterActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::FilterActivity
        ValidationActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::ValidationActivity
        UntilActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::UntilActivity
        WaitActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::WaitActivity
        ForEachActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::ForEachActivity
        SwitchActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::SwitchActivity
        IfConditionActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::IfConditionActivity
        ExecutePipelineActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::ExecutePipelineActivity
        SelfHostedIntegrationRuntimeStatus = Azure::DataFactory::Mgmt::V2018_06_01::Models::SelfHostedIntegrationRuntimeStatus
        ManagedIntegrationRuntimeStatus = Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedIntegrationRuntimeStatus
        LinkedIntegrationRuntimeRbacAuthorization = Azure::DataFactory::Mgmt::V2018_06_01::Models::LinkedIntegrationRuntimeRbacAuthorization
        LinkedIntegrationRuntimeKeyAuthorization = Azure::DataFactory::Mgmt::V2018_06_01::Models::LinkedIntegrationRuntimeKeyAuthorization
        SelfHostedIntegrationRuntime = Azure::DataFactory::Mgmt::V2018_06_01::Models::SelfHostedIntegrationRuntime
        AzPowerShellSetup = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzPowerShellSetup
        ComponentSetup = Azure::DataFactory::Mgmt::V2018_06_01::Models::ComponentSetup
        EnvironmentVariableSetup = Azure::DataFactory::Mgmt::V2018_06_01::Models::EnvironmentVariableSetup
        CmdkeySetup = Azure::DataFactory::Mgmt::V2018_06_01::Models::CmdkeySetup
        ManagedIntegrationRuntime = Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedIntegrationRuntime
        SsisEnvironment = Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisEnvironment
        SsisPackage = Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisPackage
        SsisProject = Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisProject
        SsisFolder = Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisFolder
        GlobalParameterType = Azure::DataFactory::Mgmt::V2018_06_01::Models::GlobalParameterType
        IntegrationRuntimeState = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeState
        IntegrationRuntimeAutoUpdate = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeAutoUpdate
        ParameterType = Azure::DataFactory::Mgmt::V2018_06_01::Models::ParameterType
        DependencyCondition = Azure::DataFactory::Mgmt::V2018_06_01::Models::DependencyCondition
        VariableType = Azure::DataFactory::Mgmt::V2018_06_01::Models::VariableType
        TriggerRuntimeState = Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerRuntimeState
        EventSubscriptionStatus = Azure::DataFactory::Mgmt::V2018_06_01::Models::EventSubscriptionStatus
        RunQueryFilterOperand = Azure::DataFactory::Mgmt::V2018_06_01::Models::RunQueryFilterOperand
        RunQueryFilterOperator = Azure::DataFactory::Mgmt::V2018_06_01::Models::RunQueryFilterOperator
        RunQueryOrderByField = Azure::DataFactory::Mgmt::V2018_06_01::Models::RunQueryOrderByField
        RunQueryOrder = Azure::DataFactory::Mgmt::V2018_06_01::Models::RunQueryOrder
        TriggerRunStatus = Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerRunStatus
        DataFlowDebugCommandType = Azure::DataFactory::Mgmt::V2018_06_01::Models::DataFlowDebugCommandType
        GoogleAdWordsAuthenticationType = Azure::DataFactory::Mgmt::V2018_06_01::Models::GoogleAdWordsAuthenticationType
        SparkServerType = Azure::DataFactory::Mgmt::V2018_06_01::Models::SparkServerType
        SparkThriftTransportProtocol = Azure::DataFactory::Mgmt::V2018_06_01::Models::SparkThriftTransportProtocol
        SparkAuthenticationType = Azure::DataFactory::Mgmt::V2018_06_01::Models::SparkAuthenticationType
        ServiceNowAuthenticationType = Azure::DataFactory::Mgmt::V2018_06_01::Models::ServiceNowAuthenticationType
        PrestoAuthenticationType = Azure::DataFactory::Mgmt::V2018_06_01::Models::PrestoAuthenticationType
        PhoenixAuthenticationType = Azure::DataFactory::Mgmt::V2018_06_01::Models::PhoenixAuthenticationType
        ImpalaAuthenticationType = Azure::DataFactory::Mgmt::V2018_06_01::Models::ImpalaAuthenticationType
        HiveServerType = Azure::DataFactory::Mgmt::V2018_06_01::Models::HiveServerType
        HiveThriftTransportProtocol = Azure::DataFactory::Mgmt::V2018_06_01::Models::HiveThriftTransportProtocol
        HiveAuthenticationType = Azure::DataFactory::Mgmt::V2018_06_01::Models::HiveAuthenticationType
        HBaseAuthenticationType = Azure::DataFactory::Mgmt::V2018_06_01::Models::HBaseAuthenticationType
        GoogleBigQueryAuthenticationType = Azure::DataFactory::Mgmt::V2018_06_01::Models::GoogleBigQueryAuthenticationType
        SapHanaAuthenticationType = Azure::DataFactory::Mgmt::V2018_06_01::Models::SapHanaAuthenticationType
        SftpAuthenticationType = Azure::DataFactory::Mgmt::V2018_06_01::Models::SftpAuthenticationType
        FtpAuthenticationType = Azure::DataFactory::Mgmt::V2018_06_01::Models::FtpAuthenticationType
        HttpAuthenticationType = Azure::DataFactory::Mgmt::V2018_06_01::Models::HttpAuthenticationType
        RestServiceAuthenticationType = Azure::DataFactory::Mgmt::V2018_06_01::Models::RestServiceAuthenticationType
        MongoDbAuthenticationType = Azure::DataFactory::Mgmt::V2018_06_01::Models::MongoDbAuthenticationType
        ODataAuthenticationType = Azure::DataFactory::Mgmt::V2018_06_01::Models::ODataAuthenticationType
        ODataAadServicePrincipalCredentialType = Azure::DataFactory::Mgmt::V2018_06_01::Models::ODataAadServicePrincipalCredentialType
        TeradataAuthenticationType = Azure::DataFactory::Mgmt::V2018_06_01::Models::TeradataAuthenticationType
        Db2AuthenticationType = Azure::DataFactory::Mgmt::V2018_06_01::Models::Db2AuthenticationType
        SybaseAuthenticationType = Azure::DataFactory::Mgmt::V2018_06_01::Models::SybaseAuthenticationType
        DynamicsDeploymentType = Azure::DataFactory::Mgmt::V2018_06_01::Models::DynamicsDeploymentType
        DynamicsAuthenticationType = Azure::DataFactory::Mgmt::V2018_06_01::Models::DynamicsAuthenticationType
        OrcCompressionCodec = Azure::DataFactory::Mgmt::V2018_06_01::Models::OrcCompressionCodec
        AvroCompressionCodec = Azure::DataFactory::Mgmt::V2018_06_01::Models::AvroCompressionCodec
        TumblingWindowFrequency = Azure::DataFactory::Mgmt::V2018_06_01::Models::TumblingWindowFrequency
        BlobEventTypes = Azure::DataFactory::Mgmt::V2018_06_01::Models::BlobEventTypes
        DayOfWeek = Azure::DataFactory::Mgmt::V2018_06_01::Models::DayOfWeek
        DaysOfWeek = Azure::DataFactory::Mgmt::V2018_06_01::Models::DaysOfWeek
        RecurrenceFrequency = Azure::DataFactory::Mgmt::V2018_06_01::Models::RecurrenceFrequency
        DataFlowComputeType = Azure::DataFactory::Mgmt::V2018_06_01::Models::DataFlowComputeType
        AzureFunctionActivityMethod = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureFunctionActivityMethod
        WebActivityMethod = Azure::DataFactory::Mgmt::V2018_06_01::Models::WebActivityMethod
        OraclePartitionOption = Azure::DataFactory::Mgmt::V2018_06_01::Models::OraclePartitionOption
        SalesforceSourceReadBehavior = Azure::DataFactory::Mgmt::V2018_06_01::Models::SalesforceSourceReadBehavior
        NetezzaPartitionOption = Azure::DataFactory::Mgmt::V2018_06_01::Models::NetezzaPartitionOption
        CassandraSourceReadConsistencyLevels = Azure::DataFactory::Mgmt::V2018_06_01::Models::CassandraSourceReadConsistencyLevels
        TeradataPartitionOption = Azure::DataFactory::Mgmt::V2018_06_01::Models::TeradataPartitionOption
        SqlPartitionOption = Azure::DataFactory::Mgmt::V2018_06_01::Models::SqlPartitionOption
        StoredProcedureParameterType = Azure::DataFactory::Mgmt::V2018_06_01::Models::StoredProcedureParameterType
        SapTablePartitionOption = Azure::DataFactory::Mgmt::V2018_06_01::Models::SapTablePartitionOption
        SapHanaPartitionOption = Azure::DataFactory::Mgmt::V2018_06_01::Models::SapHanaPartitionOption
        SsisPackageLocationType = Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisPackageLocationType
        HDInsightActivityDebugInfoOption = Azure::DataFactory::Mgmt::V2018_06_01::Models::HDInsightActivityDebugInfoOption
        SalesforceSinkWriteBehavior = Azure::DataFactory::Mgmt::V2018_06_01::Models::SalesforceSinkWriteBehavior
        AzureSearchIndexWriteBehaviorType = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureSearchIndexWriteBehaviorType
        PolybaseSettingsRejectType = Azure::DataFactory::Mgmt::V2018_06_01::Models::PolybaseSettingsRejectType
        JsonWriteFilePattern = Azure::DataFactory::Mgmt::V2018_06_01::Models::JsonWriteFilePattern
        SapCloudForCustomerSinkWriteBehavior = Azure::DataFactory::Mgmt::V2018_06_01::Models::SapCloudForCustomerSinkWriteBehavior
        WebHookActivityMethod = Azure::DataFactory::Mgmt::V2018_06_01::Models::WebHookActivityMethod
        IntegrationRuntimeType = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeType
        SelfHostedIntegrationRuntimeNodeStatus = Azure::DataFactory::Mgmt::V2018_06_01::Models::SelfHostedIntegrationRuntimeNodeStatus
        IntegrationRuntimeUpdateResult = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeUpdateResult
        IntegrationRuntimeInternalChannelEncryptionMode = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeInternalChannelEncryptionMode
        ManagedIntegrationRuntimeNodeStatus = Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedIntegrationRuntimeNodeStatus
        IntegrationRuntimeEntityReferenceType = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeEntityReferenceType
        IntegrationRuntimeSsisCatalogPricingTier = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeSsisCatalogPricingTier
        IntegrationRuntimeLicenseType = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeLicenseType
        IntegrationRuntimeEdition = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeEdition
        SsisObjectMetadataType = Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisObjectMetadataType
        IntegrationRuntimeAuthKeyName = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeAuthKeyName
      end

      class DataFactoryManagementClass
        attr_reader :operations, :factories, :exposure_control, :integration_runtimes, :integration_runtime_object_metadata, :integration_runtime_nodes, :linked_services, :datasets, :pipelines, :pipeline_runs, :activity_runs, :triggers, :trigger_runs, :data_flows, :data_flow_debug_session, :managed_virtual_networks, :managed_private_endpoints, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::DataFactory::Mgmt::V2018_06_01::DataFactoryManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @factories = @client_0.factories
          @exposure_control = @client_0.exposure_control
          @integration_runtimes = @client_0.integration_runtimes
          @integration_runtime_object_metadata = @client_0.integration_runtime_object_metadata
          @integration_runtime_nodes = @client_0.integration_runtime_nodes
          @linked_services = @client_0.linked_services
          @datasets = @client_0.datasets
          @pipelines = @client_0.pipelines
          @pipeline_runs = @client_0.pipeline_runs
          @activity_runs = @client_0.activity_runs
          @triggers = @client_0.triggers
          @trigger_runs = @client_0.trigger_runs
          @data_flows = @client_0.data_flows
          @data_flow_debug_session = @client_0.data_flow_debug_session
          @managed_virtual_networks = @client_0.managed_virtual_networks
          @managed_private_endpoints = @client_0.managed_private_endpoints

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/DataFactory/Mgmt"
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
          def data_flow_reference
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DataFlowReference
          end
          def connection_state_properties
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ConnectionStateProperties
          end
          def sub_resource
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SubResource
          end
          def managed_private_endpoint
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedPrivateEndpoint
          end
          def expression
            Azure::DataFactory::Mgmt::V2018_06_01::Models::Expression
          end
          def add_data_flow_to_debug_session_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AddDataFlowToDebugSessionResponse
          end
          def delete_data_flow_debug_session_request
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DeleteDataFlowDebugSessionRequest
          end
          def create_data_flow_debug_session_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CreateDataFlowDebugSessionResponse
          end
          def data_flow_source_setting
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DataFlowSourceSetting
          end
          def factory_identity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::FactoryIdentity
          end
          def data_flow_staging_info
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DataFlowStagingInfo
          end
          def global_parameter_specification
            Azure::DataFactory::Mgmt::V2018_06_01::Models::GlobalParameterSpecification
          end
          def dwcopy_command_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DWCopyCommandSettings
          end
          def factory_list_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::FactoryListResponse
          end
          def data_flow_debug_package_debug_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DataFlowDebugPackageDebugSettings
          end
          def ssisexecution_parameter
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SSISExecutionParameter
          end
          def data_flow_debug_package
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DataFlowDebugPackage
          end
          def integration_runtime_reference
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeReference
          end
          def linked_service_reference
            Azure::DataFactory::Mgmt::V2018_06_01::Models::LinkedServiceReference
          end
          def integration_runtime_status
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeStatus
          end
          def execute_data_flow_activity_type_properties_compute
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ExecuteDataFlowActivityTypePropertiesCompute
          end
          def integration_runtime_status_list_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeStatusListResponse
          end
          def data_flow_debug_command_payload
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DataFlowDebugCommandPayload
          end
          def update_integration_runtime_node_request
            Azure::DataFactory::Mgmt::V2018_06_01::Models::UpdateIntegrationRuntimeNodeRequest
          end
          def data_flow_debug_command_request
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DataFlowDebugCommandRequest
          end
          def create_linked_integration_runtime_request
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CreateLinkedIntegrationRuntimeRequest
          end
          def data_flow_debug_command_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DataFlowDebugCommandResponse
          end
          def linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::LinkedService
          end
          def data_flow_debug_session_info
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DataFlowDebugSessionInfo
          end
          def linked_service_list_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::LinkedServiceListResponse
          end
          def query_data_flow_debug_sessions_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::QueryDataFlowDebugSessionsResponse
          end
          def dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::Dataset
          end
          def get_data_factory_operation_status_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::GetDataFactoryOperationStatusResponse
          end
          def dataset_list_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetListResponse
          end
          def resource
            Azure::DataFactory::Mgmt::V2018_06_01::Models::Resource
          end
          def user_property
            Azure::DataFactory::Mgmt::V2018_06_01::Models::UserProperty
          end
          def sub_resource_debug_resource
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SubResourceDebugResource
          end
          def variable_specification
            Azure::DataFactory::Mgmt::V2018_06_01::Models::VariableSpecification
          end
          def pipeline_folder
            Azure::DataFactory::Mgmt::V2018_06_01::Models::PipelineFolder
          end
          def activity_policy
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ActivityPolicy
          end
          def pipeline_list_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::PipelineListResponse
          end
          def ssisaccess_credential
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SSISAccessCredential
          end
          def ssispackage_location
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SSISPackageLocation
          end
          def managed_private_endpoint_list_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedPrivateEndpointListResponse
          end
          def trigger_list_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerListResponse
          end
          def managed_virtual_network
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedVirtualNetwork
          end
          def custom_activity_reference_object
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CustomActivityReferenceObject
          end
          def skip_error_file
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SkipErrorFile
          end
          def managed_virtual_network_list_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedVirtualNetworkListResponse
          end
          def factory_repo_update
            Azure::DataFactory::Mgmt::V2018_06_01::Models::FactoryRepoUpdate
          end
          def log_storage_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::LogStorageSettings
          end
          def git_hub_access_token_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::GitHubAccessTokenResponse
          end
          def copy_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CopySource
          end
          def access_policy_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AccessPolicyResponse
          end
          def transformation
            Azure::DataFactory::Mgmt::V2018_06_01::Models::Transformation
          end
          def trigger_pipeline_reference
            Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerPipelineReference
          end
          def format_read_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::FormatReadSettings
          end
          def dataset_reference
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetReference
          end
          def distcp_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DistcpSettings
          end
          def import_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ImportSettings
          end
          def sap_hana_partition_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SapHanaPartitionSettings
          end
          def run_query_filter
            Azure::DataFactory::Mgmt::V2018_06_01::Models::RunQueryFilter
          end
          def sap_table_partition_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SapTablePartitionSettings
          end
          def run_filter_parameters
            Azure::DataFactory::Mgmt::V2018_06_01::Models::RunFilterParameters
          end
          def stored_procedure_parameter
            Azure::DataFactory::Mgmt::V2018_06_01::Models::StoredProcedureParameter
          end
          def pipeline_run
            Azure::DataFactory::Mgmt::V2018_06_01::Models::PipelineRun
          end
          def sql_partition_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SqlPartitionSettings
          end
          def activity_run
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ActivityRun
          end
          def teradata_partition_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::TeradataPartitionSettings
          end
          def trigger_run
            Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerRun
          end
          def netezza_partition_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::NetezzaPartitionSettings
          end
          def operation_display
            Azure::DataFactory::Mgmt::V2018_06_01::Models::OperationDisplay
          end
          def redshift_unload_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::RedshiftUnloadSettings
          end
          def operation_metric_availability
            Azure::DataFactory::Mgmt::V2018_06_01::Models::OperationMetricAvailability
          end
          def oracle_partition_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::OraclePartitionSettings
          end
          def operation_metric_specification
            Azure::DataFactory::Mgmt::V2018_06_01::Models::OperationMetricSpecification
          end
          def mongo_db_cursor_methods_properties
            Azure::DataFactory::Mgmt::V2018_06_01::Models::MongoDbCursorMethodsProperties
          end
          def operation
            Azure::DataFactory::Mgmt::V2018_06_01::Models::Operation
          end
          def additional_columns
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AdditionalColumns
          end
          def get_ssis_object_metadata_request
            Azure::DataFactory::Mgmt::V2018_06_01::Models::GetSsisObjectMetadataRequest
          end
          def script_action
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ScriptAction
          end
          def exposure_control_request
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ExposureControlRequest
          end
          def export_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ExportSettings
          end
          def exposure_control_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ExposureControlResponse
          end
          def store_read_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::StoreReadSettings
          end
          def data_flow_folder
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DataFlowFolder
          end
          def web_activity_authentication
            Azure::DataFactory::Mgmt::V2018_06_01::Models::WebActivityAuthentication
          end
          def dwcopy_command_default_value
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DWCopyCommandDefaultValue
          end
          def compression_read_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CompressionReadSettings
          end
          def create_data_flow_debug_session_request
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CreateDataFlowDebugSessionRequest
          end
          def ssislog_location
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SSISLogLocation
          end
          def factory_repo_configuration
            Azure::DataFactory::Mgmt::V2018_06_01::Models::FactoryRepoConfiguration
          end
          def dataset_storage_format
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetStorageFormat
          end
          def integration_runtime
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntime
          end
          def integration_runtime_connection_info
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeConnectionInfo
          end
          def ssisexecution_credential
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SSISExecutionCredential
          end
          def integration_runtime_regenerate_key_parameters
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeRegenerateKeyParameters
          end
          def update_integration_runtime_request
            Azure::DataFactory::Mgmt::V2018_06_01::Models::UpdateIntegrationRuntimeRequest
          end
          def integration_runtime_auth_keys
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeAuthKeys
          end
          def parameter_specification
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ParameterSpecification
          end
          def integration_runtime_monitoring_data
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeMonitoringData
          end
          def dataset_folder
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetFolder
          end
          def integration_runtime_node_monitoring_data
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeNodeMonitoringData
          end
          def activity_dependency
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ActivityDependency
          end
          def dataset_compression
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetCompression
          end
          def ssischild_package
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SSISChildPackage
          end
          def ssis_object_metadata_list_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisObjectMetadataListResponse
          end
          def trigger_query_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerQueryResponse
          end
          def ssis_object_metadata
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisObjectMetadata
          end
          def trigger_subscription_operation_status
            Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerSubscriptionOperationStatus
          end
          def ssis_environment_reference
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisEnvironmentReference
          end
          def git_hub_access_token_request
            Azure::DataFactory::Mgmt::V2018_06_01::Models::GitHubAccessTokenRequest
          end
          def ssis_parameter
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisParameter
          end
          def pipeline_reference
            Azure::DataFactory::Mgmt::V2018_06_01::Models::PipelineReference
          end
          def ssis_variable
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisVariable
          end
          def staging_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::StagingSettings
          end
          def integration_runtime_node_ip_address
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeNodeIpAddress
          end
          def run_query_order_by
            Azure::DataFactory::Mgmt::V2018_06_01::Models::RunQueryOrderBy
          end
          def integration_runtime_compute_properties
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeComputeProperties
          end
          def pipeline_runs_query_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::PipelineRunsQueryResponse
          end
          def integration_runtime_data_flow_properties
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeDataFlowProperties
          end
          def trigger_runs_query_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerRunsQueryResponse
          end
          def dataset_location
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetLocation
          end
          def operation_metric_dimension
            Azure::DataFactory::Mgmt::V2018_06_01::Models::OperationMetricDimension
          end
          def integration_runtime_vnet_properties
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeVNetProperties
          end
          def operation_list_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::OperationListResponse
          end
          def integration_runtime_ssis_properties
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeSsisProperties
          end
          def exposure_control_batch_request
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ExposureControlBatchRequest
          end
          def integration_runtime_ssis_catalog_info
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeSsisCatalogInfo
          end
          def data_flow
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DataFlow
          end
          def integration_runtime_custom_setup_script_properties
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeCustomSetupScriptProperties
          end
          def secret_base
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SecretBase
          end
          def integration_runtime_data_proxy_properties
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeDataProxyProperties
          end
          def integration_runtime_list_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeListResponse
          end
          def custom_setup_base
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CustomSetupBase
          end
          def linked_integration_runtime_request
            Azure::DataFactory::Mgmt::V2018_06_01::Models::LinkedIntegrationRuntimeRequest
          end
          def package_store
            Azure::DataFactory::Mgmt::V2018_06_01::Models::PackageStore
          end
          def web_linked_service_type_properties
            Azure::DataFactory::Mgmt::V2018_06_01::Models::WebLinkedServiceTypeProperties
          end
          def entity_reference
            Azure::DataFactory::Mgmt::V2018_06_01::Models::EntityReference
          end
          def trigger
            Azure::DataFactory::Mgmt::V2018_06_01::Models::Trigger
          end
          def linked_integration_runtime_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::LinkedIntegrationRuntimeType
          end
          def redirect_incompatible_row_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::RedirectIncompatibleRowSettings
          end
          def managed_integration_runtime_node
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedIntegrationRuntimeNode
          end
          def factory_update_parameters
            Azure::DataFactory::Mgmt::V2018_06_01::Models::FactoryUpdateParameters
          end
          def managed_integration_runtime_error
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedIntegrationRuntimeError
          end
          def pipeline_run_invoked_by
            Azure::DataFactory::Mgmt::V2018_06_01::Models::PipelineRunInvokedBy
          end
          def managed_integration_runtime_operation_result
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedIntegrationRuntimeOperationResult
          end
          def operation_log_specification
            Azure::DataFactory::Mgmt::V2018_06_01::Models::OperationLogSpecification
          end
          def trigger_reference
            Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerReference
          end
          def ssis_object_metadata_status_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisObjectMetadataStatusResponse
          end
          def self_hosted_integration_runtime_node
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SelfHostedIntegrationRuntimeNode
          end
          def data_flow_list_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DataFlowListResponse
          end
          def linked_integration_runtime
            Azure::DataFactory::Mgmt::V2018_06_01::Models::LinkedIntegrationRuntime
          end
          def integration_runtime_status_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeStatusResponse
          end
          def dependency_reference
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DependencyReference
          end
          def activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::Activity
          end
          def retry_policy
            Azure::DataFactory::Mgmt::V2018_06_01::Models::RetryPolicy
          end
          def user_access_policy
            Azure::DataFactory::Mgmt::V2018_06_01::Models::UserAccessPolicy
          end
          def switch_case
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SwitchCase
          end
          def activity_runs_query_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ActivityRunsQueryResponse
          end
          def copy_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CopySink
          end
          def exposure_control_batch_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ExposureControlBatchResponse
          end
          def format_write_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::FormatWriteSettings
          end
          def azure_mlweb_service_file
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMLWebServiceFile
          end
          def recurrence_schedule_occurrence
            Azure::DataFactory::Mgmt::V2018_06_01::Models::RecurrenceScheduleOccurrence
          end
          def trigger_filter_parameters
            Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerFilterParameters
          end
          def recurrence_schedule
            Azure::DataFactory::Mgmt::V2018_06_01::Models::RecurrenceSchedule
          end
          def ssisproperty_override
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SSISPropertyOverride
          end
          def schedule_trigger_recurrence
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ScheduleTriggerRecurrence
          end
          def operation_service_specification
            Azure::DataFactory::Mgmt::V2018_06_01::Models::OperationServiceSpecification
          end
          def store_write_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::StoreWriteSettings
          end
          def create_run_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CreateRunResponse
          end
          def polybase_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::PolybaseSettings
          end
          def secure_string
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SecureString
          end
          def azure_key_vault_secret_reference
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureKeyVaultSecretReference
          end
          def factory
            Azure::DataFactory::Mgmt::V2018_06_01::Models::Factory
          end
          def integration_runtime_resource
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeResource
          end
          def integration_runtime_debug_resource
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeDebugResource
          end
          def linked_service_resource
            Azure::DataFactory::Mgmt::V2018_06_01::Models::LinkedServiceResource
          end
          def dataset_resource
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetResource
          end
          def pipeline_resource
            Azure::DataFactory::Mgmt::V2018_06_01::Models::PipelineResource
          end
          def trigger_resource
            Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerResource
          end
          def factory_vstsconfiguration
            Azure::DataFactory::Mgmt::V2018_06_01::Models::FactoryVSTSConfiguration
          end
          def factory_git_hub_configuration
            Azure::DataFactory::Mgmt::V2018_06_01::Models::FactoryGitHubConfiguration
          end
          def dataset_debug_resource
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetDebugResource
          end
          def linked_service_debug_resource
            Azure::DataFactory::Mgmt::V2018_06_01::Models::LinkedServiceDebugResource
          end
          def data_flow_resource
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DataFlowResource
          end
          def data_flow_debug_resource
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DataFlowDebugResource
          end
          def managed_private_endpoint_resource
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedPrivateEndpointResource
          end
          def managed_virtual_network_resource
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedVirtualNetworkResource
          end
          def data_flow_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DataFlowSink
          end
          def data_flow_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DataFlowSource
          end
          def mapping_data_flow
            Azure::DataFactory::Mgmt::V2018_06_01::Models::MappingDataFlow
          end
          def share_point_online_list_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SharePointOnlineListLinkedService
          end
          def snowflake_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SnowflakeLinkedService
          end
          def azure_function_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureFunctionLinkedService
          end
          def azure_data_explorer_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDataExplorerLinkedService
          end
          def sap_table_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SapTableLinkedService
          end
          def google_ad_words_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::GoogleAdWordsLinkedService
          end
          def oracle_service_cloud_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::OracleServiceCloudLinkedService
          end
          def dynamics_axlinked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DynamicsAXLinkedService
          end
          def responsys_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ResponsysLinkedService
          end
          def azure_databricks_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDatabricksLinkedService
          end
          def azure_data_lake_analytics_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDataLakeAnalyticsLinkedService
          end
          def hdinsight_on_demand_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::HDInsightOnDemandLinkedService
          end
          def salesforce_marketing_cloud_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SalesforceMarketingCloudLinkedService
          end
          def netezza_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::NetezzaLinkedService
          end
          def vertica_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::VerticaLinkedService
          end
          def zoho_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ZohoLinkedService
          end
          def xero_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::XeroLinkedService
          end
          def square_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SquareLinkedService
          end
          def spark_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SparkLinkedService
          end
          def shopify_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ShopifyLinkedService
          end
          def service_now_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ServiceNowLinkedService
          end
          def quick_books_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::QuickBooksLinkedService
          end
          def presto_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::PrestoLinkedService
          end
          def phoenix_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::PhoenixLinkedService
          end
          def paypal_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::PaypalLinkedService
          end
          def marketo_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::MarketoLinkedService
          end
          def azure_maria_dblinked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMariaDBLinkedService
          end
          def maria_dblinked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::MariaDBLinkedService
          end
          def magento_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::MagentoLinkedService
          end
          def jira_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::JiraLinkedService
          end
          def impala_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ImpalaLinkedService
          end
          def hubspot_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::HubspotLinkedService
          end
          def hive_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::HiveLinkedService
          end
          def hbase_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::HBaseLinkedService
          end
          def greenplum_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::GreenplumLinkedService
          end
          def google_big_query_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::GoogleBigQueryLinkedService
          end
          def eloqua_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::EloquaLinkedService
          end
          def drill_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DrillLinkedService
          end
          def couchbase_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CouchbaseLinkedService
          end
          def concur_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ConcurLinkedService
          end
          def azure_postgre_sql_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzurePostgreSqlLinkedService
          end
          def amazon_mwslinked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AmazonMWSLinkedService
          end
          def sap_hana_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SapHanaLinkedService
          end
          def sap_bwlinked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SapBWLinkedService
          end
          def sftp_server_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SftpServerLinkedService
          end
          def ftp_server_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::FtpServerLinkedService
          end
          def http_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::HttpLinkedService
          end
          def azure_search_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureSearchLinkedService
          end
          def custom_data_source_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CustomDataSourceLinkedService
          end
          def amazon_redshift_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AmazonRedshiftLinkedService
          end
          def amazon_s3_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AmazonS3LinkedService
          end
          def rest_service_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::RestServiceLinkedService
          end
          def sap_open_hub_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SapOpenHubLinkedService
          end
          def sap_ecc_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SapEccLinkedService
          end
          def sap_cloud_for_customer_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SapCloudForCustomerLinkedService
          end
          def salesforce_service_cloud_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SalesforceServiceCloudLinkedService
          end
          def salesforce_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SalesforceLinkedService
          end
          def office365_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::Office365LinkedService
          end
          def azure_blob_fslinked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBlobFSLinkedService
          end
          def azure_data_lake_store_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDataLakeStoreLinkedService
          end
          def cosmos_db_mongo_db_api_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CosmosDbMongoDbApiLinkedService
          end
          def mongo_db_v2_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::MongoDbV2LinkedService
          end
          def mongo_db_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::MongoDbLinkedService
          end
          def cassandra_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CassandraLinkedService
          end
          def web_client_certificate_authentication
            Azure::DataFactory::Mgmt::V2018_06_01::Models::WebClientCertificateAuthentication
          end
          def web_basic_authentication
            Azure::DataFactory::Mgmt::V2018_06_01::Models::WebBasicAuthentication
          end
          def web_anonymous_authentication
            Azure::DataFactory::Mgmt::V2018_06_01::Models::WebAnonymousAuthentication
          end
          def web_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::WebLinkedService
          end
          def odata_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ODataLinkedService
          end
          def hdfs_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::HdfsLinkedService
          end
          def microsoft_access_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::MicrosoftAccessLinkedService
          end
          def informix_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::InformixLinkedService
          end
          def odbc_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::OdbcLinkedService
          end
          def azure_mlservice_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMLServiceLinkedService
          end
          def azure_mllinked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMLLinkedService
          end
          def teradata_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::TeradataLinkedService
          end
          def db2_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::Db2LinkedService
          end
          def sybase_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SybaseLinkedService
          end
          def postgre_sql_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::PostgreSqlLinkedService
          end
          def my_sql_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::MySqlLinkedService
          end
          def azure_my_sql_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMySqlLinkedService
          end
          def oracle_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::OracleLinkedService
          end
          def google_cloud_storage_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::GoogleCloudStorageLinkedService
          end
          def azure_file_storage_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureFileStorageLinkedService
          end
          def file_server_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::FileServerLinkedService
          end
          def hdinsight_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::HDInsightLinkedService
          end
          def common_data_service_for_apps_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CommonDataServiceForAppsLinkedService
          end
          def dynamics_crm_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DynamicsCrmLinkedService
          end
          def dynamics_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DynamicsLinkedService
          end
          def cosmos_db_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CosmosDbLinkedService
          end
          def azure_key_vault_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureKeyVaultLinkedService
          end
          def azure_batch_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBatchLinkedService
          end
          def azure_sql_milinked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureSqlMILinkedService
          end
          def azure_sql_database_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureSqlDatabaseLinkedService
          end
          def sql_server_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SqlServerLinkedService
          end
          def azure_sql_dwlinked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureSqlDWLinkedService
          end
          def azure_table_storage_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureTableStorageLinkedService
          end
          def azure_blob_storage_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBlobStorageLinkedService
          end
          def azure_storage_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureStorageLinkedService
          end
          def share_point_online_list_resource_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SharePointOnlineListResourceDataset
          end
          def snowflake_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SnowflakeDataset
          end
          def google_ad_words_object_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::GoogleAdWordsObjectDataset
          end
          def azure_data_explorer_table_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDataExplorerTableDataset
          end
          def oracle_service_cloud_object_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::OracleServiceCloudObjectDataset
          end
          def dynamics_axresource_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DynamicsAXResourceDataset
          end
          def responsys_object_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ResponsysObjectDataset
          end
          def salesforce_marketing_cloud_object_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SalesforceMarketingCloudObjectDataset
          end
          def vertica_table_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::VerticaTableDataset
          end
          def netezza_table_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::NetezzaTableDataset
          end
          def zoho_object_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ZohoObjectDataset
          end
          def xero_object_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::XeroObjectDataset
          end
          def square_object_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SquareObjectDataset
          end
          def spark_object_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SparkObjectDataset
          end
          def shopify_object_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ShopifyObjectDataset
          end
          def service_now_object_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ServiceNowObjectDataset
          end
          def quick_books_object_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::QuickBooksObjectDataset
          end
          def presto_object_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::PrestoObjectDataset
          end
          def phoenix_object_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::PhoenixObjectDataset
          end
          def paypal_object_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::PaypalObjectDataset
          end
          def marketo_object_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::MarketoObjectDataset
          end
          def azure_maria_dbtable_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMariaDBTableDataset
          end
          def maria_dbtable_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::MariaDBTableDataset
          end
          def magento_object_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::MagentoObjectDataset
          end
          def jira_object_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::JiraObjectDataset
          end
          def impala_object_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ImpalaObjectDataset
          end
          def hubspot_object_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::HubspotObjectDataset
          end
          def hive_object_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::HiveObjectDataset
          end
          def hbase_object_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::HBaseObjectDataset
          end
          def greenplum_table_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::GreenplumTableDataset
          end
          def google_big_query_object_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::GoogleBigQueryObjectDataset
          end
          def eloqua_object_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::EloquaObjectDataset
          end
          def drill_table_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DrillTableDataset
          end
          def couchbase_table_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CouchbaseTableDataset
          end
          def concur_object_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ConcurObjectDataset
          end
          def azure_postgre_sql_table_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzurePostgreSqlTableDataset
          end
          def amazon_mwsobject_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AmazonMWSObjectDataset
          end
          def dataset_tar_gzip_compression
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetTarGZipCompression
          end
          def dataset_tar_compression
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetTarCompression
          end
          def dataset_zip_deflate_compression
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetZipDeflateCompression
          end
          def dataset_deflate_compression
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetDeflateCompression
          end
          def dataset_gzip_compression
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetGZipCompression
          end
          def dataset_bzip2_compression
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetBZip2Compression
          end
          def parquet_format
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ParquetFormat
          end
          def orc_format
            Azure::DataFactory::Mgmt::V2018_06_01::Models::OrcFormat
          end
          def avro_format
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AvroFormat
          end
          def json_format
            Azure::DataFactory::Mgmt::V2018_06_01::Models::JsonFormat
          end
          def text_format
            Azure::DataFactory::Mgmt::V2018_06_01::Models::TextFormat
          end
          def http_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::HttpDataset
          end
          def azure_search_index_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureSearchIndexDataset
          end
          def web_table_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::WebTableDataset
          end
          def sap_table_resource_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SapTableResourceDataset
          end
          def rest_resource_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::RestResourceDataset
          end
          def sql_server_table_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SqlServerTableDataset
          end
          def sap_open_hub_table_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SapOpenHubTableDataset
          end
          def sap_hana_table_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SapHanaTableDataset
          end
          def sap_ecc_resource_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SapEccResourceDataset
          end
          def sap_cloud_for_customer_resource_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SapCloudForCustomerResourceDataset
          end
          def sap_bw_cube_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SapBwCubeDataset
          end
          def sybase_table_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SybaseTableDataset
          end
          def salesforce_service_cloud_object_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SalesforceServiceCloudObjectDataset
          end
          def salesforce_object_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SalesforceObjectDataset
          end
          def microsoft_access_table_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::MicrosoftAccessTableDataset
          end
          def postgre_sql_table_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::PostgreSqlTableDataset
          end
          def my_sql_table_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::MySqlTableDataset
          end
          def odbc_table_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::OdbcTableDataset
          end
          def informix_table_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::InformixTableDataset
          end
          def relational_table_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::RelationalTableDataset
          end
          def db2_table_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::Db2TableDataset
          end
          def amazon_redshift_table_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AmazonRedshiftTableDataset
          end
          def azure_my_sql_table_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMySqlTableDataset
          end
          def teradata_table_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::TeradataTableDataset
          end
          def oracle_table_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::OracleTableDataset
          end
          def odata_resource_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ODataResourceDataset
          end
          def cosmos_db_mongo_db_api_collection_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CosmosDbMongoDbApiCollectionDataset
          end
          def mongo_db_v2_collection_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::MongoDbV2CollectionDataset
          end
          def mongo_db_collection_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::MongoDbCollectionDataset
          end
          def file_share_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::FileShareDataset
          end
          def office365_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::Office365Dataset
          end
          def azure_blob_fsdataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBlobFSDataset
          end
          def azure_data_lake_store_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDataLakeStoreDataset
          end
          def common_data_service_for_apps_entity_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CommonDataServiceForAppsEntityDataset
          end
          def dynamics_crm_entity_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DynamicsCrmEntityDataset
          end
          def dynamics_entity_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DynamicsEntityDataset
          end
          def document_db_collection_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DocumentDbCollectionDataset
          end
          def cosmos_db_sql_api_collection_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CosmosDbSqlApiCollectionDataset
          end
          def custom_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CustomDataset
          end
          def cassandra_table_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CassandraTableDataset
          end
          def azure_sql_dwtable_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureSqlDWTableDataset
          end
          def azure_sql_mitable_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureSqlMITableDataset
          end
          def azure_sql_table_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureSqlTableDataset
          end
          def azure_table_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureTableDataset
          end
          def azure_blob_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBlobDataset
          end
          def hdfs_location
            Azure::DataFactory::Mgmt::V2018_06_01::Models::HdfsLocation
          end
          def http_server_location
            Azure::DataFactory::Mgmt::V2018_06_01::Models::HttpServerLocation
          end
          def sftp_location
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SftpLocation
          end
          def ftp_server_location
            Azure::DataFactory::Mgmt::V2018_06_01::Models::FtpServerLocation
          end
          def google_cloud_storage_location
            Azure::DataFactory::Mgmt::V2018_06_01::Models::GoogleCloudStorageLocation
          end
          def azure_file_storage_location
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureFileStorageLocation
          end
          def file_server_location
            Azure::DataFactory::Mgmt::V2018_06_01::Models::FileServerLocation
          end
          def amazon_s3_location
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AmazonS3Location
          end
          def azure_data_lake_store_location
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDataLakeStoreLocation
          end
          def azure_blob_fslocation
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBlobFSLocation
          end
          def azure_blob_storage_location
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBlobStorageLocation
          end
          def binary_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::BinaryDataset
          end
          def orc_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::OrcDataset
          end
          def xml_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::XmlDataset
          end
          def json_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::JsonDataset
          end
          def delimited_text_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DelimitedTextDataset
          end
          def parquet_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ParquetDataset
          end
          def excel_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ExcelDataset
          end
          def avro_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AvroDataset
          end
          def amazon_s3_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AmazonS3Dataset
          end
          def chaining_trigger
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ChainingTrigger
          end
          def rerun_tumbling_window_trigger
            Azure::DataFactory::Mgmt::V2018_06_01::Models::RerunTumblingWindowTrigger
          end
          def self_dependency_tumbling_window_trigger_reference
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SelfDependencyTumblingWindowTriggerReference
          end
          def trigger_dependency_reference
            Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerDependencyReference
          end
          def tumbling_window_trigger_dependency_reference
            Azure::DataFactory::Mgmt::V2018_06_01::Models::TumblingWindowTriggerDependencyReference
          end
          def tumbling_window_trigger
            Azure::DataFactory::Mgmt::V2018_06_01::Models::TumblingWindowTrigger
          end
          def multiple_pipeline_trigger
            Azure::DataFactory::Mgmt::V2018_06_01::Models::MultiplePipelineTrigger
          end
          def blob_events_trigger
            Azure::DataFactory::Mgmt::V2018_06_01::Models::BlobEventsTrigger
          end
          def blob_trigger
            Azure::DataFactory::Mgmt::V2018_06_01::Models::BlobTrigger
          end
          def schedule_trigger
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ScheduleTrigger
          end
          def execution_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ExecutionActivity
          end
          def execute_data_flow_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ExecuteDataFlowActivity
          end
          def azure_function_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureFunctionActivity
          end
          def databricks_spark_python_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DatabricksSparkPythonActivity
          end
          def databricks_spark_jar_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DatabricksSparkJarActivity
          end
          def databricks_notebook_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DatabricksNotebookActivity
          end
          def data_lake_analytics_usqlactivity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DataLakeAnalyticsUSQLActivity
          end
          def azure_mlexecute_pipeline_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMLExecutePipelineActivity
          end
          def azure_mlupdate_resource_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMLUpdateResourceActivity
          end
          def azure_mlbatch_execution_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMLBatchExecutionActivity
          end
          def tar_gzip_read_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::TarGZipReadSettings
          end
          def tar_read_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::TarReadSettings
          end
          def zip_deflate_read_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ZipDeflateReadSettings
          end
          def binary_read_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::BinaryReadSettings
          end
          def xml_read_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::XmlReadSettings
          end
          def json_read_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::JsonReadSettings
          end
          def delimited_text_read_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DelimitedTextReadSettings
          end
          def hdfs_read_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::HdfsReadSettings
          end
          def http_read_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::HttpReadSettings
          end
          def sftp_read_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SftpReadSettings
          end
          def ftp_read_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::FtpReadSettings
          end
          def google_cloud_storage_read_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::GoogleCloudStorageReadSettings
          end
          def azure_file_storage_read_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureFileStorageReadSettings
          end
          def file_server_read_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::FileServerReadSettings
          end
          def amazon_s3_read_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AmazonS3ReadSettings
          end
          def azure_data_lake_store_read_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDataLakeStoreReadSettings
          end
          def azure_blob_fsread_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBlobFSReadSettings
          end
          def azure_blob_storage_read_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBlobStorageReadSettings
          end
          def get_metadata_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::GetMetadataActivity
          end
          def web_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::WebActivity
          end
          def share_point_online_list_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SharePointOnlineListSource
          end
          def snowflake_export_copy_command
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SnowflakeExportCopyCommand
          end
          def snowflake_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SnowflakeSource
          end
          def http_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::HttpSource
          end
          def azure_blob_fssource
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBlobFSSource
          end
          def azure_data_lake_store_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDataLakeStoreSource
          end
          def office365_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::Office365Source
          end
          def cosmos_db_mongo_db_api_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CosmosDbMongoDbApiSource
          end
          def mongo_db_v2_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::MongoDbV2Source
          end
          def mongo_db_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::MongoDbSource
          end
          def web_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::WebSource
          end
          def oracle_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::OracleSource
          end
          def azure_data_explorer_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDataExplorerSource
          end
          def hdfs_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::HdfsSource
          end
          def file_system_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::FileSystemSource
          end
          def rest_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::RestSource
          end
          def salesforce_service_cloud_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SalesforceServiceCloudSource
          end
          def odata_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ODataSource
          end
          def microsoft_access_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::MicrosoftAccessSource
          end
          def relational_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::RelationalSource
          end
          def common_data_service_for_apps_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CommonDataServiceForAppsSource
          end
          def dynamics_crm_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DynamicsCrmSource
          end
          def dynamics_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DynamicsSource
          end
          def cosmos_db_sql_api_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CosmosDbSqlApiSource
          end
          def document_db_collection_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DocumentDbCollectionSource
          end
          def blob_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::BlobSource
          end
          def tabular_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::TabularSource
          end
          def amazon_redshift_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AmazonRedshiftSource
          end
          def google_ad_words_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::GoogleAdWordsSource
          end
          def oracle_service_cloud_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::OracleServiceCloudSource
          end
          def dynamics_axsource
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DynamicsAXSource
          end
          def responsys_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ResponsysSource
          end
          def salesforce_marketing_cloud_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SalesforceMarketingCloudSource
          end
          def vertica_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::VerticaSource
          end
          def netezza_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::NetezzaSource
          end
          def zoho_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ZohoSource
          end
          def xero_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::XeroSource
          end
          def square_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SquareSource
          end
          def spark_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SparkSource
          end
          def shopify_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ShopifySource
          end
          def service_now_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ServiceNowSource
          end
          def quick_books_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::QuickBooksSource
          end
          def presto_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::PrestoSource
          end
          def phoenix_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::PhoenixSource
          end
          def paypal_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::PaypalSource
          end
          def marketo_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::MarketoSource
          end
          def azure_maria_dbsource
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMariaDBSource
          end
          def maria_dbsource
            Azure::DataFactory::Mgmt::V2018_06_01::Models::MariaDBSource
          end
          def magento_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::MagentoSource
          end
          def jira_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::JiraSource
          end
          def impala_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ImpalaSource
          end
          def hubspot_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::HubspotSource
          end
          def hive_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::HiveSource
          end
          def hbase_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::HBaseSource
          end
          def greenplum_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::GreenplumSource
          end
          def google_big_query_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::GoogleBigQuerySource
          end
          def eloqua_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::EloquaSource
          end
          def drill_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DrillSource
          end
          def couchbase_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CouchbaseSource
          end
          def concur_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ConcurSource
          end
          def azure_postgre_sql_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzurePostgreSqlSource
          end
          def amazon_mwssource
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AmazonMWSSource
          end
          def cassandra_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CassandraSource
          end
          def teradata_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::TeradataSource
          end
          def azure_my_sql_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMySqlSource
          end
          def sql_dwsource
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SqlDWSource
          end
          def sql_misource
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SqlMISource
          end
          def azure_sql_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureSqlSource
          end
          def sql_server_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SqlServerSource
          end
          def sql_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SqlSource
          end
          def sap_table_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SapTableSource
          end
          def sap_open_hub_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SapOpenHubSource
          end
          def sap_hana_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SapHanaSource
          end
          def sap_ecc_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SapEccSource
          end
          def sap_cloud_for_customer_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SapCloudForCustomerSource
          end
          def salesforce_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SalesforceSource
          end
          def sap_bw_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SapBwSource
          end
          def sybase_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SybaseSource
          end
          def postgre_sql_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::PostgreSqlSource
          end
          def my_sql_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::MySqlSource
          end
          def odbc_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::OdbcSource
          end
          def db2_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::Db2Source
          end
          def informix_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::InformixSource
          end
          def azure_table_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureTableSource
          end
          def binary_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::BinarySource
          end
          def orc_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::OrcSource
          end
          def xml_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::XmlSource
          end
          def json_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::JsonSource
          end
          def delimited_text_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DelimitedTextSource
          end
          def parquet_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ParquetSource
          end
          def excel_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ExcelSource
          end
          def avro_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AvroSource
          end
          def lookup_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::LookupActivity
          end
          def azure_data_explorer_command_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDataExplorerCommandActivity
          end
          def delete_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DeleteActivity
          end
          def sql_server_stored_procedure_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SqlServerStoredProcedureActivity
          end
          def custom_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CustomActivity
          end
          def execute_ssispackage_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ExecuteSSISPackageActivity
          end
          def hdinsight_spark_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::HDInsightSparkActivity
          end
          def hdinsight_streaming_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::HDInsightStreamingActivity
          end
          def hdinsight_map_reduce_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::HDInsightMapReduceActivity
          end
          def hdinsight_pig_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::HDInsightPigActivity
          end
          def hdinsight_hive_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::HDInsightHiveActivity
          end
          def cosmos_db_mongo_db_api_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CosmosDbMongoDbApiSink
          end
          def salesforce_service_cloud_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SalesforceServiceCloudSink
          end
          def salesforce_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SalesforceSink
          end
          def azure_data_explorer_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDataExplorerSink
          end
          def common_data_service_for_apps_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CommonDataServiceForAppsSink
          end
          def dynamics_crm_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DynamicsCrmSink
          end
          def dynamics_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DynamicsSink
          end
          def microsoft_access_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::MicrosoftAccessSink
          end
          def informix_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::InformixSink
          end
          def odbc_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::OdbcSink
          end
          def azure_search_index_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureSearchIndexSink
          end
          def azure_blob_fssink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBlobFSSink
          end
          def azure_data_lake_store_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDataLakeStoreSink
          end
          def oracle_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::OracleSink
          end
          def snowflake_import_copy_command
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SnowflakeImportCopyCommand
          end
          def snowflake_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SnowflakeSink
          end
          def sql_dwsink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SqlDWSink
          end
          def sql_misink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SqlMISink
          end
          def azure_sql_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureSqlSink
          end
          def sql_server_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SqlServerSink
          end
          def sql_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SqlSink
          end
          def cosmos_db_sql_api_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CosmosDbSqlApiSink
          end
          def document_db_collection_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DocumentDbCollectionSink
          end
          def file_system_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::FileSystemSink
          end
          def blob_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::BlobSink
          end
          def azure_file_storage_write_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureFileStorageWriteSettings
          end
          def file_server_write_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::FileServerWriteSettings
          end
          def azure_data_lake_store_write_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDataLakeStoreWriteSettings
          end
          def azure_blob_fswrite_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBlobFSWriteSettings
          end
          def azure_blob_storage_write_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBlobStorageWriteSettings
          end
          def sftp_write_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SftpWriteSettings
          end
          def binary_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::BinarySink
          end
          def parquet_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ParquetSink
          end
          def json_write_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::JsonWriteSettings
          end
          def delimited_text_write_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DelimitedTextWriteSettings
          end
          def avro_write_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AvroWriteSettings
          end
          def avro_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AvroSink
          end
          def azure_table_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureTableSink
          end
          def azure_queue_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureQueueSink
          end
          def sap_cloud_for_customer_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SapCloudForCustomerSink
          end
          def azure_my_sql_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMySqlSink
          end
          def azure_postgre_sql_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzurePostgreSqlSink
          end
          def rest_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::RestSink
          end
          def orc_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::OrcSink
          end
          def json_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::JsonSink
          end
          def delimited_text_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DelimitedTextSink
          end
          def copy_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CopyActivity
          end
          def control_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ControlActivity
          end
          def web_hook_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::WebHookActivity
          end
          def append_variable_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AppendVariableActivity
          end
          def set_variable_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SetVariableActivity
          end
          def filter_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::FilterActivity
          end
          def validation_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ValidationActivity
          end
          def until_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::UntilActivity
          end
          def wait_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::WaitActivity
          end
          def for_each_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ForEachActivity
          end
          def switch_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SwitchActivity
          end
          def if_condition_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IfConditionActivity
          end
          def execute_pipeline_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ExecutePipelineActivity
          end
          def self_hosted_integration_runtime_status
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SelfHostedIntegrationRuntimeStatus
          end
          def managed_integration_runtime_status
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedIntegrationRuntimeStatus
          end
          def linked_integration_runtime_rbac_authorization
            Azure::DataFactory::Mgmt::V2018_06_01::Models::LinkedIntegrationRuntimeRbacAuthorization
          end
          def linked_integration_runtime_key_authorization
            Azure::DataFactory::Mgmt::V2018_06_01::Models::LinkedIntegrationRuntimeKeyAuthorization
          end
          def self_hosted_integration_runtime
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SelfHostedIntegrationRuntime
          end
          def az_power_shell_setup
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzPowerShellSetup
          end
          def component_setup
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ComponentSetup
          end
          def environment_variable_setup
            Azure::DataFactory::Mgmt::V2018_06_01::Models::EnvironmentVariableSetup
          end
          def cmdkey_setup
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CmdkeySetup
          end
          def managed_integration_runtime
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedIntegrationRuntime
          end
          def ssis_environment
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisEnvironment
          end
          def ssis_package
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisPackage
          end
          def ssis_project
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisProject
          end
          def ssis_folder
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisFolder
          end
          def global_parameter_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::GlobalParameterType
          end
          def integration_runtime_state
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeState
          end
          def integration_runtime_auto_update
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeAutoUpdate
          end
          def parameter_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ParameterType
          end
          def dependency_condition
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DependencyCondition
          end
          def variable_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::VariableType
          end
          def trigger_runtime_state
            Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerRuntimeState
          end
          def event_subscription_status
            Azure::DataFactory::Mgmt::V2018_06_01::Models::EventSubscriptionStatus
          end
          def run_query_filter_operand
            Azure::DataFactory::Mgmt::V2018_06_01::Models::RunQueryFilterOperand
          end
          def run_query_filter_operator
            Azure::DataFactory::Mgmt::V2018_06_01::Models::RunQueryFilterOperator
          end
          def run_query_order_by_field
            Azure::DataFactory::Mgmt::V2018_06_01::Models::RunQueryOrderByField
          end
          def run_query_order
            Azure::DataFactory::Mgmt::V2018_06_01::Models::RunQueryOrder
          end
          def trigger_run_status
            Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerRunStatus
          end
          def data_flow_debug_command_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DataFlowDebugCommandType
          end
          def google_ad_words_authentication_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::GoogleAdWordsAuthenticationType
          end
          def spark_server_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SparkServerType
          end
          def spark_thrift_transport_protocol
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SparkThriftTransportProtocol
          end
          def spark_authentication_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SparkAuthenticationType
          end
          def service_now_authentication_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ServiceNowAuthenticationType
          end
          def presto_authentication_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::PrestoAuthenticationType
          end
          def phoenix_authentication_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::PhoenixAuthenticationType
          end
          def impala_authentication_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ImpalaAuthenticationType
          end
          def hive_server_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::HiveServerType
          end
          def hive_thrift_transport_protocol
            Azure::DataFactory::Mgmt::V2018_06_01::Models::HiveThriftTransportProtocol
          end
          def hive_authentication_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::HiveAuthenticationType
          end
          def hbase_authentication_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::HBaseAuthenticationType
          end
          def google_big_query_authentication_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::GoogleBigQueryAuthenticationType
          end
          def sap_hana_authentication_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SapHanaAuthenticationType
          end
          def sftp_authentication_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SftpAuthenticationType
          end
          def ftp_authentication_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::FtpAuthenticationType
          end
          def http_authentication_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::HttpAuthenticationType
          end
          def rest_service_authentication_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::RestServiceAuthenticationType
          end
          def mongo_db_authentication_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::MongoDbAuthenticationType
          end
          def odata_authentication_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ODataAuthenticationType
          end
          def odata_aad_service_principal_credential_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ODataAadServicePrincipalCredentialType
          end
          def teradata_authentication_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::TeradataAuthenticationType
          end
          def db2_authentication_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::Db2AuthenticationType
          end
          def sybase_authentication_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SybaseAuthenticationType
          end
          def dynamics_deployment_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DynamicsDeploymentType
          end
          def dynamics_authentication_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DynamicsAuthenticationType
          end
          def orc_compression_codec
            Azure::DataFactory::Mgmt::V2018_06_01::Models::OrcCompressionCodec
          end
          def avro_compression_codec
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AvroCompressionCodec
          end
          def tumbling_window_frequency
            Azure::DataFactory::Mgmt::V2018_06_01::Models::TumblingWindowFrequency
          end
          def blob_event_types
            Azure::DataFactory::Mgmt::V2018_06_01::Models::BlobEventTypes
          end
          def day_of_week
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DayOfWeek
          end
          def days_of_week
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DaysOfWeek
          end
          def recurrence_frequency
            Azure::DataFactory::Mgmt::V2018_06_01::Models::RecurrenceFrequency
          end
          def data_flow_compute_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DataFlowComputeType
          end
          def azure_function_activity_method
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureFunctionActivityMethod
          end
          def web_activity_method
            Azure::DataFactory::Mgmt::V2018_06_01::Models::WebActivityMethod
          end
          def oracle_partition_option
            Azure::DataFactory::Mgmt::V2018_06_01::Models::OraclePartitionOption
          end
          def salesforce_source_read_behavior
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SalesforceSourceReadBehavior
          end
          def netezza_partition_option
            Azure::DataFactory::Mgmt::V2018_06_01::Models::NetezzaPartitionOption
          end
          def cassandra_source_read_consistency_levels
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CassandraSourceReadConsistencyLevels
          end
          def teradata_partition_option
            Azure::DataFactory::Mgmt::V2018_06_01::Models::TeradataPartitionOption
          end
          def sql_partition_option
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SqlPartitionOption
          end
          def stored_procedure_parameter_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::StoredProcedureParameterType
          end
          def sap_table_partition_option
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SapTablePartitionOption
          end
          def sap_hana_partition_option
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SapHanaPartitionOption
          end
          def ssis_package_location_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisPackageLocationType
          end
          def hdinsight_activity_debug_info_option
            Azure::DataFactory::Mgmt::V2018_06_01::Models::HDInsightActivityDebugInfoOption
          end
          def salesforce_sink_write_behavior
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SalesforceSinkWriteBehavior
          end
          def azure_search_index_write_behavior_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureSearchIndexWriteBehaviorType
          end
          def polybase_settings_reject_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::PolybaseSettingsRejectType
          end
          def json_write_file_pattern
            Azure::DataFactory::Mgmt::V2018_06_01::Models::JsonWriteFilePattern
          end
          def sap_cloud_for_customer_sink_write_behavior
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SapCloudForCustomerSinkWriteBehavior
          end
          def web_hook_activity_method
            Azure::DataFactory::Mgmt::V2018_06_01::Models::WebHookActivityMethod
          end
          def integration_runtime_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeType
          end
          def self_hosted_integration_runtime_node_status
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SelfHostedIntegrationRuntimeNodeStatus
          end
          def integration_runtime_update_result
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeUpdateResult
          end
          def integration_runtime_internal_channel_encryption_mode
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeInternalChannelEncryptionMode
          end
          def managed_integration_runtime_node_status
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedIntegrationRuntimeNodeStatus
          end
          def integration_runtime_entity_reference_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeEntityReferenceType
          end
          def integration_runtime_ssis_catalog_pricing_tier
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeSsisCatalogPricingTier
          end
          def integration_runtime_license_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeLicenseType
          end
          def integration_runtime_edition
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeEdition
          end
          def ssis_object_metadata_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisObjectMetadataType
          end
          def integration_runtime_auth_key_name
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeAuthKeyName
          end
        end
      end
    end
  end
end
