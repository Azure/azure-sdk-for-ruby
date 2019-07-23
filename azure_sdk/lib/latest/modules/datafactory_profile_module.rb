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
      RerunTriggers = Azure::DataFactory::Mgmt::V2018_06_01::RerunTriggers
      TriggerRuns = Azure::DataFactory::Mgmt::V2018_06_01::TriggerRuns

      module Models
        OperationMetricSpecification = Azure::DataFactory::Mgmt::V2018_06_01::Models::OperationMetricSpecification
        OperationServiceSpecification = Azure::DataFactory::Mgmt::V2018_06_01::Models::OperationServiceSpecification
        SubResource = Azure::DataFactory::Mgmt::V2018_06_01::Models::SubResource
        Operation = Azure::DataFactory::Mgmt::V2018_06_01::Models::Operation
        RerunTumblingWindowTriggerActionParameters = Azure::DataFactory::Mgmt::V2018_06_01::Models::RerunTumblingWindowTriggerActionParameters
        DatasetLocation = Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetLocation
        StoredProcedureParameter = Azure::DataFactory::Mgmt::V2018_06_01::Models::StoredProcedureParameter
        CopySource = Azure::DataFactory::Mgmt::V2018_06_01::Models::CopySource
        FactoryIdentity = Azure::DataFactory::Mgmt::V2018_06_01::Models::FactoryIdentity
        RerunTriggerListResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::RerunTriggerListResponse
        ActivityPolicy = Azure::DataFactory::Mgmt::V2018_06_01::Models::ActivityPolicy
        OperationDisplay = Azure::DataFactory::Mgmt::V2018_06_01::Models::OperationDisplay
        IntegrationRuntime = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntime
        OperationLogSpecification = Azure::DataFactory::Mgmt::V2018_06_01::Models::OperationLogSpecification
        IntegrationRuntimeListResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeListResponse
        OperationMetricAvailability = Azure::DataFactory::Mgmt::V2018_06_01::Models::OperationMetricAvailability
        IntegrationRuntimeStatus = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeStatus
        OperationMetricDimension = Azure::DataFactory::Mgmt::V2018_06_01::Models::OperationMetricDimension
        IntegrationRuntimeStatusListResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeStatusListResponse
        Resource = Azure::DataFactory::Mgmt::V2018_06_01::Models::Resource
        UpdateIntegrationRuntimeNodeRequest = Azure::DataFactory::Mgmt::V2018_06_01::Models::UpdateIntegrationRuntimeNodeRequest
        Expression = Azure::DataFactory::Mgmt::V2018_06_01::Models::Expression
        CreateLinkedIntegrationRuntimeRequest = Azure::DataFactory::Mgmt::V2018_06_01::Models::CreateLinkedIntegrationRuntimeRequest
        LogStorageSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::LogStorageSettings
        LinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::LinkedService
        OperationListResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::OperationListResponse
        LinkedServiceListResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::LinkedServiceListResponse
        GetSsisObjectMetadataRequest = Azure::DataFactory::Mgmt::V2018_06_01::Models::GetSsisObjectMetadataRequest
        Dataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::Dataset
        SsisObjectMetadataStatusResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisObjectMetadataStatusResponse
        DatasetListResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetListResponse
        ExposureControlRequest = Azure::DataFactory::Mgmt::V2018_06_01::Models::ExposureControlRequest
        UserProperty = Azure::DataFactory::Mgmt::V2018_06_01::Models::UserProperty
        ExposureControlResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::ExposureControlResponse
        VariableSpecification = Azure::DataFactory::Mgmt::V2018_06_01::Models::VariableSpecification
        CustomActivityReferenceObject = Azure::DataFactory::Mgmt::V2018_06_01::Models::CustomActivityReferenceObject
        WebActivityAuthentication = Azure::DataFactory::Mgmt::V2018_06_01::Models::WebActivityAuthentication
        TriggerReference = Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerReference
        Trigger = Azure::DataFactory::Mgmt::V2018_06_01::Models::Trigger
        SSISPropertyOverride = Azure::DataFactory::Mgmt::V2018_06_01::Models::SSISPropertyOverride
        TriggerListResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerListResponse
        SSISExecutionParameter = Azure::DataFactory::Mgmt::V2018_06_01::Models::SSISExecutionParameter
        DependencyReference = Azure::DataFactory::Mgmt::V2018_06_01::Models::DependencyReference
        StoreReadSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::StoreReadSettings
        RetryPolicy = Azure::DataFactory::Mgmt::V2018_06_01::Models::RetryPolicy
        GitHubAccessTokenRequest = Azure::DataFactory::Mgmt::V2018_06_01::Models::GitHubAccessTokenRequest
        SSISExecutionCredential = Azure::DataFactory::Mgmt::V2018_06_01::Models::SSISExecutionCredential
        UserAccessPolicy = Azure::DataFactory::Mgmt::V2018_06_01::Models::UserAccessPolicy
        SSISPackageLocation = Azure::DataFactory::Mgmt::V2018_06_01::Models::SSISPackageLocation
        PipelineReference = Azure::DataFactory::Mgmt::V2018_06_01::Models::PipelineReference
        RedirectIncompatibleRowSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::RedirectIncompatibleRowSettings
        FactoryUpdateParameters = Azure::DataFactory::Mgmt::V2018_06_01::Models::FactoryUpdateParameters
        RecurrenceScheduleOccurrence = Azure::DataFactory::Mgmt::V2018_06_01::Models::RecurrenceScheduleOccurrence
        RunQueryFilter = Azure::DataFactory::Mgmt::V2018_06_01::Models::RunQueryFilter
        RecurrenceSchedule = Azure::DataFactory::Mgmt::V2018_06_01::Models::RecurrenceSchedule
        RunFilterParameters = Azure::DataFactory::Mgmt::V2018_06_01::Models::RunFilterParameters
        ScheduleTriggerRecurrence = Azure::DataFactory::Mgmt::V2018_06_01::Models::ScheduleTriggerRecurrence
        PipelineRun = Azure::DataFactory::Mgmt::V2018_06_01::Models::PipelineRun
        StagingSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::StagingSettings
        ActivityRun = Azure::DataFactory::Mgmt::V2018_06_01::Models::ActivityRun
        PolybaseSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::PolybaseSettings
        TriggerRun = Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerRun
        DatasetCompression = Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetCompression
        LinkedServiceReference = Azure::DataFactory::Mgmt::V2018_06_01::Models::LinkedServiceReference
        DatasetStorageFormat = Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetStorageFormat
        FactoryRepoConfiguration = Azure::DataFactory::Mgmt::V2018_06_01::Models::FactoryRepoConfiguration
        IntegrationRuntimeConnectionInfo = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeConnectionInfo
        DistcpSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::DistcpSettings
        IntegrationRuntimeRegenerateKeyParameters = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeRegenerateKeyParameters
        IntegrationRuntimeStatusResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeStatusResponse
        IntegrationRuntimeAuthKeys = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeAuthKeys
        LinkedIntegrationRuntimeRequest = Azure::DataFactory::Mgmt::V2018_06_01::Models::LinkedIntegrationRuntimeRequest
        IntegrationRuntimeMonitoringData = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeMonitoringData
        MongoDbCursorMethodsProperties = Azure::DataFactory::Mgmt::V2018_06_01::Models::MongoDbCursorMethodsProperties
        IntegrationRuntimeNodeMonitoringData = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeNodeMonitoringData
        RedshiftUnloadSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::RedshiftUnloadSettings
        SsisObjectMetadataListResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisObjectMetadataListResponse
        Activity = Azure::DataFactory::Mgmt::V2018_06_01::Models::Activity
        SsisObjectMetadata = Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisObjectMetadata
        PipelineListResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::PipelineListResponse
        ScriptAction = Azure::DataFactory::Mgmt::V2018_06_01::Models::ScriptAction
        CreateRunResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::CreateRunResponse
        SsisEnvironmentReference = Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisEnvironmentReference
        FactoryRepoUpdate = Azure::DataFactory::Mgmt::V2018_06_01::Models::FactoryRepoUpdate
        SsisParameter = Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisParameter
        AccessPolicyResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::AccessPolicyResponse
        SsisVariable = Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisVariable
        DatasetReference = Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetReference
        IntegrationRuntimeNodeIpAddress = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeNodeIpAddress
        PipelineRunInvokedBy = Azure::DataFactory::Mgmt::V2018_06_01::Models::PipelineRunInvokedBy
        IntegrationRuntimeComputeProperties = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeComputeProperties
        ActivityRunsQueryResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::ActivityRunsQueryResponse
        IntegrationRuntimeVNetProperties = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeVNetProperties
        SecretBase = Azure::DataFactory::Mgmt::V2018_06_01::Models::SecretBase
        IntegrationRuntimeSsisProperties = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeSsisProperties
        IntegrationRuntimeReference = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeReference
        IntegrationRuntimeSsisCatalogInfo = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeSsisCatalogInfo
        ParameterSpecification = Azure::DataFactory::Mgmt::V2018_06_01::Models::ParameterSpecification
        IntegrationRuntimeCustomSetupScriptProperties = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeCustomSetupScriptProperties
        ActivityDependency = Azure::DataFactory::Mgmt::V2018_06_01::Models::ActivityDependency
        IntegrationRuntimeDataProxyProperties = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeDataProxyProperties
        AzureMLWebServiceFile = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMLWebServiceFile
        EntityReference = Azure::DataFactory::Mgmt::V2018_06_01::Models::EntityReference
        GitHubAccessTokenResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::GitHubAccessTokenResponse
        LinkedIntegrationRuntimeType = Azure::DataFactory::Mgmt::V2018_06_01::Models::LinkedIntegrationRuntimeType
        RunQueryOrderBy = Azure::DataFactory::Mgmt::V2018_06_01::Models::RunQueryOrderBy
        ManagedIntegrationRuntimeNode = Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedIntegrationRuntimeNode
        TriggerRunsQueryResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerRunsQueryResponse
        ManagedIntegrationRuntimeError = Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedIntegrationRuntimeError
        UpdateIntegrationRuntimeRequest = Azure::DataFactory::Mgmt::V2018_06_01::Models::UpdateIntegrationRuntimeRequest
        ManagedIntegrationRuntimeOperationResult = Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedIntegrationRuntimeOperationResult
        PipelineFolder = Azure::DataFactory::Mgmt::V2018_06_01::Models::PipelineFolder
        SelfHostedIntegrationRuntimeNode = Azure::DataFactory::Mgmt::V2018_06_01::Models::SelfHostedIntegrationRuntimeNode
        TriggerPipelineReference = Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerPipelineReference
        LinkedIntegrationRuntime = Azure::DataFactory::Mgmt::V2018_06_01::Models::LinkedIntegrationRuntime
        FactoryListResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::FactoryListResponse
        CopySink = Azure::DataFactory::Mgmt::V2018_06_01::Models::CopySink
        FormatReadSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::FormatReadSettings
        FormatWriteSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::FormatWriteSettings
        DatasetFolder = Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetFolder
        StoreWriteSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::StoreWriteSettings
        PipelineRunsQueryResponse = Azure::DataFactory::Mgmt::V2018_06_01::Models::PipelineRunsQueryResponse
        WebLinkedServiceTypeProperties = Azure::DataFactory::Mgmt::V2018_06_01::Models::WebLinkedServiceTypeProperties
        SecureString = Azure::DataFactory::Mgmt::V2018_06_01::Models::SecureString
        AzureKeyVaultSecretReference = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureKeyVaultSecretReference
        Factory = Azure::DataFactory::Mgmt::V2018_06_01::Models::Factory
        IntegrationRuntimeResource = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeResource
        LinkedServiceResource = Azure::DataFactory::Mgmt::V2018_06_01::Models::LinkedServiceResource
        DatasetResource = Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetResource
        PipelineResource = Azure::DataFactory::Mgmt::V2018_06_01::Models::PipelineResource
        TriggerResource = Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerResource
        FactoryVSTSConfiguration = Azure::DataFactory::Mgmt::V2018_06_01::Models::FactoryVSTSConfiguration
        FactoryGitHubConfiguration = Azure::DataFactory::Mgmt::V2018_06_01::Models::FactoryGitHubConfiguration
        RerunTumblingWindowTrigger = Azure::DataFactory::Mgmt::V2018_06_01::Models::RerunTumblingWindowTrigger
        RerunTriggerResource = Azure::DataFactory::Mgmt::V2018_06_01::Models::RerunTriggerResource
        SelfDependencyTumblingWindowTriggerReference = Azure::DataFactory::Mgmt::V2018_06_01::Models::SelfDependencyTumblingWindowTriggerReference
        TriggerDependencyReference = Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerDependencyReference
        TumblingWindowTriggerDependencyReference = Azure::DataFactory::Mgmt::V2018_06_01::Models::TumblingWindowTriggerDependencyReference
        TumblingWindowTrigger = Azure::DataFactory::Mgmt::V2018_06_01::Models::TumblingWindowTrigger
        MultiplePipelineTrigger = Azure::DataFactory::Mgmt::V2018_06_01::Models::MultiplePipelineTrigger
        BlobEventsTrigger = Azure::DataFactory::Mgmt::V2018_06_01::Models::BlobEventsTrigger
        BlobTrigger = Azure::DataFactory::Mgmt::V2018_06_01::Models::BlobTrigger
        ScheduleTrigger = Azure::DataFactory::Mgmt::V2018_06_01::Models::ScheduleTrigger
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
        OdbcLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::OdbcLinkedService
        AzureMLLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMLLinkedService
        TeradataLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::TeradataLinkedService
        Db2LinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::Db2LinkedService
        SybaseLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::SybaseLinkedService
        PostgreSqlLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::PostgreSqlLinkedService
        MySqlLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::MySqlLinkedService
        AzureMySqlLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMySqlLinkedService
        OracleLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::OracleLinkedService
        FileServerLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::FileServerLinkedService
        HDInsightLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::HDInsightLinkedService
        DynamicsLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::DynamicsLinkedService
        CosmosDbLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::CosmosDbLinkedService
        AzureKeyVaultLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureKeyVaultLinkedService
        AzureBatchLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBatchLinkedService
        AzureSqlDatabaseLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureSqlDatabaseLinkedService
        SqlServerLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::SqlServerLinkedService
        AzureSqlDWLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureSqlDWLinkedService
        AzureTableStorageLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureTableStorageLinkedService
        AzureBlobStorageLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBlobStorageLinkedService
        AzureStorageLinkedService = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureStorageLinkedService
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
        SalesforceObjectDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::SalesforceObjectDataset
        RelationalTableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::RelationalTableDataset
        AzureMySqlTableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMySqlTableDataset
        OracleTableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::OracleTableDataset
        ODataResourceDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::ODataResourceDataset
        CosmosDbMongoDbApiCollectionDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::CosmosDbMongoDbApiCollectionDataset
        MongoDbV2CollectionDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::MongoDbV2CollectionDataset
        MongoDbCollectionDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::MongoDbCollectionDataset
        FileShareDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::FileShareDataset
        Office365Dataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::Office365Dataset
        AzureBlobFSDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBlobFSDataset
        AzureDataLakeStoreDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDataLakeStoreDataset
        DynamicsEntityDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::DynamicsEntityDataset
        DocumentDbCollectionDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::DocumentDbCollectionDataset
        CustomDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::CustomDataset
        CassandraTableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::CassandraTableDataset
        AzureSqlDWTableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureSqlDWTableDataset
        AzureSqlTableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureSqlTableDataset
        AzureTableDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureTableDataset
        AzureBlobDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBlobDataset
        HdfsLocation = Azure::DataFactory::Mgmt::V2018_06_01::Models::HdfsLocation
        HttpServerLocation = Azure::DataFactory::Mgmt::V2018_06_01::Models::HttpServerLocation
        SftpLocation = Azure::DataFactory::Mgmt::V2018_06_01::Models::SftpLocation
        FtpServerLocation = Azure::DataFactory::Mgmt::V2018_06_01::Models::FtpServerLocation
        FileServerLocation = Azure::DataFactory::Mgmt::V2018_06_01::Models::FileServerLocation
        AmazonS3Location = Azure::DataFactory::Mgmt::V2018_06_01::Models::AmazonS3Location
        AzureDataLakeStoreLocation = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDataLakeStoreLocation
        AzureBlobFSLocation = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBlobFSLocation
        AzureBlobStorageLocation = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBlobStorageLocation
        DelimitedTextDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::DelimitedTextDataset
        ParquetDataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::ParquetDataset
        AmazonS3Dataset = Azure::DataFactory::Mgmt::V2018_06_01::Models::AmazonS3Dataset
        AzureFunctionActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureFunctionActivity
        DatabricksSparkPythonActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::DatabricksSparkPythonActivity
        DatabricksSparkJarActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::DatabricksSparkJarActivity
        DatabricksNotebookActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::DatabricksNotebookActivity
        DataLakeAnalyticsUSQLActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::DataLakeAnalyticsUSQLActivity
        AzureMLUpdateResourceActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMLUpdateResourceActivity
        AzureMLBatchExecutionActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMLBatchExecutionActivity
        GetMetadataActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::GetMetadataActivity
        WebActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::WebActivity
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
        HttpSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::HttpSource
        AzureBlobFSSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBlobFSSource
        AzureDataLakeStoreSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDataLakeStoreSource
        Office365Source = Azure::DataFactory::Mgmt::V2018_06_01::Models::Office365Source
        CosmosDbMongoDbApiSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::CosmosDbMongoDbApiSource
        MongoDbV2Source = Azure::DataFactory::Mgmt::V2018_06_01::Models::MongoDbV2Source
        MongoDbSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::MongoDbSource
        CassandraSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::CassandraSource
        WebSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::WebSource
        OracleSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::OracleSource
        AzureDataExplorerSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDataExplorerSource
        AzureMySqlSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMySqlSource
        HdfsSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::HdfsSource
        FileSystemSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::FileSystemSource
        SqlDWSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::SqlDWSource
        AzureSqlSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureSqlSource
        SqlServerSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::SqlServerSource
        SqlSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::SqlSource
        RestSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::RestSource
        SapTableSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::SapTableSource
        SapOpenHubSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::SapOpenHubSource
        SapHanaSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::SapHanaSource
        SapEccSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::SapEccSource
        SapCloudForCustomerSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::SapCloudForCustomerSource
        SalesforceSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::SalesforceSource
        RelationalSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::RelationalSource
        DynamicsSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::DynamicsSource
        DocumentDbCollectionSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::DocumentDbCollectionSource
        BlobSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::BlobSource
        AzureTableSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureTableSource
        DelimitedTextReadSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::DelimitedTextReadSettings
        HdfsReadSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::HdfsReadSettings
        HttpReadSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::HttpReadSettings
        SftpReadSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::SftpReadSettings
        FtpReadSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::FtpReadSettings
        FileServerReadSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::FileServerReadSettings
        AmazonS3ReadSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::AmazonS3ReadSettings
        AzureDataLakeStoreReadSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDataLakeStoreReadSettings
        AzureBlobFSReadSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBlobFSReadSettings
        AzureBlobStorageReadSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBlobStorageReadSettings
        DelimitedTextSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::DelimitedTextSource
        ParquetSource = Azure::DataFactory::Mgmt::V2018_06_01::Models::ParquetSource
        ExecutionActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::ExecutionActivity
        LookupActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::LookupActivity
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
        SalesforceSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::SalesforceSink
        AzureDataExplorerSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDataExplorerSink
        DynamicsSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::DynamicsSink
        OdbcSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::OdbcSink
        AzureSearchIndexSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureSearchIndexSink
        AzureBlobFSSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBlobFSSink
        AzureDataLakeStoreSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDataLakeStoreSink
        OracleSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::OracleSink
        SqlDWSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::SqlDWSink
        AzureSqlSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureSqlSink
        SqlServerSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::SqlServerSink
        SqlSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::SqlSink
        DocumentDbCollectionSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::DocumentDbCollectionSink
        FileSystemSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::FileSystemSink
        BlobSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::BlobSink
        FileServerWriteSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::FileServerWriteSettings
        AzureDataLakeStoreWriteSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDataLakeStoreWriteSettings
        AzureBlobFSWriteSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBlobFSWriteSettings
        AzureBlobStorageWriteSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureBlobStorageWriteSettings
        ParquetSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::ParquetSink
        AzureTableSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureTableSink
        AzureQueueSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureQueueSink
        SapCloudForCustomerSink = Azure::DataFactory::Mgmt::V2018_06_01::Models::SapCloudForCustomerSink
        DelimitedTextWriteSettings = Azure::DataFactory::Mgmt::V2018_06_01::Models::DelimitedTextWriteSettings
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
        IfConditionActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::IfConditionActivity
        ExecutePipelineActivity = Azure::DataFactory::Mgmt::V2018_06_01::Models::ExecutePipelineActivity
        SelfHostedIntegrationRuntimeStatus = Azure::DataFactory::Mgmt::V2018_06_01::Models::SelfHostedIntegrationRuntimeStatus
        ManagedIntegrationRuntimeStatus = Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedIntegrationRuntimeStatus
        LinkedIntegrationRuntimeRbacAuthorization = Azure::DataFactory::Mgmt::V2018_06_01::Models::LinkedIntegrationRuntimeRbacAuthorization
        LinkedIntegrationRuntimeKeyAuthorization = Azure::DataFactory::Mgmt::V2018_06_01::Models::LinkedIntegrationRuntimeKeyAuthorization
        SelfHostedIntegrationRuntime = Azure::DataFactory::Mgmt::V2018_06_01::Models::SelfHostedIntegrationRuntime
        ManagedIntegrationRuntime = Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedIntegrationRuntime
        SsisEnvironment = Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisEnvironment
        SsisPackage = Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisPackage
        SsisProject = Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisProject
        SsisFolder = Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisFolder
        IntegrationRuntimeState = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeState
        IntegrationRuntimeAutoUpdate = Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeAutoUpdate
        ParameterType = Azure::DataFactory::Mgmt::V2018_06_01::Models::ParameterType
        DependencyCondition = Azure::DataFactory::Mgmt::V2018_06_01::Models::DependencyCondition
        VariableType = Azure::DataFactory::Mgmt::V2018_06_01::Models::VariableType
        TriggerRuntimeState = Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerRuntimeState
        RunQueryFilterOperand = Azure::DataFactory::Mgmt::V2018_06_01::Models::RunQueryFilterOperand
        RunQueryFilterOperator = Azure::DataFactory::Mgmt::V2018_06_01::Models::RunQueryFilterOperator
        RunQueryOrderByField = Azure::DataFactory::Mgmt::V2018_06_01::Models::RunQueryOrderByField
        RunQueryOrder = Azure::DataFactory::Mgmt::V2018_06_01::Models::RunQueryOrder
        TriggerRunStatus = Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerRunStatus
        TumblingWindowFrequency = Azure::DataFactory::Mgmt::V2018_06_01::Models::TumblingWindowFrequency
        BlobEventTypes = Azure::DataFactory::Mgmt::V2018_06_01::Models::BlobEventTypes
        DayOfWeek = Azure::DataFactory::Mgmt::V2018_06_01::Models::DayOfWeek
        DaysOfWeek = Azure::DataFactory::Mgmt::V2018_06_01::Models::DaysOfWeek
        RecurrenceFrequency = Azure::DataFactory::Mgmt::V2018_06_01::Models::RecurrenceFrequency
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
        AzureFunctionActivityMethod = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureFunctionActivityMethod
        WebActivityMethod = Azure::DataFactory::Mgmt::V2018_06_01::Models::WebActivityMethod
        CassandraSourceReadConsistencyLevels = Azure::DataFactory::Mgmt::V2018_06_01::Models::CassandraSourceReadConsistencyLevels
        StoredProcedureParameterType = Azure::DataFactory::Mgmt::V2018_06_01::Models::StoredProcedureParameterType
        SalesforceSourceReadBehavior = Azure::DataFactory::Mgmt::V2018_06_01::Models::SalesforceSourceReadBehavior
        HDInsightActivityDebugInfoOption = Azure::DataFactory::Mgmt::V2018_06_01::Models::HDInsightActivityDebugInfoOption
        SalesforceSinkWriteBehavior = Azure::DataFactory::Mgmt::V2018_06_01::Models::SalesforceSinkWriteBehavior
        AzureSearchIndexWriteBehaviorType = Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureSearchIndexWriteBehaviorType
        PolybaseSettingsRejectType = Azure::DataFactory::Mgmt::V2018_06_01::Models::PolybaseSettingsRejectType
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
        attr_reader :operations, :factories, :exposure_control, :integration_runtimes, :integration_runtime_object_metadata, :integration_runtime_nodes, :linked_services, :datasets, :pipelines, :pipeline_runs, :activity_runs, :triggers, :rerun_triggers, :trigger_runs, :configurable, :base_url, :options, :model_classes

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
          @rerun_triggers = @client_0.rerun_triggers
          @trigger_runs = @client_0.trigger_runs

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
          def operation_metric_specification
            Azure::DataFactory::Mgmt::V2018_06_01::Models::OperationMetricSpecification
          end
          def operation_service_specification
            Azure::DataFactory::Mgmt::V2018_06_01::Models::OperationServiceSpecification
          end
          def sub_resource
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SubResource
          end
          def operation
            Azure::DataFactory::Mgmt::V2018_06_01::Models::Operation
          end
          def rerun_tumbling_window_trigger_action_parameters
            Azure::DataFactory::Mgmt::V2018_06_01::Models::RerunTumblingWindowTriggerActionParameters
          end
          def dataset_location
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetLocation
          end
          def stored_procedure_parameter
            Azure::DataFactory::Mgmt::V2018_06_01::Models::StoredProcedureParameter
          end
          def copy_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CopySource
          end
          def factory_identity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::FactoryIdentity
          end
          def rerun_trigger_list_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::RerunTriggerListResponse
          end
          def activity_policy
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ActivityPolicy
          end
          def operation_display
            Azure::DataFactory::Mgmt::V2018_06_01::Models::OperationDisplay
          end
          def integration_runtime
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntime
          end
          def operation_log_specification
            Azure::DataFactory::Mgmt::V2018_06_01::Models::OperationLogSpecification
          end
          def integration_runtime_list_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeListResponse
          end
          def operation_metric_availability
            Azure::DataFactory::Mgmt::V2018_06_01::Models::OperationMetricAvailability
          end
          def integration_runtime_status
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeStatus
          end
          def operation_metric_dimension
            Azure::DataFactory::Mgmt::V2018_06_01::Models::OperationMetricDimension
          end
          def integration_runtime_status_list_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeStatusListResponse
          end
          def resource
            Azure::DataFactory::Mgmt::V2018_06_01::Models::Resource
          end
          def update_integration_runtime_node_request
            Azure::DataFactory::Mgmt::V2018_06_01::Models::UpdateIntegrationRuntimeNodeRequest
          end
          def expression
            Azure::DataFactory::Mgmt::V2018_06_01::Models::Expression
          end
          def create_linked_integration_runtime_request
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CreateLinkedIntegrationRuntimeRequest
          end
          def log_storage_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::LogStorageSettings
          end
          def linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::LinkedService
          end
          def operation_list_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::OperationListResponse
          end
          def linked_service_list_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::LinkedServiceListResponse
          end
          def get_ssis_object_metadata_request
            Azure::DataFactory::Mgmt::V2018_06_01::Models::GetSsisObjectMetadataRequest
          end
          def dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::Dataset
          end
          def ssis_object_metadata_status_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisObjectMetadataStatusResponse
          end
          def dataset_list_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetListResponse
          end
          def exposure_control_request
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ExposureControlRequest
          end
          def user_property
            Azure::DataFactory::Mgmt::V2018_06_01::Models::UserProperty
          end
          def exposure_control_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ExposureControlResponse
          end
          def variable_specification
            Azure::DataFactory::Mgmt::V2018_06_01::Models::VariableSpecification
          end
          def custom_activity_reference_object
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CustomActivityReferenceObject
          end
          def web_activity_authentication
            Azure::DataFactory::Mgmt::V2018_06_01::Models::WebActivityAuthentication
          end
          def trigger_reference
            Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerReference
          end
          def trigger
            Azure::DataFactory::Mgmt::V2018_06_01::Models::Trigger
          end
          def ssisproperty_override
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SSISPropertyOverride
          end
          def trigger_list_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerListResponse
          end
          def ssisexecution_parameter
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SSISExecutionParameter
          end
          def dependency_reference
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DependencyReference
          end
          def store_read_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::StoreReadSettings
          end
          def retry_policy
            Azure::DataFactory::Mgmt::V2018_06_01::Models::RetryPolicy
          end
          def git_hub_access_token_request
            Azure::DataFactory::Mgmt::V2018_06_01::Models::GitHubAccessTokenRequest
          end
          def ssisexecution_credential
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SSISExecutionCredential
          end
          def user_access_policy
            Azure::DataFactory::Mgmt::V2018_06_01::Models::UserAccessPolicy
          end
          def ssispackage_location
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SSISPackageLocation
          end
          def pipeline_reference
            Azure::DataFactory::Mgmt::V2018_06_01::Models::PipelineReference
          end
          def redirect_incompatible_row_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::RedirectIncompatibleRowSettings
          end
          def factory_update_parameters
            Azure::DataFactory::Mgmt::V2018_06_01::Models::FactoryUpdateParameters
          end
          def recurrence_schedule_occurrence
            Azure::DataFactory::Mgmt::V2018_06_01::Models::RecurrenceScheduleOccurrence
          end
          def run_query_filter
            Azure::DataFactory::Mgmt::V2018_06_01::Models::RunQueryFilter
          end
          def recurrence_schedule
            Azure::DataFactory::Mgmt::V2018_06_01::Models::RecurrenceSchedule
          end
          def run_filter_parameters
            Azure::DataFactory::Mgmt::V2018_06_01::Models::RunFilterParameters
          end
          def schedule_trigger_recurrence
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ScheduleTriggerRecurrence
          end
          def pipeline_run
            Azure::DataFactory::Mgmt::V2018_06_01::Models::PipelineRun
          end
          def staging_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::StagingSettings
          end
          def activity_run
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ActivityRun
          end
          def polybase_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::PolybaseSettings
          end
          def trigger_run
            Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerRun
          end
          def dataset_compression
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetCompression
          end
          def linked_service_reference
            Azure::DataFactory::Mgmt::V2018_06_01::Models::LinkedServiceReference
          end
          def dataset_storage_format
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetStorageFormat
          end
          def factory_repo_configuration
            Azure::DataFactory::Mgmt::V2018_06_01::Models::FactoryRepoConfiguration
          end
          def integration_runtime_connection_info
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeConnectionInfo
          end
          def distcp_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DistcpSettings
          end
          def integration_runtime_regenerate_key_parameters
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeRegenerateKeyParameters
          end
          def integration_runtime_status_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeStatusResponse
          end
          def integration_runtime_auth_keys
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeAuthKeys
          end
          def linked_integration_runtime_request
            Azure::DataFactory::Mgmt::V2018_06_01::Models::LinkedIntegrationRuntimeRequest
          end
          def integration_runtime_monitoring_data
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeMonitoringData
          end
          def mongo_db_cursor_methods_properties
            Azure::DataFactory::Mgmt::V2018_06_01::Models::MongoDbCursorMethodsProperties
          end
          def integration_runtime_node_monitoring_data
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeNodeMonitoringData
          end
          def redshift_unload_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::RedshiftUnloadSettings
          end
          def ssis_object_metadata_list_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisObjectMetadataListResponse
          end
          def activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::Activity
          end
          def ssis_object_metadata
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisObjectMetadata
          end
          def pipeline_list_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::PipelineListResponse
          end
          def script_action
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ScriptAction
          end
          def create_run_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CreateRunResponse
          end
          def ssis_environment_reference
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisEnvironmentReference
          end
          def factory_repo_update
            Azure::DataFactory::Mgmt::V2018_06_01::Models::FactoryRepoUpdate
          end
          def ssis_parameter
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisParameter
          end
          def access_policy_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AccessPolicyResponse
          end
          def ssis_variable
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SsisVariable
          end
          def dataset_reference
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetReference
          end
          def integration_runtime_node_ip_address
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeNodeIpAddress
          end
          def pipeline_run_invoked_by
            Azure::DataFactory::Mgmt::V2018_06_01::Models::PipelineRunInvokedBy
          end
          def integration_runtime_compute_properties
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeComputeProperties
          end
          def activity_runs_query_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ActivityRunsQueryResponse
          end
          def integration_runtime_vnet_properties
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeVNetProperties
          end
          def secret_base
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SecretBase
          end
          def integration_runtime_ssis_properties
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeSsisProperties
          end
          def integration_runtime_reference
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeReference
          end
          def integration_runtime_ssis_catalog_info
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeSsisCatalogInfo
          end
          def parameter_specification
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ParameterSpecification
          end
          def integration_runtime_custom_setup_script_properties
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeCustomSetupScriptProperties
          end
          def activity_dependency
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ActivityDependency
          end
          def integration_runtime_data_proxy_properties
            Azure::DataFactory::Mgmt::V2018_06_01::Models::IntegrationRuntimeDataProxyProperties
          end
          def azure_mlweb_service_file
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMLWebServiceFile
          end
          def entity_reference
            Azure::DataFactory::Mgmt::V2018_06_01::Models::EntityReference
          end
          def git_hub_access_token_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::GitHubAccessTokenResponse
          end
          def linked_integration_runtime_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::LinkedIntegrationRuntimeType
          end
          def run_query_order_by
            Azure::DataFactory::Mgmt::V2018_06_01::Models::RunQueryOrderBy
          end
          def managed_integration_runtime_node
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedIntegrationRuntimeNode
          end
          def trigger_runs_query_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerRunsQueryResponse
          end
          def managed_integration_runtime_error
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedIntegrationRuntimeError
          end
          def update_integration_runtime_request
            Azure::DataFactory::Mgmt::V2018_06_01::Models::UpdateIntegrationRuntimeRequest
          end
          def managed_integration_runtime_operation_result
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ManagedIntegrationRuntimeOperationResult
          end
          def pipeline_folder
            Azure::DataFactory::Mgmt::V2018_06_01::Models::PipelineFolder
          end
          def self_hosted_integration_runtime_node
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SelfHostedIntegrationRuntimeNode
          end
          def trigger_pipeline_reference
            Azure::DataFactory::Mgmt::V2018_06_01::Models::TriggerPipelineReference
          end
          def linked_integration_runtime
            Azure::DataFactory::Mgmt::V2018_06_01::Models::LinkedIntegrationRuntime
          end
          def factory_list_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::FactoryListResponse
          end
          def copy_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CopySink
          end
          def format_read_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::FormatReadSettings
          end
          def format_write_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::FormatWriteSettings
          end
          def dataset_folder
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DatasetFolder
          end
          def store_write_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::StoreWriteSettings
          end
          def pipeline_runs_query_response
            Azure::DataFactory::Mgmt::V2018_06_01::Models::PipelineRunsQueryResponse
          end
          def web_linked_service_type_properties
            Azure::DataFactory::Mgmt::V2018_06_01::Models::WebLinkedServiceTypeProperties
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
          def rerun_tumbling_window_trigger
            Azure::DataFactory::Mgmt::V2018_06_01::Models::RerunTumblingWindowTrigger
          end
          def rerun_trigger_resource
            Azure::DataFactory::Mgmt::V2018_06_01::Models::RerunTriggerResource
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
          def odbc_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::OdbcLinkedService
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
          def file_server_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::FileServerLinkedService
          end
          def hdinsight_linked_service
            Azure::DataFactory::Mgmt::V2018_06_01::Models::HDInsightLinkedService
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
          def salesforce_object_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SalesforceObjectDataset
          end
          def relational_table_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::RelationalTableDataset
          end
          def azure_my_sql_table_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMySqlTableDataset
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
          def dynamics_entity_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DynamicsEntityDataset
          end
          def document_db_collection_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DocumentDbCollectionDataset
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
          def delimited_text_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DelimitedTextDataset
          end
          def parquet_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ParquetDataset
          end
          def amazon_s3_dataset
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AmazonS3Dataset
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
          def azure_mlupdate_resource_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMLUpdateResourceActivity
          end
          def azure_mlbatch_execution_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMLBatchExecutionActivity
          end
          def get_metadata_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::GetMetadataActivity
          end
          def web_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::WebActivity
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
          def cassandra_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CassandraSource
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
          def azure_my_sql_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureMySqlSource
          end
          def hdfs_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::HdfsSource
          end
          def file_system_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::FileSystemSource
          end
          def sql_dwsource
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SqlDWSource
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
          def rest_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::RestSource
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
          def relational_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::RelationalSource
          end
          def dynamics_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DynamicsSource
          end
          def document_db_collection_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DocumentDbCollectionSource
          end
          def blob_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::BlobSource
          end
          def azure_table_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureTableSource
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
          def delimited_text_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DelimitedTextSource
          end
          def parquet_source
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ParquetSource
          end
          def execution_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ExecutionActivity
          end
          def lookup_activity
            Azure::DataFactory::Mgmt::V2018_06_01::Models::LookupActivity
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
          def salesforce_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SalesforceSink
          end
          def azure_data_explorer_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureDataExplorerSink
          end
          def dynamics_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DynamicsSink
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
          def sql_dwsink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SqlDWSink
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
          def document_db_collection_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DocumentDbCollectionSink
          end
          def file_system_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::FileSystemSink
          end
          def blob_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::BlobSink
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
          def parquet_sink
            Azure::DataFactory::Mgmt::V2018_06_01::Models::ParquetSink
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
          def delimited_text_write_settings
            Azure::DataFactory::Mgmt::V2018_06_01::Models::DelimitedTextWriteSettings
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
          def azure_function_activity_method
            Azure::DataFactory::Mgmt::V2018_06_01::Models::AzureFunctionActivityMethod
          end
          def web_activity_method
            Azure::DataFactory::Mgmt::V2018_06_01::Models::WebActivityMethod
          end
          def cassandra_source_read_consistency_levels
            Azure::DataFactory::Mgmt::V2018_06_01::Models::CassandraSourceReadConsistencyLevels
          end
          def stored_procedure_parameter_type
            Azure::DataFactory::Mgmt::V2018_06_01::Models::StoredProcedureParameterType
          end
          def salesforce_source_read_behavior
            Azure::DataFactory::Mgmt::V2018_06_01::Models::SalesforceSourceReadBehavior
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
