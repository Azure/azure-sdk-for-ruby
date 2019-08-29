# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_attestation'

module Azure::Attestation::Profiles::Latest
  module Mgmt
    Operations = Azure::Attestation::Mgmt::V2018_09_01_preview::Operations
    AttestationProviders = Azure::Attestation::Mgmt::V2018_09_01_preview::AttestationProviders

    module Models
      AttestationProviderListResult = Azure::Attestation::Mgmt::V2018_09_01_preview::Models::AttestationProviderListResult
      OperationsDefinition = Azure::Attestation::Mgmt::V2018_09_01_preview::Models::OperationsDefinition
      AttestationServiceCreationParams = Azure::Attestation::Mgmt::V2018_09_01_preview::Models::AttestationServiceCreationParams
      OperationsDisplayDefinition = Azure::Attestation::Mgmt::V2018_09_01_preview::Models::OperationsDisplayDefinition
      OperationList = Azure::Attestation::Mgmt::V2018_09_01_preview::Models::OperationList
      Resource = Azure::Attestation::Mgmt::V2018_09_01_preview::Models::Resource
      AttestationProvider = Azure::Attestation::Mgmt::V2018_09_01_preview::Models::AttestationProvider
      ProxyResource = Azure::Attestation::Mgmt::V2018_09_01_preview::Models::ProxyResource
      TrackedResource = Azure::Attestation::Mgmt::V2018_09_01_preview::Models::TrackedResource
      AzureEntityResource = Azure::Attestation::Mgmt::V2018_09_01_preview::Models::AzureEntityResource
      AttestationServiceStatus = Azure::Attestation::Mgmt::V2018_09_01_preview::Models::AttestationServiceStatus
    end

    #
    # AttestationManagementClass
    #
    class AttestationManagementClass
      attr_reader :operations, :attestation_providers, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::Attestation::Mgmt::V2018_09_01_preview::AttestationManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @operations = @client_0.operations
        @attestation_providers = @client_0.attestation_providers

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Attestation/Mgmt'
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
      def attestation_provider_list_result
        Azure::Attestation::Mgmt::V2018_09_01_preview::Models::AttestationProviderListResult
      end
      def operations_definition
        Azure::Attestation::Mgmt::V2018_09_01_preview::Models::OperationsDefinition
      end
      def attestation_service_creation_params
        Azure::Attestation::Mgmt::V2018_09_01_preview::Models::AttestationServiceCreationParams
      end
      def operations_display_definition
        Azure::Attestation::Mgmt::V2018_09_01_preview::Models::OperationsDisplayDefinition
      end
      def operation_list
        Azure::Attestation::Mgmt::V2018_09_01_preview::Models::OperationList
      end
      def resource
        Azure::Attestation::Mgmt::V2018_09_01_preview::Models::Resource
      end
      def attestation_provider
        Azure::Attestation::Mgmt::V2018_09_01_preview::Models::AttestationProvider
      end
      def proxy_resource
        Azure::Attestation::Mgmt::V2018_09_01_preview::Models::ProxyResource
      end
      def tracked_resource
        Azure::Attestation::Mgmt::V2018_09_01_preview::Models::TrackedResource
      end
      def azure_entity_resource
        Azure::Attestation::Mgmt::V2018_09_01_preview::Models::AzureEntityResource
      end
      def attestation_service_status
        Azure::Attestation::Mgmt::V2018_09_01_preview::Models::AttestationServiceStatus
      end
    end
  end
end
