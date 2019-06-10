# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_signalr'

module Azure::Profiles::Latest
  module Signalr
    module Mgmt
      Usages = Azure::Signalr::Mgmt::V2018_03_01_preview::Usages
      Operations = Azure::Signalr::Mgmt::V2018_03_01_preview::Operations
      SignalR = Azure::Signalr::Mgmt::V2018_03_01_preview::SignalR

      module Models
        OperationList = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::OperationList
        Dimension = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::Dimension
        MetricSpecification = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::MetricSpecification
        TrackedResource = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::TrackedResource
        SignalRResourceList = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRResourceList
        SignalRUsageList = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRUsageList
        RegenerateKeyParameters = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::RegenerateKeyParameters
        SignalRCreateOrUpdateProperties = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRCreateOrUpdateProperties
        SignalRKeys = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRKeys
        OperationProperties = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::OperationProperties
        Resource = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::Resource
        NameAvailability = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::NameAvailability
        SignalRUsage = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRUsage
        SignalRUsageName = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRUsageName
        SignalRResource = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRResource
        SignalRCreateParameters = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRCreateParameters
        NameAvailabilityParameters = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::NameAvailabilityParameters
        SignalRSkuTier = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRSkuTier
        OperationDisplay = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::OperationDisplay
        Operation = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::Operation
        SignalRUpdateParameters = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRUpdateParameters
        ProvisioningState = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::ProvisioningState
        KeyType = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::KeyType
        ServiceSpecification = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::ServiceSpecification
        ResourceSku = Azure::Signalr::Mgmt::V2018_03_01_preview::Models::ResourceSku
      end

      class SignalrManagementClass
        attr_reader :usages, :operations, :signal_r, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Signalr::Mgmt::V2018_03_01_preview::SignalRManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @usages = @client_0.usages
          @operations = @client_0.operations
          @signal_r = @client_0.signal_r

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
          def operation_list
            Azure::Signalr::Mgmt::V2018_03_01_preview::Models::OperationList
          end
          def dimension
            Azure::Signalr::Mgmt::V2018_03_01_preview::Models::Dimension
          end
          def metric_specification
            Azure::Signalr::Mgmt::V2018_03_01_preview::Models::MetricSpecification
          end
          def tracked_resource
            Azure::Signalr::Mgmt::V2018_03_01_preview::Models::TrackedResource
          end
          def signal_rresource_list
            Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRResourceList
          end
          def signal_rusage_list
            Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRUsageList
          end
          def regenerate_key_parameters
            Azure::Signalr::Mgmt::V2018_03_01_preview::Models::RegenerateKeyParameters
          end
          def signal_rcreate_or_update_properties
            Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRCreateOrUpdateProperties
          end
          def signal_rkeys
            Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRKeys
          end
          def operation_properties
            Azure::Signalr::Mgmt::V2018_03_01_preview::Models::OperationProperties
          end
          def resource
            Azure::Signalr::Mgmt::V2018_03_01_preview::Models::Resource
          end
          def name_availability
            Azure::Signalr::Mgmt::V2018_03_01_preview::Models::NameAvailability
          end
          def signal_rusage
            Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRUsage
          end
          def signal_rusage_name
            Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRUsageName
          end
          def signal_rresource
            Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRResource
          end
          def signal_rcreate_parameters
            Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRCreateParameters
          end
          def name_availability_parameters
            Azure::Signalr::Mgmt::V2018_03_01_preview::Models::NameAvailabilityParameters
          end
          def signal_rsku_tier
            Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRSkuTier
          end
          def operation_display
            Azure::Signalr::Mgmt::V2018_03_01_preview::Models::OperationDisplay
          end
          def operation
            Azure::Signalr::Mgmt::V2018_03_01_preview::Models::Operation
          end
          def signal_rupdate_parameters
            Azure::Signalr::Mgmt::V2018_03_01_preview::Models::SignalRUpdateParameters
          end
          def provisioning_state
            Azure::Signalr::Mgmt::V2018_03_01_preview::Models::ProvisioningState
          end
          def key_type
            Azure::Signalr::Mgmt::V2018_03_01_preview::Models::KeyType
          end
          def service_specification
            Azure::Signalr::Mgmt::V2018_03_01_preview::Models::ServiceSpecification
          end
          def resource_sku
            Azure::Signalr::Mgmt::V2018_03_01_preview::Models::ResourceSku
          end
        end
      end
    end
  end
end
