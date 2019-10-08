# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_datashare'

module Azure::DataShare::Profiles::Latest
  module Mgmt
    Accounts = Azure::DataShare::Mgmt::V2018_11_01_preview::Accounts
    ConsumerInvitations = Azure::DataShare::Mgmt::V2018_11_01_preview::ConsumerInvitations
    DataSets = Azure::DataShare::Mgmt::V2018_11_01_preview::DataSets
    DataSetMappings = Azure::DataShare::Mgmt::V2018_11_01_preview::DataSetMappings
    Invitations = Azure::DataShare::Mgmt::V2018_11_01_preview::Invitations
    Operations = Azure::DataShare::Mgmt::V2018_11_01_preview::Operations
    Shares = Azure::DataShare::Mgmt::V2018_11_01_preview::Shares
    ProviderShareSubscriptions = Azure::DataShare::Mgmt::V2018_11_01_preview::ProviderShareSubscriptions
    ShareSubscriptions = Azure::DataShare::Mgmt::V2018_11_01_preview::ShareSubscriptions
    ConsumerSourceDataSets = Azure::DataShare::Mgmt::V2018_11_01_preview::ConsumerSourceDataSets
    SynchronizationSettings = Azure::DataShare::Mgmt::V2018_11_01_preview::SynchronizationSettings
    Triggers = Azure::DataShare::Mgmt::V2018_11_01_preview::Triggers

    module Models
      SourceShareSynchronizationSetting = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::SourceShareSynchronizationSetting
      Identity = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::Identity
      SourceShareSynchronizationSettingList = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::SourceShareSynchronizationSettingList
      DataShareErrorInfo = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::DataShareErrorInfo
      ShareSubscriptionSynchronization = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ShareSubscriptionSynchronization
      AccountUpdateParameters = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::AccountUpdateParameters
      ShareSubscriptionSynchronizationList = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ShareSubscriptionSynchronizationList
      AccountList = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::AccountList
      Synchronize = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::Synchronize
      ConsumerInvitationList = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ConsumerInvitationList
      ShareSubscriptionList = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ShareSubscriptionList
      DataSetList = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::DataSetList
      SynchronizationDetailsList = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::SynchronizationDetailsList
      SynchronizationDetails = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::SynchronizationDetails
      DataSetMappingList = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::DataSetMappingList
      InvitationList = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::InvitationList
      DefaultDto = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::DefaultDto
      OperationMetaLogSpecification = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::OperationMetaLogSpecification
      ProviderShareSubscriptionList = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ProviderShareSubscriptionList
      OperationMetaMetricSpecification = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::OperationMetaMetricSpecification
      TriggerList = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::TriggerList
      OperationModel = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::OperationModel
      ProxyDto = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ProxyDto
      SynchronizationSettingList = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::SynchronizationSettingList
      ShareList = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ShareList
      ConsumerSourceDataSetList = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ConsumerSourceDataSetList
      ShareSynchronizationList = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ShareSynchronizationList
      OperationList = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::OperationList
      ShareSynchronization = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ShareSynchronization
      DimensionProperties = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::DimensionProperties
      OperationModelProperties = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::OperationModelProperties
      OperationResponse = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::OperationResponse
      OperationMetaServiceSpecification = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::OperationMetaServiceSpecification
      DataShareError = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::DataShareError
      Account = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::Account
      ConsumerInvitation = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ConsumerInvitation
      DataSet = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::DataSet
      DataSetMapping = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::DataSetMapping
      Invitation = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::Invitation
      Share = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::Share
      ProviderShareSubscription = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ProviderShareSubscription
      ShareSubscription = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ShareSubscription
      ConsumerSourceDataSet = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ConsumerSourceDataSet
      SynchronizationSetting = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::SynchronizationSetting
      Trigger = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::Trigger
      ScheduledSynchronizationSetting = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ScheduledSynchronizationSetting
      ScheduledTrigger = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ScheduledTrigger
      BlobDataSet = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::BlobDataSet
      BlobFolderDataSet = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::BlobFolderDataSet
      BlobContainerDataSet = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::BlobContainerDataSet
      ADLSGen2FileDataSet = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ADLSGen2FileDataSet
      ADLSGen2FolderDataSet = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ADLSGen2FolderDataSet
      ADLSGen2FileSystemDataSet = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ADLSGen2FileSystemDataSet
      ADLSGen1FolderDataSet = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ADLSGen1FolderDataSet
      ADLSGen1FileDataSet = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ADLSGen1FileDataSet
      SqlDWTableDataSet = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::SqlDWTableDataSet
      SqlDBTableDataSet = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::SqlDBTableDataSet
      BlobDataSetMapping = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::BlobDataSetMapping
      BlobFolderDataSetMapping = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::BlobFolderDataSetMapping
      BlobContainerDataSetMapping = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::BlobContainerDataSetMapping
      ADLSGen2FileDataSetMapping = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ADLSGen2FileDataSetMapping
      ADLSGen2FolderDataSetMapping = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ADLSGen2FolderDataSetMapping
      ADLSGen2FileSystemDataSetMapping = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ADLSGen2FileSystemDataSetMapping
      SqlDWTableDataSetMapping = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::SqlDWTableDataSetMapping
      SqlDBTableDataSetMapping = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::SqlDBTableDataSetMapping
      ScheduledSourceSynchronizationSetting = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ScheduledSourceSynchronizationSetting
      Type = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::Type
      ProvisioningState = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ProvisioningState
      Status = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::Status
      InvitationStatus = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::InvitationStatus
      ShareKind = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ShareKind
      DataSetType = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::DataSetType
      ShareSubscriptionStatus = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ShareSubscriptionStatus
      SynchronizationMode = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::SynchronizationMode
      RecurrenceInterval = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::RecurrenceInterval
      TriggerStatus = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::TriggerStatus
      DataSetMappingStatus = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::DataSetMappingStatus
      OutputType = Azure::DataShare::Mgmt::V2018_11_01_preview::Models::OutputType
    end

    #
    # DataShareManagementClass
    #
    class DataShareManagementClass
      attr_reader :accounts, :consumer_invitations, :data_sets, :data_set_mappings, :invitations, :operations, :shares, :provider_share_subscriptions, :share_subscriptions, :consumer_source_data_sets, :synchronization_settings, :triggers, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::DataShare::Mgmt::V2018_11_01_preview::DataShareManagementClient.new(configurable.credentials, base_url, options)
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
        profile_information = 'Profiles/Latest/DataShare/Mgmt'
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
      def source_share_synchronization_setting
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::SourceShareSynchronizationSetting
      end
      def identity
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::Identity
      end
      def source_share_synchronization_setting_list
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::SourceShareSynchronizationSettingList
      end
      def data_share_error_info
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::DataShareErrorInfo
      end
      def share_subscription_synchronization
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ShareSubscriptionSynchronization
      end
      def account_update_parameters
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::AccountUpdateParameters
      end
      def share_subscription_synchronization_list
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ShareSubscriptionSynchronizationList
      end
      def account_list
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::AccountList
      end
      def synchronize
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::Synchronize
      end
      def consumer_invitation_list
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ConsumerInvitationList
      end
      def share_subscription_list
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ShareSubscriptionList
      end
      def data_set_list
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::DataSetList
      end
      def synchronization_details_list
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::SynchronizationDetailsList
      end
      def synchronization_details
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::SynchronizationDetails
      end
      def data_set_mapping_list
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::DataSetMappingList
      end
      def invitation_list
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::InvitationList
      end
      def default_dto
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::DefaultDto
      end
      def operation_meta_log_specification
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::OperationMetaLogSpecification
      end
      def provider_share_subscription_list
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ProviderShareSubscriptionList
      end
      def operation_meta_metric_specification
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::OperationMetaMetricSpecification
      end
      def trigger_list
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::TriggerList
      end
      def operation_model
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::OperationModel
      end
      def proxy_dto
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ProxyDto
      end
      def synchronization_setting_list
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::SynchronizationSettingList
      end
      def share_list
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ShareList
      end
      def consumer_source_data_set_list
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ConsumerSourceDataSetList
      end
      def share_synchronization_list
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ShareSynchronizationList
      end
      def operation_list
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::OperationList
      end
      def share_synchronization
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ShareSynchronization
      end
      def dimension_properties
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::DimensionProperties
      end
      def operation_model_properties
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::OperationModelProperties
      end
      def operation_response
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::OperationResponse
      end
      def operation_meta_service_specification
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::OperationMetaServiceSpecification
      end
      def data_share_error
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::DataShareError
      end
      def account
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::Account
      end
      def consumer_invitation
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ConsumerInvitation
      end
      def data_set
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::DataSet
      end
      def data_set_mapping
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::DataSetMapping
      end
      def invitation
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::Invitation
      end
      def share
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::Share
      end
      def provider_share_subscription
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ProviderShareSubscription
      end
      def share_subscription
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ShareSubscription
      end
      def consumer_source_data_set
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ConsumerSourceDataSet
      end
      def synchronization_setting
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::SynchronizationSetting
      end
      def trigger
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::Trigger
      end
      def scheduled_synchronization_setting
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ScheduledSynchronizationSetting
      end
      def scheduled_trigger
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ScheduledTrigger
      end
      def blob_data_set
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::BlobDataSet
      end
      def blob_folder_data_set
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::BlobFolderDataSet
      end
      def blob_container_data_set
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::BlobContainerDataSet
      end
      def adlsgen2_file_data_set
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ADLSGen2FileDataSet
      end
      def adlsgen2_folder_data_set
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ADLSGen2FolderDataSet
      end
      def adlsgen2_file_system_data_set
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ADLSGen2FileSystemDataSet
      end
      def adlsgen1_folder_data_set
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ADLSGen1FolderDataSet
      end
      def adlsgen1_file_data_set
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ADLSGen1FileDataSet
      end
      def sql_dwtable_data_set
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::SqlDWTableDataSet
      end
      def sql_dbtable_data_set
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::SqlDBTableDataSet
      end
      def blob_data_set_mapping
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::BlobDataSetMapping
      end
      def blob_folder_data_set_mapping
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::BlobFolderDataSetMapping
      end
      def blob_container_data_set_mapping
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::BlobContainerDataSetMapping
      end
      def adlsgen2_file_data_set_mapping
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ADLSGen2FileDataSetMapping
      end
      def adlsgen2_folder_data_set_mapping
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ADLSGen2FolderDataSetMapping
      end
      def adlsgen2_file_system_data_set_mapping
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ADLSGen2FileSystemDataSetMapping
      end
      def sql_dwtable_data_set_mapping
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::SqlDWTableDataSetMapping
      end
      def sql_dbtable_data_set_mapping
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::SqlDBTableDataSetMapping
      end
      def scheduled_source_synchronization_setting
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ScheduledSourceSynchronizationSetting
      end
      def type
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::Type
      end
      def provisioning_state
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ProvisioningState
      end
      def status
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::Status
      end
      def invitation_status
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::InvitationStatus
      end
      def share_kind
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ShareKind
      end
      def data_set_type
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::DataSetType
      end
      def share_subscription_status
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::ShareSubscriptionStatus
      end
      def synchronization_mode
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::SynchronizationMode
      end
      def recurrence_interval
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::RecurrenceInterval
      end
      def trigger_status
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::TriggerStatus
      end
      def data_set_mapping_status
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::DataSetMappingStatus
      end
      def output_type
        Azure::DataShare::Mgmt::V2018_11_01_preview::Models::OutputType
      end
    end
  end
end
