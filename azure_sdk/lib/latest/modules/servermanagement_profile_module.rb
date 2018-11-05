# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_server_management'

module Azure::Profiles::Latest
  module ServerManagement
    module Mgmt
      Node = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Node
      Session = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Session
      Gateway = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Gateway
      PowerShell = Azure::ServerManagement::Mgmt::V2016_07_01_preview::PowerShell

      module Models
        GatewayResource = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::GatewayResource
        NodeResource = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::NodeResource
        SessionResource = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::SessionResource
        PowerShellCommandParameters = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PowerShellCommandParameters
        PowerShellSessionResource = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PowerShellSessionResource
        PowerShellCommandStatus = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PowerShellCommandStatus
        NodeParameters = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::NodeParameters
        CredentialDataFormat = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::CredentialDataFormat
        RetentionPeriod = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::RetentionPeriod
        GatewayExpandOption = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::GatewayExpandOption
        PromptFieldType = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PromptFieldType
        PowerShellExpandOption = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PowerShellExpandOption
        Resource = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::Resource
        UpgradeMode = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::UpgradeMode
        EncryptionJwkResource = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::EncryptionJwkResource
        GatewayStatus = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::GatewayStatus
        GatewayResources = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::GatewayResources
        PromptFieldDescription = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PromptFieldDescription
        GatewayParameters = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::GatewayParameters
        PowerShellCommandResult = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PowerShellCommandResult
        NodeResources = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::NodeResources
        Version = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::Version
        PowerShellCommandResults = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PowerShellCommandResults
        SessionParameters = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::SessionParameters
        GatewayProfile = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::GatewayProfile
        PowerShellTabCompletionResults = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PowerShellTabCompletionResults
        PowerShellSessionResources = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PowerShellSessionResources
        Error = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::Error
        PowerShellTabCompletionParameters = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PowerShellTabCompletionParameters
        PromptMessageResponse = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PromptMessageResponse
      end

      class ServerManagementManagementClass
        attr_reader :node, :session, :gateway, :power_shell, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::ServerManagement::Mgmt::V2016_07_01_preview::ServerManagement.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @node = @client_0.node
          @session = @client_0.session
          @gateway = @client_0.gateway
          @power_shell = @client_0.power_shell

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/ServerManagement/Mgmt"
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
          def gateway_resource
            Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::GatewayResource
          end
          def node_resource
            Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::NodeResource
          end
          def session_resource
            Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::SessionResource
          end
          def power_shell_command_parameters
            Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PowerShellCommandParameters
          end
          def power_shell_session_resource
            Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PowerShellSessionResource
          end
          def power_shell_command_status
            Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PowerShellCommandStatus
          end
          def node_parameters
            Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::NodeParameters
          end
          def credential_data_format
            Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::CredentialDataFormat
          end
          def retention_period
            Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::RetentionPeriod
          end
          def gateway_expand_option
            Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::GatewayExpandOption
          end
          def prompt_field_type
            Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PromptFieldType
          end
          def power_shell_expand_option
            Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PowerShellExpandOption
          end
          def resource
            Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::Resource
          end
          def upgrade_mode
            Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::UpgradeMode
          end
          def encryption_jwk_resource
            Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::EncryptionJwkResource
          end
          def gateway_status
            Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::GatewayStatus
          end
          def gateway_resources
            Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::GatewayResources
          end
          def prompt_field_description
            Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PromptFieldDescription
          end
          def gateway_parameters
            Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::GatewayParameters
          end
          def power_shell_command_result
            Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PowerShellCommandResult
          end
          def node_resources
            Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::NodeResources
          end
          def version
            Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::Version
          end
          def power_shell_command_results
            Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PowerShellCommandResults
          end
          def session_parameters
            Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::SessionParameters
          end
          def gateway_profile
            Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::GatewayProfile
          end
          def power_shell_tab_completion_results
            Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PowerShellTabCompletionResults
          end
          def power_shell_session_resources
            Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PowerShellSessionResources
          end
          def error
            Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::Error
          end
          def power_shell_tab_completion_parameters
            Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PowerShellTabCompletionParameters
          end
          def prompt_message_response
            Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PromptMessageResponse
          end
        end
      end
    end
  end
end
