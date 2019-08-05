# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_signalr'

module Azure::Profiles::Latest
  module Signalr
    module Mgmt
      Operations = Azure::Signalr::Mgmt::V2018_10_01::Operations
      SignalR = Azure::Signalr::Mgmt::V2018_10_01::SignalR
      Usages = Azure::Signalr::Mgmt::V2018_10_01::Usages

      module Models
        SignalRResourceList = Azure::Signalr::Mgmt::V2018_10_01::Models::SignalRResourceList
        Dimension = Azure::Signalr::Mgmt::V2018_10_01::Models::Dimension
        SignalRUsageList = Azure::Signalr::Mgmt::V2018_10_01::Models::SignalRUsageList
        ServiceSpecification = Azure::Signalr::Mgmt::V2018_10_01::Models::ServiceSpecification
        Resource = Azure::Signalr::Mgmt::V2018_10_01::Models::Resource
        Operation = Azure::Signalr::Mgmt::V2018_10_01::Models::Operation
        SignalRFeature = Azure::Signalr::Mgmt::V2018_10_01::Models::SignalRFeature
        NameAvailabilityParameters = Azure::Signalr::Mgmt::V2018_10_01::Models::NameAvailabilityParameters
        SignalRCorsSettings = Azure::Signalr::Mgmt::V2018_10_01::Models::SignalRCorsSettings
        ResourceSku = Azure::Signalr::Mgmt::V2018_10_01::Models::ResourceSku
        SignalRCreateOrUpdateProperties = Azure::Signalr::Mgmt::V2018_10_01::Models::SignalRCreateOrUpdateProperties
        MetricSpecification = Azure::Signalr::Mgmt::V2018_10_01::Models::MetricSpecification
        SignalRKeys = Azure::Signalr::Mgmt::V2018_10_01::Models::SignalRKeys
        OperationList = Azure::Signalr::Mgmt::V2018_10_01::Models::OperationList
        RegenerateKeyParameters = Azure::Signalr::Mgmt::V2018_10_01::Models::RegenerateKeyParameters
        OperationDisplay = Azure::Signalr::Mgmt::V2018_10_01::Models::OperationDisplay
        SignalRUsage = Azure::Signalr::Mgmt::V2018_10_01::Models::SignalRUsage
        NameAvailability = Azure::Signalr::Mgmt::V2018_10_01::Models::NameAvailability
        SignalRUpdateParameters = Azure::Signalr::Mgmt::V2018_10_01::Models::SignalRUpdateParameters
        OperationProperties = Azure::Signalr::Mgmt::V2018_10_01::Models::OperationProperties
        SignalRUsageName = Azure::Signalr::Mgmt::V2018_10_01::Models::SignalRUsageName
        TrackedResource = Azure::Signalr::Mgmt::V2018_10_01::Models::TrackedResource
        SignalRResource = Azure::Signalr::Mgmt::V2018_10_01::Models::SignalRResource
        SignalRCreateParameters = Azure::Signalr::Mgmt::V2018_10_01::Models::SignalRCreateParameters
        SignalRSkuTier = Azure::Signalr::Mgmt::V2018_10_01::Models::SignalRSkuTier
        ProvisioningState = Azure::Signalr::Mgmt::V2018_10_01::Models::ProvisioningState
        KeyType = Azure::Signalr::Mgmt::V2018_10_01::Models::KeyType
      end

      class SignalrManagementClass
        attr_reader :operations, :signal_r, :usages, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Signalr::Mgmt::V2018_10_01::SignalRManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @signal_r = @client_0.signal_r
          @usages = @client_0.usages

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Signalr/Mgmt"
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
          def signal_rresource_list
            Azure::Signalr::Mgmt::V2018_10_01::Models::SignalRResourceList
          end
          def dimension
            Azure::Signalr::Mgmt::V2018_10_01::Models::Dimension
          end
          def signal_rusage_list
            Azure::Signalr::Mgmt::V2018_10_01::Models::SignalRUsageList
          end
          def service_specification
            Azure::Signalr::Mgmt::V2018_10_01::Models::ServiceSpecification
          end
          def resource
            Azure::Signalr::Mgmt::V2018_10_01::Models::Resource
          end
          def operation
            Azure::Signalr::Mgmt::V2018_10_01::Models::Operation
          end
          def signal_rfeature
            Azure::Signalr::Mgmt::V2018_10_01::Models::SignalRFeature
          end
          def name_availability_parameters
            Azure::Signalr::Mgmt::V2018_10_01::Models::NameAvailabilityParameters
          end
          def signal_rcors_settings
            Azure::Signalr::Mgmt::V2018_10_01::Models::SignalRCorsSettings
          end
          def resource_sku
            Azure::Signalr::Mgmt::V2018_10_01::Models::ResourceSku
          end
          def signal_rcreate_or_update_properties
            Azure::Signalr::Mgmt::V2018_10_01::Models::SignalRCreateOrUpdateProperties
          end
          def metric_specification
            Azure::Signalr::Mgmt::V2018_10_01::Models::MetricSpecification
          end
          def signal_rkeys
            Azure::Signalr::Mgmt::V2018_10_01::Models::SignalRKeys
          end
          def operation_list
            Azure::Signalr::Mgmt::V2018_10_01::Models::OperationList
          end
          def regenerate_key_parameters
            Azure::Signalr::Mgmt::V2018_10_01::Models::RegenerateKeyParameters
          end
          def operation_display
            Azure::Signalr::Mgmt::V2018_10_01::Models::OperationDisplay
          end
          def signal_rusage
            Azure::Signalr::Mgmt::V2018_10_01::Models::SignalRUsage
          end
          def name_availability
            Azure::Signalr::Mgmt::V2018_10_01::Models::NameAvailability
          end
          def signal_rupdate_parameters
            Azure::Signalr::Mgmt::V2018_10_01::Models::SignalRUpdateParameters
          end
          def operation_properties
            Azure::Signalr::Mgmt::V2018_10_01::Models::OperationProperties
          end
          def signal_rusage_name
            Azure::Signalr::Mgmt::V2018_10_01::Models::SignalRUsageName
          end
          def tracked_resource
            Azure::Signalr::Mgmt::V2018_10_01::Models::TrackedResource
          end
          def signal_rresource
            Azure::Signalr::Mgmt::V2018_10_01::Models::SignalRResource
          end
          def signal_rcreate_parameters
            Azure::Signalr::Mgmt::V2018_10_01::Models::SignalRCreateParameters
          end
          def signal_rsku_tier
            Azure::Signalr::Mgmt::V2018_10_01::Models::SignalRSkuTier
          end
          def provisioning_state
            Azure::Signalr::Mgmt::V2018_10_01::Models::ProvisioningState
          end
          def key_type
            Azure::Signalr::Mgmt::V2018_10_01::Models::KeyType
          end
        end
      end
    end
  end
end
