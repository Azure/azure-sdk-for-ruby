# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_kubernetes_configuration'

module Azure::Profiles::Latest
  module KubernetesConfiguration
    module Mgmt
      SourceControlConfigurations = Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::SourceControlConfigurations
      Operations = Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Operations

      module Models
        HelmOperatorProperties = Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Models::HelmOperatorProperties
        Resource = Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Models::Resource
        ResourceProviderOperationList = Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Models::ResourceProviderOperationList
        Result = Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Models::Result
        ErrorResponse = Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Models::ErrorResponse
        SourceControlConfigurationList = Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Models::SourceControlConfigurationList
        ErrorDefinition = Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Models::ErrorDefinition
        ResourceProviderOperationDisplay = Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Models::ResourceProviderOperationDisplay
        ComplianceStatus = Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Models::ComplianceStatus
        ResourceProviderOperation = Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Models::ResourceProviderOperation
        ProxyResource = Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Models::ProxyResource
        SourceControlConfiguration = Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Models::SourceControlConfiguration
        ComplianceState = Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Models::ComplianceState
        MessageLevel = Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Models::MessageLevel
        OperatorType = Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Models::OperatorType
        OperatorScope = Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Models::OperatorScope
        EnableHelmOperator = Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Models::EnableHelmOperator
        ProvisioningState = Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Models::ProvisioningState
      end

      class KubernetesConfigurationManagementClass
        attr_reader :source_control_configurations, :operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::SourceControlConfigurationClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @source_control_configurations = @client_0.source_control_configurations
          @operations = @client_0.operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/KubernetesConfiguration/Mgmt"
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
          def helm_operator_properties
            Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Models::HelmOperatorProperties
          end
          def resource
            Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Models::Resource
          end
          def resource_provider_operation_list
            Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Models::ResourceProviderOperationList
          end
          def result
            Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Models::Result
          end
          def error_response
            Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Models::ErrorResponse
          end
          def source_control_configuration_list
            Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Models::SourceControlConfigurationList
          end
          def error_definition
            Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Models::ErrorDefinition
          end
          def resource_provider_operation_display
            Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Models::ResourceProviderOperationDisplay
          end
          def compliance_status
            Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Models::ComplianceStatus
          end
          def resource_provider_operation
            Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Models::ResourceProviderOperation
          end
          def proxy_resource
            Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Models::ProxyResource
          end
          def source_control_configuration
            Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Models::SourceControlConfiguration
          end
          def compliance_state
            Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Models::ComplianceState
          end
          def message_level
            Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Models::MessageLevel
          end
          def operator_type
            Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Models::OperatorType
          end
          def operator_scope
            Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Models::OperatorScope
          end
          def enable_helm_operator
            Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Models::EnableHelmOperator
          end
          def provisioning_state
            Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview::Models::ProvisioningState
          end
        end
      end
    end
  end
end
