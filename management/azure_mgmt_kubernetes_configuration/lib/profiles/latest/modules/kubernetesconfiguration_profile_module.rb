# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_kubernetes_configuration'

module Azure::KubernetesConfiguration::Profiles::Latest
  module Mgmt
    SourceControlConfigurations = Azure::KubernetesConfiguration::Mgmt::V2021_03_01::SourceControlConfigurations
    Operations = Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Operations

    module Models
      SourceControlConfigurationList = Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::SourceControlConfigurationList
      ResourceProviderOperationDisplay = Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::ResourceProviderOperationDisplay
      ErrorDefinition = Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::ErrorDefinition
      ResourceProviderOperation = Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::ResourceProviderOperation
      ComplianceStatus = Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::ComplianceStatus
      ResourceProviderOperationList = Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::ResourceProviderOperationList
      SystemData = Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::SystemData
      HelmOperatorProperties = Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::HelmOperatorProperties
      Result = Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::Result
      Resource = Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::Resource
      ErrorResponse = Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::ErrorResponse
      SourceControlConfiguration = Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::SourceControlConfiguration
      TrackedResource = Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::TrackedResource
      AzureEntityResource = Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::AzureEntityResource
      ProxyResource = Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::ProxyResource
      ComplianceStateType = Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::ComplianceStateType
      MessageLevelType = Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::MessageLevelType
      OperatorType = Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::OperatorType
      OperatorScopeType = Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::OperatorScopeType
      ProvisioningStateType = Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::ProvisioningStateType
      CreatedByType = Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::CreatedByType
    end

    #
    # KubernetesConfigurationManagementClass
    #
    class KubernetesConfigurationManagementClass
      attr_reader :source_control_configurations, :operations, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::KubernetesConfiguration::Mgmt::V2021_03_01::SourceControlConfigurationClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @source_control_configurations = @client_0.source_control_configurations
        @operations = @client_0.operations

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/KubernetesConfiguration/Mgmt'
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
      def source_control_configuration_list
        Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::SourceControlConfigurationList
      end
      def resource_provider_operation_display
        Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::ResourceProviderOperationDisplay
      end
      def error_definition
        Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::ErrorDefinition
      end
      def resource_provider_operation
        Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::ResourceProviderOperation
      end
      def compliance_status
        Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::ComplianceStatus
      end
      def resource_provider_operation_list
        Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::ResourceProviderOperationList
      end
      def system_data
        Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::SystemData
      end
      def helm_operator_properties
        Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::HelmOperatorProperties
      end
      def result
        Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::Result
      end
      def resource
        Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::Resource
      end
      def error_response
        Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::ErrorResponse
      end
      def source_control_configuration
        Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::SourceControlConfiguration
      end
      def tracked_resource
        Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::TrackedResource
      end
      def azure_entity_resource
        Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::AzureEntityResource
      end
      def proxy_resource
        Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::ProxyResource
      end
      def compliance_state_type
        Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::ComplianceStateType
      end
      def message_level_type
        Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::MessageLevelType
      end
      def operator_type
        Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::OperatorType
      end
      def operator_scope_type
        Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::OperatorScopeType
      end
      def provisioning_state_type
        Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::ProvisioningStateType
      end
      def created_by_type
        Azure::KubernetesConfiguration::Mgmt::V2021_03_01::Models::CreatedByType
      end
    end
  end
end
