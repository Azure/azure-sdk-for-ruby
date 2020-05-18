# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_datashare'

module Azure::Profiles::Latest
  module DataShare
    module Mgmt
      Accounts = Azure::DataShare::Mgmt::V2019_11_01::Accounts
      ConsumerInvitations = Azure::DataShare::Mgmt::V2019_11_01::ConsumerInvitations
      DataSets = Azure::DataShare::Mgmt::V2019_11_01::DataSets
      DataSetMappings = Azure::DataShare::Mgmt::V2019_11_01::DataSetMappings
      Invitations = Azure::DataShare::Mgmt::V2019_11_01::Invitations
      Operations = Azure::DataShare::Mgmt::V2019_11_01::Operations
      Shares = Azure::DataShare::Mgmt::V2019_11_01::Shares
      ProviderShareSubscriptions = Azure::DataShare::Mgmt::V2019_11_01::ProviderShareSubscriptions
      ShareSubscriptions = Azure::DataShare::Mgmt::V2019_11_01::ShareSubscriptions
      ConsumerSourceDataSets = Azure::DataShare::Mgmt::V2019_11_01::ConsumerSourceDataSets
      SynchronizationSettings = Azure::DataShare::Mgmt::V2019_11_01::SynchronizationSettings
      Triggers = Azure::DataShare::Mgmt::V2019_11_01::Triggers

      module Models
        SourceShareSynchronizationSettingList = Azure::DataShare::Mgmt::V2019_11_01::Models::SourceShareSynchronizationSettingList
        Identity = Azure::DataShare::Mgmt::V2019_11_01::Models::Identity
        ShareSubscriptionSynchronization = Azure::DataShare::Mgmt::V2019_11_01::Models::ShareSubscriptionSynchronization
        DataShareErrorInfo = Azure::DataShare::Mgmt::V2019_11_01::Models::DataShareErrorInfo
        ShareSubscriptionSynchronizationList = Azure::DataShare::Mgmt::V2019_11_01::Models::ShareSubscriptionSynchronizationList
        AccountUpdateParameters = Azure::DataShare::Mgmt::V2019_11_01::Models::AccountUpdateParameters
        Synchronize = Azure::DataShare::Mgmt::V2019_11_01::Models::Synchronize
        AccountList = Azure::DataShare::Mgmt::V2019_11_01::Models::AccountList
        ShareSynchronizationList = Azure::DataShare::Mgmt::V2019_11_01::Models::ShareSynchronizationList
        SynchronizationDetails = Azure::DataShare::Mgmt::V2019_11_01::Models::SynchronizationDetails
        ShareList = Azure::DataShare::Mgmt::V2019_11_01::Models::ShareList
        DataSetList = Azure::DataShare::Mgmt::V2019_11_01::Models::DataSetList
        ShareSynchronization = Azure::DataShare::Mgmt::V2019_11_01::Models::ShareSynchronization
        DataSetMappingList = Azure::DataShare::Mgmt::V2019_11_01::Models::DataSetMappingList
        ConsumerInvitationList = Azure::DataShare::Mgmt::V2019_11_01::Models::ConsumerInvitationList
        InvitationList = Azure::DataShare::Mgmt::V2019_11_01::Models::InvitationList
        SynchronizationSettingList = Azure::DataShare::Mgmt::V2019_11_01::Models::SynchronizationSettingList
        OperationMetaLogSpecification = Azure::DataShare::Mgmt::V2019_11_01::Models::OperationMetaLogSpecification
        SynchronizationDetailsList = Azure::DataShare::Mgmt::V2019_11_01::Models::SynchronizationDetailsList
        OperationMetaMetricSpecification = Azure::DataShare::Mgmt::V2019_11_01::Models::OperationMetaMetricSpecification
        OperationModel = Azure::DataShare::Mgmt::V2019_11_01::Models::OperationModel
        ProviderShareSubscriptionList = Azure::DataShare::Mgmt::V2019_11_01::Models::ProviderShareSubscriptionList
        ProxyDto = Azure::DataShare::Mgmt::V2019_11_01::Models::ProxyDto
        DefaultDto = Azure::DataShare::Mgmt::V2019_11_01::Models::DefaultDto
        DataShareError = Azure::DataShare::Mgmt::V2019_11_01::Models::DataShareError
        OperationModelProperties = Azure::DataShare::Mgmt::V2019_11_01::Models::OperationModelProperties
        ShareSubscriptionList = Azure::DataShare::Mgmt::V2019_11_01::Models::ShareSubscriptionList
        OperationMetaServiceSpecification = Azure::DataShare::Mgmt::V2019_11_01::Models::OperationMetaServiceSpecification
        OperationResponse = Azure::DataShare::Mgmt::V2019_11_01::Models::OperationResponse
        TriggerList = Azure::DataShare::Mgmt::V2019_11_01::Models::TriggerList
        ConsumerSourceDataSetList = Azure::DataShare::Mgmt::V2019_11_01::Models::ConsumerSourceDataSetList
        OperationList = Azure::DataShare::Mgmt::V2019_11_01::Models::OperationList
        SourceShareSynchronizationSetting = Azure::DataShare::Mgmt::V2019_11_01::Models::SourceShareSynchronizationSetting
        DimensionProperties = Azure::DataShare::Mgmt::V2019_11_01::Models::DimensionProperties
        Account = Azure::DataShare::Mgmt::V2019_11_01::Models::Account
        ConsumerInvitation = Azure::DataShare::Mgmt::V2019_11_01::Models::ConsumerInvitation
        DataSet = Azure::DataShare::Mgmt::V2019_11_01::Models::DataSet
        DataSetMapping = Azure::DataShare::Mgmt::V2019_11_01::Models::DataSetMapping
        Invitation = Azure::DataShare::Mgmt::V2019_11_01::Models::Invitation
        Share = Azure::DataShare::Mgmt::V2019_11_01::Models::Share
        ProviderShareSubscription = Azure::DataShare::Mgmt::V2019_11_01::Models::ProviderShareSubscription
        ShareSubscription = Azure::DataShare::Mgmt::V2019_11_01::Models::ShareSubscription
        ConsumerSourceDataSet = Azure::DataShare::Mgmt::V2019_11_01::Models::ConsumerSourceDataSet
        SynchronizationSetting = Azure::DataShare::Mgmt::V2019_11_01::Models::SynchronizationSetting
        Trigger = Azure::DataShare::Mgmt::V2019_11_01::Models::Trigger
        ScheduledSynchronizationSetting = Azure::DataShare::Mgmt::V2019_11_01::Models::ScheduledSynchronizationSetting
        ScheduledTrigger = Azure::DataShare::Mgmt::V2019_11_01::Models::ScheduledTrigger
        BlobDataSet = Azure::DataShare::Mgmt::V2019_11_01::Models::BlobDataSet
        BlobFolderDataSet = Azure::DataShare::Mgmt::V2019_11_01::Models::BlobFolderDataSet
        BlobContainerDataSet = Azure::DataShare::Mgmt::V2019_11_01::Models::BlobContainerDataSet
        ADLSGen2FileDataSet = Azure::DataShare::Mgmt::V2019_11_01::Models::ADLSGen2FileDataSet
        ADLSGen2FolderDataSet = Azure::DataShare::Mgmt::V2019_11_01::Models::ADLSGen2FolderDataSet
        ADLSGen2FileSystemDataSet = Azure::DataShare::Mgmt::V2019_11_01::Models::ADLSGen2FileSystemDataSet
        ADLSGen1FolderDataSet = Azure::DataShare::Mgmt::V2019_11_01::Models::ADLSGen1FolderDataSet
        ADLSGen1FileDataSet = Azure::DataShare::Mgmt::V2019_11_01::Models::ADLSGen1FileDataSet
        KustoClusterDataSet = Azure::DataShare::Mgmt::V2019_11_01::Models::KustoClusterDataSet
        KustoDatabaseDataSet = Azure::DataShare::Mgmt::V2019_11_01::Models::KustoDatabaseDataSet
        SqlDWTableDataSet = Azure::DataShare::Mgmt::V2019_11_01::Models::SqlDWTableDataSet
        SqlDBTableDataSet = Azure::DataShare::Mgmt::V2019_11_01::Models::SqlDBTableDataSet
        BlobDataSetMapping = Azure::DataShare::Mgmt::V2019_11_01::Models::BlobDataSetMapping
        BlobFolderDataSetMapping = Azure::DataShare::Mgmt::V2019_11_01::Models::BlobFolderDataSetMapping
        BlobContainerDataSetMapping = Azure::DataShare::Mgmt::V2019_11_01::Models::BlobContainerDataSetMapping
        ADLSGen2FileDataSetMapping = Azure::DataShare::Mgmt::V2019_11_01::Models::ADLSGen2FileDataSetMapping
        ADLSGen2FolderDataSetMapping = Azure::DataShare::Mgmt::V2019_11_01::Models::ADLSGen2FolderDataSetMapping
        ADLSGen2FileSystemDataSetMapping = Azure::DataShare::Mgmt::V2019_11_01::Models::ADLSGen2FileSystemDataSetMapping
        KustoClusterDataSetMapping = Azure::DataShare::Mgmt::V2019_11_01::Models::KustoClusterDataSetMapping
        KustoDatabaseDataSetMapping = Azure::DataShare::Mgmt::V2019_11_01::Models::KustoDatabaseDataSetMapping
        SqlDWTableDataSetMapping = Azure::DataShare::Mgmt::V2019_11_01::Models::SqlDWTableDataSetMapping
        SqlDBTableDataSetMapping = Azure::DataShare::Mgmt::V2019_11_01::Models::SqlDBTableDataSetMapping
        ScheduledSourceSynchronizationSetting = Azure::DataShare::Mgmt::V2019_11_01::Models::ScheduledSourceSynchronizationSetting
        Type = Azure::DataShare::Mgmt::V2019_11_01::Models::Type
        ProvisioningState = Azure::DataShare::Mgmt::V2019_11_01::Models::ProvisioningState
        Status = Azure::DataShare::Mgmt::V2019_11_01::Models::Status
        InvitationStatus = Azure::DataShare::Mgmt::V2019_11_01::Models::InvitationStatus
        ShareKind = Azure::DataShare::Mgmt::V2019_11_01::Models::ShareKind
        SynchronizationMode = Azure::DataShare::Mgmt::V2019_11_01::Models::SynchronizationMode
        DataSetType = Azure::DataShare::Mgmt::V2019_11_01::Models::DataSetType
        ShareSubscriptionStatus = Azure::DataShare::Mgmt::V2019_11_01::Models::ShareSubscriptionStatus
        RecurrenceInterval = Azure::DataShare::Mgmt::V2019_11_01::Models::RecurrenceInterval
        TriggerStatus = Azure::DataShare::Mgmt::V2019_11_01::Models::TriggerStatus
        DataSetMappingStatus = Azure::DataShare::Mgmt::V2019_11_01::Models::DataSetMappingStatus
        OutputType = Azure::DataShare::Mgmt::V2019_11_01::Models::OutputType
      end

      class DataShareManagementClass
        attr_reader :accounts, :consumer_invitations, :data_sets, :data_set_mappings, :invitations, :operations, :shares, :provider_share_subscriptions, :share_subscriptions, :consumer_source_data_sets, :synchronization_settings, :triggers, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::DataShare::Mgmt::V2019_11_01::DataShareManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @accounts = @client_0.accounts
          @consumer_invitations = @client_0.consumer_invitations
          @data_sets = @client_0.data_sets
          @data_set_mappings = @client_0.data_set_mappings
          @invitations = @client_0.invitations
          @operations = @client_0.operations
          @shares = @client_0.shares
          @provider_share_subscriptions = @client_0.provider_share_subscriptions
          @share_subscriptions = @client_0.share_subscriptions
          @consumer_source_data_sets = @client_0.consumer_source_data_sets
          @synchronization_settings = @client_0.synchronization_settings
          @triggers = @client_0.triggers

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/DataShare/Mgmt"
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
          def source_share_synchronization_setting_list
            Azure::DataShare::Mgmt::V2019_11_01::Models::SourceShareSynchronizationSettingList
          end
          def identity
            Azure::DataShare::Mgmt::V2019_11_01::Models::Identity
          end
          def share_subscription_synchronization
            Azure::DataShare::Mgmt::V2019_11_01::Models::ShareSubscriptionSynchronization
          end
          def data_share_error_info
            Azure::DataShare::Mgmt::V2019_11_01::Models::DataShareErrorInfo
          end
          def share_subscription_synchronization_list
            Azure::DataShare::Mgmt::V2019_11_01::Models::ShareSubscriptionSynchronizationList
          end
          def account_update_parameters
            Azure::DataShare::Mgmt::V2019_11_01::Models::AccountUpdateParameters
          end
          def synchronize
            Azure::DataShare::Mgmt::V2019_11_01::Models::Synchronize
          end
          def account_list
            Azure::DataShare::Mgmt::V2019_11_01::Models::AccountList
          end
          def share_synchronization_list
            Azure::DataShare::Mgmt::V2019_11_01::Models::ShareSynchronizationList
          end
          def synchronization_details
            Azure::DataShare::Mgmt::V2019_11_01::Models::SynchronizationDetails
          end
          def share_list
            Azure::DataShare::Mgmt::V2019_11_01::Models::ShareList
          end
          def data_set_list
            Azure::DataShare::Mgmt::V2019_11_01::Models::DataSetList
          end
          def share_synchronization
            Azure::DataShare::Mgmt::V2019_11_01::Models::ShareSynchronization
          end
          def data_set_mapping_list
            Azure::DataShare::Mgmt::V2019_11_01::Models::DataSetMappingList
          end
          def consumer_invitation_list
            Azure::DataShare::Mgmt::V2019_11_01::Models::ConsumerInvitationList
          end
          def invitation_list
            Azure::DataShare::Mgmt::V2019_11_01::Models::InvitationList
          end
          def synchronization_setting_list
            Azure::DataShare::Mgmt::V2019_11_01::Models::SynchronizationSettingList
          end
          def operation_meta_log_specification
            Azure::DataShare::Mgmt::V2019_11_01::Models::OperationMetaLogSpecification
          end
          def synchronization_details_list
            Azure::DataShare::Mgmt::V2019_11_01::Models::SynchronizationDetailsList
          end
          def operation_meta_metric_specification
            Azure::DataShare::Mgmt::V2019_11_01::Models::OperationMetaMetricSpecification
          end
          def operation_model
            Azure::DataShare::Mgmt::V2019_11_01::Models::OperationModel
          end
          def provider_share_subscription_list
            Azure::DataShare::Mgmt::V2019_11_01::Models::ProviderShareSubscriptionList
          end
          def proxy_dto
            Azure::DataShare::Mgmt::V2019_11_01::Models::ProxyDto
          end
          def default_dto
            Azure::DataShare::Mgmt::V2019_11_01::Models::DefaultDto
          end
          def data_share_error
            Azure::DataShare::Mgmt::V2019_11_01::Models::DataShareError
          end
          def operation_model_properties
            Azure::DataShare::Mgmt::V2019_11_01::Models::OperationModelProperties
          end
          def share_subscription_list
            Azure::DataShare::Mgmt::V2019_11_01::Models::ShareSubscriptionList
          end
          def operation_meta_service_specification
            Azure::DataShare::Mgmt::V2019_11_01::Models::OperationMetaServiceSpecification
          end
          def operation_response
            Azure::DataShare::Mgmt::V2019_11_01::Models::OperationResponse
          end
          def trigger_list
            Azure::DataShare::Mgmt::V2019_11_01::Models::TriggerList
          end
          def consumer_source_data_set_list
            Azure::DataShare::Mgmt::V2019_11_01::Models::ConsumerSourceDataSetList
          end
          def operation_list
            Azure::DataShare::Mgmt::V2019_11_01::Models::OperationList
          end
          def source_share_synchronization_setting
            Azure::DataShare::Mgmt::V2019_11_01::Models::SourceShareSynchronizationSetting
          end
          def dimension_properties
            Azure::DataShare::Mgmt::V2019_11_01::Models::DimensionProperties
          end
          def account
            Azure::DataShare::Mgmt::V2019_11_01::Models::Account
          end
          def consumer_invitation
            Azure::DataShare::Mgmt::V2019_11_01::Models::ConsumerInvitation
          end
          def data_set
            Azure::DataShare::Mgmt::V2019_11_01::Models::DataSet
          end
          def data_set_mapping
            Azure::DataShare::Mgmt::V2019_11_01::Models::DataSetMapping
          end
          def invitation
            Azure::DataShare::Mgmt::V2019_11_01::Models::Invitation
          end
          def share
            Azure::DataShare::Mgmt::V2019_11_01::Models::Share
          end
          def provider_share_subscription
            Azure::DataShare::Mgmt::V2019_11_01::Models::ProviderShareSubscription
          end
          def share_subscription
            Azure::DataShare::Mgmt::V2019_11_01::Models::ShareSubscription
          end
          def consumer_source_data_set
            Azure::DataShare::Mgmt::V2019_11_01::Models::ConsumerSourceDataSet
          end
          def synchronization_setting
            Azure::DataShare::Mgmt::V2019_11_01::Models::SynchronizationSetting
          end
          def trigger
            Azure::DataShare::Mgmt::V2019_11_01::Models::Trigger
          end
          def scheduled_synchronization_setting
            Azure::DataShare::Mgmt::V2019_11_01::Models::ScheduledSynchronizationSetting
          end
          def scheduled_trigger
            Azure::DataShare::Mgmt::V2019_11_01::Models::ScheduledTrigger
          end
          def blob_data_set
            Azure::DataShare::Mgmt::V2019_11_01::Models::BlobDataSet
          end
          def blob_folder_data_set
            Azure::DataShare::Mgmt::V2019_11_01::Models::BlobFolderDataSet
          end
          def blob_container_data_set
            Azure::DataShare::Mgmt::V2019_11_01::Models::BlobContainerDataSet
          end
          def adlsgen2_file_data_set
            Azure::DataShare::Mgmt::V2019_11_01::Models::ADLSGen2FileDataSet
          end
          def adlsgen2_folder_data_set
            Azure::DataShare::Mgmt::V2019_11_01::Models::ADLSGen2FolderDataSet
          end
          def adlsgen2_file_system_data_set
            Azure::DataShare::Mgmt::V2019_11_01::Models::ADLSGen2FileSystemDataSet
          end
          def adlsgen1_folder_data_set
            Azure::DataShare::Mgmt::V2019_11_01::Models::ADLSGen1FolderDataSet
          end
          def adlsgen1_file_data_set
            Azure::DataShare::Mgmt::V2019_11_01::Models::ADLSGen1FileDataSet
          end
          def kusto_cluster_data_set
            Azure::DataShare::Mgmt::V2019_11_01::Models::KustoClusterDataSet
          end
          def kusto_database_data_set
            Azure::DataShare::Mgmt::V2019_11_01::Models::KustoDatabaseDataSet
          end
          def sql_dwtable_data_set
            Azure::DataShare::Mgmt::V2019_11_01::Models::SqlDWTableDataSet
          end
          def sql_dbtable_data_set
            Azure::DataShare::Mgmt::V2019_11_01::Models::SqlDBTableDataSet
          end
          def blob_data_set_mapping
            Azure::DataShare::Mgmt::V2019_11_01::Models::BlobDataSetMapping
          end
          def blob_folder_data_set_mapping
            Azure::DataShare::Mgmt::V2019_11_01::Models::BlobFolderDataSetMapping
          end
          def blob_container_data_set_mapping
            Azure::DataShare::Mgmt::V2019_11_01::Models::BlobContainerDataSetMapping
          end
          def adlsgen2_file_data_set_mapping
            Azure::DataShare::Mgmt::V2019_11_01::Models::ADLSGen2FileDataSetMapping
          end
          def adlsgen2_folder_data_set_mapping
            Azure::DataShare::Mgmt::V2019_11_01::Models::ADLSGen2FolderDataSetMapping
          end
          def adlsgen2_file_system_data_set_mapping
            Azure::DataShare::Mgmt::V2019_11_01::Models::ADLSGen2FileSystemDataSetMapping
          end
          def kusto_cluster_data_set_mapping
            Azure::DataShare::Mgmt::V2019_11_01::Models::KustoClusterDataSetMapping
          end
          def kusto_database_data_set_mapping
            Azure::DataShare::Mgmt::V2019_11_01::Models::KustoDatabaseDataSetMapping
          end
          def sql_dwtable_data_set_mapping
            Azure::DataShare::Mgmt::V2019_11_01::Models::SqlDWTableDataSetMapping
          end
          def sql_dbtable_data_set_mapping
            Azure::DataShare::Mgmt::V2019_11_01::Models::SqlDBTableDataSetMapping
          end
          def scheduled_source_synchronization_setting
            Azure::DataShare::Mgmt::V2019_11_01::Models::ScheduledSourceSynchronizationSetting
          end
          def type
            Azure::DataShare::Mgmt::V2019_11_01::Models::Type
          end
          def provisioning_state
            Azure::DataShare::Mgmt::V2019_11_01::Models::ProvisioningState
          end
          def status
            Azure::DataShare::Mgmt::V2019_11_01::Models::Status
          end
          def invitation_status
            Azure::DataShare::Mgmt::V2019_11_01::Models::InvitationStatus
          end
          def share_kind
            Azure::DataShare::Mgmt::V2019_11_01::Models::ShareKind
          end
          def synchronization_mode
            Azure::DataShare::Mgmt::V2019_11_01::Models::SynchronizationMode
          end
          def data_set_type
            Azure::DataShare::Mgmt::V2019_11_01::Models::DataSetType
          end
          def share_subscription_status
            Azure::DataShare::Mgmt::V2019_11_01::Models::ShareSubscriptionStatus
          end
          def recurrence_interval
            Azure::DataShare::Mgmt::V2019_11_01::Models::RecurrenceInterval
          end
          def trigger_status
            Azure::DataShare::Mgmt::V2019_11_01::Models::TriggerStatus
          end
          def data_set_mapping_status
            Azure::DataShare::Mgmt::V2019_11_01::Models::DataSetMappingStatus
          end
          def output_type
            Azure::DataShare::Mgmt::V2019_11_01::Models::OutputType
          end
        end
      end
    end
  end
end
