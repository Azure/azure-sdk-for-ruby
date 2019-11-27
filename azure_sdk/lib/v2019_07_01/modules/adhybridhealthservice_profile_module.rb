# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_adhybridhealth_service'

module Azure::Profiles::V2019_07_01
  module ADHybridHealthService
    module Mgmt
      AddsServices = Azure::ADHybridHealthService::Mgmt::V2014_01_01::AddsServices
      AlertsOperations = Azure::ADHybridHealthService::Mgmt::V2014_01_01::AlertsOperations
      Configuration = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Configuration
      DimensionsOperations = Azure::ADHybridHealthService::Mgmt::V2014_01_01::DimensionsOperations
      AddsServiceMembersOperations = Azure::ADHybridHealthService::Mgmt::V2014_01_01::AddsServiceMembersOperations
      AdDomainServiceMembers = Azure::ADHybridHealthService::Mgmt::V2014_01_01::AdDomainServiceMembers
      AddsServicesUserPreference = Azure::ADHybridHealthService::Mgmt::V2014_01_01::AddsServicesUserPreference
      AddsService = Azure::ADHybridHealthService::Mgmt::V2014_01_01::AddsService
      AddsServicesReplicationStatus = Azure::ADHybridHealthService::Mgmt::V2014_01_01::AddsServicesReplicationStatus
      AddsServicesServiceMembers = Azure::ADHybridHealthService::Mgmt::V2014_01_01::AddsServicesServiceMembers
      Operations = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Operations
      Reports = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Reports
      ServicesOperations = Azure::ADHybridHealthService::Mgmt::V2014_01_01::ServicesOperations
      Service = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Service
      ServiceMembersOperations = Azure::ADHybridHealthService::Mgmt::V2014_01_01::ServiceMembersOperations

      module Models
        ErrorReportUsersEntry = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ErrorReportUsersEntry
        Item = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Item
        ErrorReportUsersEntries = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ErrorReportUsersEntries
        AdditionalInformation = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::AdditionalInformation
        ExportStatus = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ExportStatus
        AddsServiceMember = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::AddsServiceMember
        ExportStatuses = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ExportStatuses
        Agent = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Agent
        ExtensionErrorInfo = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ExtensionErrorInfo
        Alert = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Alert
        ForestSummary = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ForestSummary
        AlertFeedbacks = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::AlertFeedbacks
        GlobalConfiguration = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::GlobalConfiguration
        AssociatedObject = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::AssociatedObject
        GlobalConfigurations = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::GlobalConfigurations
        AttributeDelta = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::AttributeDelta
        Hotfixes = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Hotfixes
        AttributeMapping = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::AttributeMapping
        RuleErrorInfo = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::RuleErrorInfo
        ChangeNotReimportedEntry = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ChangeNotReimportedEntry
        ImportError = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ImportError
        PartitionScope = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::PartitionScope
        ImportErrors = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ImportErrors
        RunStep = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::RunStep
        InboundReplicationNeighbor = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::InboundReplicationNeighbor
        Connector = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Connector
        InboundReplicationNeighbors = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::InboundReplicationNeighbors
        ConnectorConnectionError = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ConnectorConnectionError
        Items = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Items
        ConnectorMetadataDetails = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ConnectorMetadataDetails
        MergedExportErrors = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::MergedExportErrors
        ConnectorObjectError = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ConnectorObjectError
        MetricGroup = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::MetricGroup
        Credential = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Credential
        Metrics = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Metrics
        DataFreshnessDetails = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::DataFreshnessDetails
        MetricMetadata = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::MetricMetadata
        Dimensions = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Dimensions
        MetricMetadataList = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::MetricMetadataList
        ErrorCount = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ErrorCount
        MetricSet = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::MetricSet
        ObjectWithSyncError = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ObjectWithSyncError
        MetricSets = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::MetricSets
        ErrorDetail = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ErrorDetail
        ModuleConfiguration = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ModuleConfiguration
        ExportErrors = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ExportErrors
        ModuleConfigurations = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ModuleConfigurations
        Hotfix = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Hotfix
        Operation = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Operation
        HelpLink = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::HelpLink
        OperationListResponse = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::OperationListResponse
        Alerts = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Alerts
        PasswordManagementSettings = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::PasswordManagementSettings
        AttributeMppingSource = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::AttributeMppingSource
        PasswordHashSyncConfiguration = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::PasswordHashSyncConfiguration
        ChangeNotReimported = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ChangeNotReimported
        ReplicationSummary = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ReplicationSummary
        RunProfile = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::RunProfile
        ReplicationDetailsList = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ReplicationDetailsList
        ConnectorConnectionErrors = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ConnectorConnectionErrors
        ReplicationStatus = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ReplicationStatus
        ConnectorObjectErrors = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ConnectorObjectErrors
        ReplicationSummaryList = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ReplicationSummaryList
        Dimension = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Dimension
        Result = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Result
        ErrorCounts = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ErrorCounts
        RiskyIPBlobUri = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::RiskyIPBlobUri
        ExportError = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ExportError
        RiskyIPBlobUris = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::RiskyIPBlobUris
        AddsServiceMembers = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::AddsServiceMembers
        RunProfiles = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::RunProfiles
        ValueDelta = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ValueDelta
        ServiceConfiguration = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ServiceConfiguration
        Partition = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Partition
        ServiceProperties = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ServiceProperties
        ConnectorMetadata = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ConnectorMetadata
        Services = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Services
        Display = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Display
        ServiceMember = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ServiceMember
        AddsConfiguration = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::AddsConfiguration
        ServiceMembers = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ServiceMembers
        ChangeNotReimportedDelta = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ChangeNotReimportedDelta
        TabularExportError = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::TabularExportError
        Credentials = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Credentials
        Tenant = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Tenant
        AlertFeedback = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::AlertFeedback
        TenantOnboardingDetails = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::TenantOnboardingDetails
        MergedExportError = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::MergedExportError
        UserPreference = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::UserPreference
        Connectors = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Connectors
        MonitoringLevel = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::MonitoringLevel
        Level = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Level
        State = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::State
        ValueDeltaOperationType = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ValueDeltaOperationType
        AttributeDeltaOperationType = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::AttributeDeltaOperationType
        ValueType = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ValueType
        AttributeMappingType = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::AttributeMappingType
        DeltaOperationType = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::DeltaOperationType
        HealthStatus = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::HealthStatus
        AlgorithmStepType = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::AlgorithmStepType
        PasswordOperationTypes = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::PasswordOperationTypes
      end

      class ADHybridHealthServiceManagementClass
        attr_reader :adds_services, :alerts_operations, :configuration, :dimensions_operations, :adds_service_members_operations, :ad_domain_service_members, :adds_services_user_preference, :adds_service, :adds_services_replication_status, :adds_services_service_members, :operations, :reports, :services_operations, :service, :service_members_operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::ADHybridHealthService::Mgmt::V2014_01_01::ADHybridHealthService.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @adds_services = @client_0.adds_services
          @alerts_operations = @client_0.alerts_operations
          @configuration = @client_0.configuration
          @dimensions_operations = @client_0.dimensions_operations
          @adds_service_members_operations = @client_0.adds_service_members_operations
          @ad_domain_service_members = @client_0.ad_domain_service_members
          @adds_services_user_preference = @client_0.adds_services_user_preference
          @adds_service = @client_0.adds_service
          @adds_services_replication_status = @client_0.adds_services_replication_status
          @adds_services_service_members = @client_0.adds_services_service_members
          @operations = @client_0.operations
          @reports = @client_0.reports
          @services_operations = @client_0.services_operations
          @service = @client_0.service
          @service_members_operations = @client_0.service_members_operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/V2019_07_01/ADHybridHealthService/Mgmt"
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
          def error_report_users_entry
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ErrorReportUsersEntry
          end
          def item
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Item
          end
          def error_report_users_entries
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ErrorReportUsersEntries
          end
          def additional_information
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::AdditionalInformation
          end
          def export_status
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ExportStatus
          end
          def adds_service_member
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::AddsServiceMember
          end
          def export_statuses
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ExportStatuses
          end
          def agent
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Agent
          end
          def extension_error_info
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ExtensionErrorInfo
          end
          def alert
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Alert
          end
          def forest_summary
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ForestSummary
          end
          def alert_feedbacks
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::AlertFeedbacks
          end
          def global_configuration
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::GlobalConfiguration
          end
          def associated_object
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::AssociatedObject
          end
          def global_configurations
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::GlobalConfigurations
          end
          def attribute_delta
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::AttributeDelta
          end
          def hotfixes
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Hotfixes
          end
          def attribute_mapping
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::AttributeMapping
          end
          def rule_error_info
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::RuleErrorInfo
          end
          def change_not_reimported_entry
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ChangeNotReimportedEntry
          end
          def import_error
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ImportError
          end
          def partition_scope
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::PartitionScope
          end
          def import_errors
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ImportErrors
          end
          def run_step
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::RunStep
          end
          def inbound_replication_neighbor
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::InboundReplicationNeighbor
          end
          def connector
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Connector
          end
          def inbound_replication_neighbors
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::InboundReplicationNeighbors
          end
          def connector_connection_error
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ConnectorConnectionError
          end
          def items
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Items
          end
          def connector_metadata_details
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ConnectorMetadataDetails
          end
          def merged_export_errors
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::MergedExportErrors
          end
          def connector_object_error
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ConnectorObjectError
          end
          def metric_group
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::MetricGroup
          end
          def credential
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Credential
          end
          def metrics
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Metrics
          end
          def data_freshness_details
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::DataFreshnessDetails
          end
          def metric_metadata
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::MetricMetadata
          end
          def dimensions
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Dimensions
          end
          def metric_metadata_list
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::MetricMetadataList
          end
          def error_count
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ErrorCount
          end
          def metric_set
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::MetricSet
          end
          def object_with_sync_error
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ObjectWithSyncError
          end
          def metric_sets
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::MetricSets
          end
          def error_detail
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ErrorDetail
          end
          def module_configuration
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ModuleConfiguration
          end
          def export_errors
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ExportErrors
          end
          def module_configurations
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ModuleConfigurations
          end
          def hotfix
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Hotfix
          end
          def operation
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Operation
          end
          def help_link
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::HelpLink
          end
          def operation_list_response
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::OperationListResponse
          end
          def alerts
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Alerts
          end
          def password_management_settings
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::PasswordManagementSettings
          end
          def attribute_mpping_source
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::AttributeMppingSource
          end
          def password_hash_sync_configuration
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::PasswordHashSyncConfiguration
          end
          def change_not_reimported
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ChangeNotReimported
          end
          def replication_summary
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ReplicationSummary
          end
          def run_profile
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::RunProfile
          end
          def replication_details_list
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ReplicationDetailsList
          end
          def connector_connection_errors
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ConnectorConnectionErrors
          end
          def replication_status
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ReplicationStatus
          end
          def connector_object_errors
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ConnectorObjectErrors
          end
          def replication_summary_list
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ReplicationSummaryList
          end
          def dimension
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Dimension
          end
          def result
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Result
          end
          def error_counts
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ErrorCounts
          end
          def risky_ipblob_uri
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::RiskyIPBlobUri
          end
          def export_error
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ExportError
          end
          def risky_ipblob_uris
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::RiskyIPBlobUris
          end
          def adds_service_members
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::AddsServiceMembers
          end
          def run_profiles
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::RunProfiles
          end
          def value_delta
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ValueDelta
          end
          def service_configuration
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ServiceConfiguration
          end
          def partition
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Partition
          end
          def service_properties
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ServiceProperties
          end
          def connector_metadata
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ConnectorMetadata
          end
          def services
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Services
          end
          def display
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Display
          end
          def service_member
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ServiceMember
          end
          def adds_configuration
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::AddsConfiguration
          end
          def service_members
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ServiceMembers
          end
          def change_not_reimported_delta
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ChangeNotReimportedDelta
          end
          def tabular_export_error
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::TabularExportError
          end
          def credentials
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Credentials
          end
          def tenant
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Tenant
          end
          def alert_feedback
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::AlertFeedback
          end
          def tenant_onboarding_details
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::TenantOnboardingDetails
          end
          def merged_export_error
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::MergedExportError
          end
          def user_preference
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::UserPreference
          end
          def connectors
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Connectors
          end
          def monitoring_level
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::MonitoringLevel
          end
          def level
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::Level
          end
          def state
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::State
          end
          def value_delta_operation_type
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ValueDeltaOperationType
          end
          def attribute_delta_operation_type
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::AttributeDeltaOperationType
          end
          def value_type
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ValueType
          end
          def attribute_mapping_type
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::AttributeMappingType
          end
          def delta_operation_type
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::DeltaOperationType
          end
          def health_status
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::HealthStatus
          end
          def algorithm_step_type
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::AlgorithmStepType
          end
          def password_operation_types
            Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::PasswordOperationTypes
          end
        end
      end
    end
  end
end
