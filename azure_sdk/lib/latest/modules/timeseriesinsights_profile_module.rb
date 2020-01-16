# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_time_series_insights'

module Azure::Profiles::Latest
  module TimeSeriesInsights
    module Mgmt
      Operations = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Operations
      Environments = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Environments
      EventSources = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::EventSources
      ReferenceDataSets = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::ReferenceDataSets
      AccessPolicies = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::AccessPolicies

      module Models
        EnvironmentListResponse = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EnvironmentListResponse
        EnvironmentStateDetails = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EnvironmentStateDetails
        Operation = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::Operation
        IngressEnvironmentStatus = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::IngressEnvironmentStatus
        Resource = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::Resource
        WarmStorageEnvironmentStatus = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::WarmStorageEnvironmentStatus
        ResourceProperties = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::ResourceProperties
        EnvironmentStatus = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EnvironmentStatus
        LongTermStorageConfigurationInput = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::LongTermStorageConfigurationInput
        Sku = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::Sku
        LongTermStorageConfigurationOutput = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::LongTermStorageConfigurationOutput
        CreateOrUpdateTrackedResourceProperties = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::CreateOrUpdateTrackedResourceProperties
        LocalTimestampTimeZoneOffset = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::LocalTimestampTimeZoneOffset
        TimeSeriesIdProperty = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::TimeSeriesIdProperty
        LocalTimestamp = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::LocalTimestamp
        LongTermStorageConfigurationMutableProperties = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::LongTermStorageConfigurationMutableProperties
        AccessPolicyCreateOrUpdateParameters = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::AccessPolicyCreateOrUpdateParameters
        ReferenceDataSetKeyProperty = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::ReferenceDataSetKeyProperty
        AccessPolicyUpdateParameters = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::AccessPolicyUpdateParameters
        EventSourceListResponse = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EventSourceListResponse
        ReferenceDataSetListResponse = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::ReferenceDataSetListResponse
        OperationListResult = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::OperationListResult
        EventSourceMutableProperties = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EventSourceMutableProperties
        EnvironmentUpdateParameters = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EnvironmentUpdateParameters
        OperationDisplay = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::OperationDisplay
        ReferenceDataSetUpdateParameters = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::ReferenceDataSetUpdateParameters
        AccessPolicyListResponse = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::AccessPolicyListResponse
        EventSourceUpdateParameters = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EventSourceUpdateParameters
        TrackedResource = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::TrackedResource
        EnvironmentCreateOrUpdateParameters = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EnvironmentCreateOrUpdateParameters
        StandardEnvironmentCreateOrUpdateParameters = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::StandardEnvironmentCreateOrUpdateParameters
        LongTermEnvironmentCreateOrUpdateParameters = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::LongTermEnvironmentCreateOrUpdateParameters
        StandardEnvironmentUpdateParameters = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::StandardEnvironmentUpdateParameters
        LongTermEnvironmentUpdateParameters = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::LongTermEnvironmentUpdateParameters
        EnvironmentResource = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EnvironmentResource
        StandardEnvironmentResource = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::StandardEnvironmentResource
        LongTermEnvironmentResource = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::LongTermEnvironmentResource
        EnvironmentResourceProperties = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EnvironmentResourceProperties
        EventSourceCreateOrUpdateParameters = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EventSourceCreateOrUpdateParameters
        EventHubEventSourceCreateOrUpdateParameters = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EventHubEventSourceCreateOrUpdateParameters
        IoTHubEventSourceCreateOrUpdateParameters = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::IoTHubEventSourceCreateOrUpdateParameters
        EventHubEventSourceUpdateParameters = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EventHubEventSourceUpdateParameters
        IoTHubEventSourceUpdateParameters = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::IoTHubEventSourceUpdateParameters
        EventSourceResource = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EventSourceResource
        EventHubEventSourceResource = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EventHubEventSourceResource
        IoTHubEventSourceResource = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::IoTHubEventSourceResource
        EventSourceCommonProperties = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EventSourceCommonProperties
        AzureEventSourceProperties = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::AzureEventSourceProperties
        EventHubEventSourceCommonProperties = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EventHubEventSourceCommonProperties
        IoTHubEventSourceCommonProperties = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::IoTHubEventSourceCommonProperties
        ReferenceDataSetCreateOrUpdateParameters = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::ReferenceDataSetCreateOrUpdateParameters
        ReferenceDataSetResource = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::ReferenceDataSetResource
        AccessPolicyResource = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::AccessPolicyResource
        ProvisioningState = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::ProvisioningState
        SkuName = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::SkuName
        StorageLimitExceededBehavior = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::StorageLimitExceededBehavior
        PropertyType = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::PropertyType
        IngressState = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::IngressState
        WarmStoragePropertiesState = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::WarmStoragePropertiesState
        LocalTimestampFormat = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::LocalTimestampFormat
        ReferenceDataKeyPropertyType = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::ReferenceDataKeyPropertyType
        DataStringComparisonBehavior = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::DataStringComparisonBehavior
        AccessPolicyRole = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::AccessPolicyRole
      end

      class TimeSeriesInsightsManagementClass
        attr_reader :operations, :environments, :event_sources, :reference_data_sets, :access_policies, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::TimeSeriesInsightsClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @environments = @client_0.environments
          @event_sources = @client_0.event_sources
          @reference_data_sets = @client_0.reference_data_sets
          @access_policies = @client_0.access_policies

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/TimeSeriesInsights/Mgmt"
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
          def environment_list_response
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EnvironmentListResponse
          end
          def environment_state_details
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EnvironmentStateDetails
          end
          def operation
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::Operation
          end
          def ingress_environment_status
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::IngressEnvironmentStatus
          end
          def resource
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::Resource
          end
          def warm_storage_environment_status
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::WarmStorageEnvironmentStatus
          end
          def resource_properties
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::ResourceProperties
          end
          def environment_status
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EnvironmentStatus
          end
          def long_term_storage_configuration_input
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::LongTermStorageConfigurationInput
          end
          def sku
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::Sku
          end
          def long_term_storage_configuration_output
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::LongTermStorageConfigurationOutput
          end
          def create_or_update_tracked_resource_properties
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::CreateOrUpdateTrackedResourceProperties
          end
          def local_timestamp_time_zone_offset
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::LocalTimestampTimeZoneOffset
          end
          def time_series_id_property
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::TimeSeriesIdProperty
          end
          def local_timestamp
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::LocalTimestamp
          end
          def long_term_storage_configuration_mutable_properties
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::LongTermStorageConfigurationMutableProperties
          end
          def access_policy_create_or_update_parameters
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::AccessPolicyCreateOrUpdateParameters
          end
          def reference_data_set_key_property
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::ReferenceDataSetKeyProperty
          end
          def access_policy_update_parameters
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::AccessPolicyUpdateParameters
          end
          def event_source_list_response
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EventSourceListResponse
          end
          def reference_data_set_list_response
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::ReferenceDataSetListResponse
          end
          def operation_list_result
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::OperationListResult
          end
          def event_source_mutable_properties
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EventSourceMutableProperties
          end
          def environment_update_parameters
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EnvironmentUpdateParameters
          end
          def operation_display
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::OperationDisplay
          end
          def reference_data_set_update_parameters
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::ReferenceDataSetUpdateParameters
          end
          def access_policy_list_response
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::AccessPolicyListResponse
          end
          def event_source_update_parameters
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EventSourceUpdateParameters
          end
          def tracked_resource
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::TrackedResource
          end
          def environment_create_or_update_parameters
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EnvironmentCreateOrUpdateParameters
          end
          def standard_environment_create_or_update_parameters
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::StandardEnvironmentCreateOrUpdateParameters
          end
          def long_term_environment_create_or_update_parameters
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::LongTermEnvironmentCreateOrUpdateParameters
          end
          def standard_environment_update_parameters
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::StandardEnvironmentUpdateParameters
          end
          def long_term_environment_update_parameters
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::LongTermEnvironmentUpdateParameters
          end
          def environment_resource
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EnvironmentResource
          end
          def standard_environment_resource
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::StandardEnvironmentResource
          end
          def long_term_environment_resource
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::LongTermEnvironmentResource
          end
          def environment_resource_properties
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EnvironmentResourceProperties
          end
          def event_source_create_or_update_parameters
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EventSourceCreateOrUpdateParameters
          end
          def event_hub_event_source_create_or_update_parameters
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EventHubEventSourceCreateOrUpdateParameters
          end
          def io_thub_event_source_create_or_update_parameters
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::IoTHubEventSourceCreateOrUpdateParameters
          end
          def event_hub_event_source_update_parameters
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EventHubEventSourceUpdateParameters
          end
          def io_thub_event_source_update_parameters
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::IoTHubEventSourceUpdateParameters
          end
          def event_source_resource
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EventSourceResource
          end
          def event_hub_event_source_resource
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EventHubEventSourceResource
          end
          def io_thub_event_source_resource
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::IoTHubEventSourceResource
          end
          def event_source_common_properties
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EventSourceCommonProperties
          end
          def azure_event_source_properties
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::AzureEventSourceProperties
          end
          def event_hub_event_source_common_properties
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EventHubEventSourceCommonProperties
          end
          def io_thub_event_source_common_properties
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::IoTHubEventSourceCommonProperties
          end
          def reference_data_set_create_or_update_parameters
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::ReferenceDataSetCreateOrUpdateParameters
          end
          def reference_data_set_resource
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::ReferenceDataSetResource
          end
          def access_policy_resource
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::AccessPolicyResource
          end
          def provisioning_state
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::ProvisioningState
          end
          def sku_name
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::SkuName
          end
          def storage_limit_exceeded_behavior
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::StorageLimitExceededBehavior
          end
          def property_type
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::PropertyType
          end
          def ingress_state
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::IngressState
          end
          def warm_storage_properties_state
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::WarmStoragePropertiesState
          end
          def local_timestamp_format
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::LocalTimestampFormat
          end
          def reference_data_key_property_type
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::ReferenceDataKeyPropertyType
          end
          def data_string_comparison_behavior
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::DataStringComparisonBehavior
          end
          def access_policy_role
            Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::AccessPolicyRole
          end
        end
      end
    end
  end
end
