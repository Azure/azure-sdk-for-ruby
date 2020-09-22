# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_digitaltwins'

module Azure::DigitalTwins::Profiles::Latest
  module Mgmt
    DigitalTwins = Azure::DigitalTwins::Mgmt::V2020_10_31::DigitalTwins
    DigitalTwinsEndpoint = Azure::DigitalTwins::Mgmt::V2020_10_31::DigitalTwinsEndpoint
    Operations = Azure::DigitalTwins::Mgmt::V2020_10_31::Operations

    module Models
      CheckNameRequest = Azure::DigitalTwins::Mgmt::V2020_10_31::Models::CheckNameRequest
      Operation = Azure::DigitalTwins::Mgmt::V2020_10_31::Models::Operation
      DigitalTwinsPatchDescription = Azure::DigitalTwins::Mgmt::V2020_10_31::Models::DigitalTwinsPatchDescription
      OperationListResult = Azure::DigitalTwins::Mgmt::V2020_10_31::Models::OperationListResult
      ErrorDefinition = Azure::DigitalTwins::Mgmt::V2020_10_31::Models::ErrorDefinition
      DigitalTwinsDescriptionListResult = Azure::DigitalTwins::Mgmt::V2020_10_31::Models::DigitalTwinsDescriptionListResult
      CheckNameResult = Azure::DigitalTwins::Mgmt::V2020_10_31::Models::CheckNameResult
      DigitalTwinsResource = Azure::DigitalTwins::Mgmt::V2020_10_31::Models::DigitalTwinsResource
      ExternalResource = Azure::DigitalTwins::Mgmt::V2020_10_31::Models::ExternalResource
      OperationDisplay = Azure::DigitalTwins::Mgmt::V2020_10_31::Models::OperationDisplay
      DigitalTwinsEndpointResourceProperties = Azure::DigitalTwins::Mgmt::V2020_10_31::Models::DigitalTwinsEndpointResourceProperties
      ErrorResponse = Azure::DigitalTwins::Mgmt::V2020_10_31::Models::ErrorResponse
      DigitalTwinsEndpointResourceListResult = Azure::DigitalTwins::Mgmt::V2020_10_31::Models::DigitalTwinsEndpointResourceListResult
      DigitalTwinsDescription = Azure::DigitalTwins::Mgmt::V2020_10_31::Models::DigitalTwinsDescription
      DigitalTwinsEndpointResource = Azure::DigitalTwins::Mgmt::V2020_10_31::Models::DigitalTwinsEndpointResource
      ServiceBus = Azure::DigitalTwins::Mgmt::V2020_10_31::Models::ServiceBus
      EventHub = Azure::DigitalTwins::Mgmt::V2020_10_31::Models::EventHub
      EventGrid = Azure::DigitalTwins::Mgmt::V2020_10_31::Models::EventGrid
      ProvisioningState = Azure::DigitalTwins::Mgmt::V2020_10_31::Models::ProvisioningState
      Reason = Azure::DigitalTwins::Mgmt::V2020_10_31::Models::Reason
      EndpointProvisioningState = Azure::DigitalTwins::Mgmt::V2020_10_31::Models::EndpointProvisioningState
    end

    #
    # DigitalTwinsManagementClass
    #
    class DigitalTwinsManagementClass
      attr_reader :digital_twins, :digital_twins_endpoint, :operations, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::DigitalTwins::Mgmt::V2020_10_31::AzureDigitalTwinsManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @digital_twins = @client_0.digital_twins
        @digital_twins_endpoint = @client_0.digital_twins_endpoint
        @operations = @client_0.operations

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/DigitalTwins/Mgmt'
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
      def check_name_request
        Azure::DigitalTwins::Mgmt::V2020_10_31::Models::CheckNameRequest
      end
      def operation
        Azure::DigitalTwins::Mgmt::V2020_10_31::Models::Operation
      end
      def digital_twins_patch_description
        Azure::DigitalTwins::Mgmt::V2020_10_31::Models::DigitalTwinsPatchDescription
      end
      def operation_list_result
        Azure::DigitalTwins::Mgmt::V2020_10_31::Models::OperationListResult
      end
      def error_definition
        Azure::DigitalTwins::Mgmt::V2020_10_31::Models::ErrorDefinition
      end
      def digital_twins_description_list_result
        Azure::DigitalTwins::Mgmt::V2020_10_31::Models::DigitalTwinsDescriptionListResult
      end
      def check_name_result
        Azure::DigitalTwins::Mgmt::V2020_10_31::Models::CheckNameResult
      end
      def digital_twins_resource
        Azure::DigitalTwins::Mgmt::V2020_10_31::Models::DigitalTwinsResource
      end
      def external_resource
        Azure::DigitalTwins::Mgmt::V2020_10_31::Models::ExternalResource
      end
      def operation_display
        Azure::DigitalTwins::Mgmt::V2020_10_31::Models::OperationDisplay
      end
      def digital_twins_endpoint_resource_properties
        Azure::DigitalTwins::Mgmt::V2020_10_31::Models::DigitalTwinsEndpointResourceProperties
      end
      def error_response
        Azure::DigitalTwins::Mgmt::V2020_10_31::Models::ErrorResponse
      end
      def digital_twins_endpoint_resource_list_result
        Azure::DigitalTwins::Mgmt::V2020_10_31::Models::DigitalTwinsEndpointResourceListResult
      end
      def digital_twins_description
        Azure::DigitalTwins::Mgmt::V2020_10_31::Models::DigitalTwinsDescription
      end
      def digital_twins_endpoint_resource
        Azure::DigitalTwins::Mgmt::V2020_10_31::Models::DigitalTwinsEndpointResource
      end
      def service_bus
        Azure::DigitalTwins::Mgmt::V2020_10_31::Models::ServiceBus
      end
      def event_hub
        Azure::DigitalTwins::Mgmt::V2020_10_31::Models::EventHub
      end
      def event_grid
        Azure::DigitalTwins::Mgmt::V2020_10_31::Models::EventGrid
      end
      def provisioning_state
        Azure::DigitalTwins::Mgmt::V2020_10_31::Models::ProvisioningState
      end
      def reason
        Azure::DigitalTwins::Mgmt::V2020_10_31::Models::Reason
      end
      def endpoint_provisioning_state
        Azure::DigitalTwins::Mgmt::V2020_10_31::Models::EndpointProvisioningState
      end
    end
  end
end
