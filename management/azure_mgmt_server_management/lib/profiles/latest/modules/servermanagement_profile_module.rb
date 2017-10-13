# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_server_management'

module Azure::ServerManagement::Profiles::Latest::Mgmt
    Gateway = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Gateway
    Node = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Node
    Session = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Session
    PowerShell = Azure::ServerManagement::Mgmt::V2016_07_01_preview::PowerShell

    module Models
      Version = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::Version
      Resource = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::Resource
      EncryptionJwkResource = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::EncryptionJwkResource
      GatewayStatus = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::GatewayStatus
      GatewayResources = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::GatewayResources
      PromptFieldDescription = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PromptFieldDescription
      GatewayParameters = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::GatewayParameters
      PowerShellCommandResult = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PowerShellCommandResult
      NodeResources = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::NodeResources
      PowerShellCommandResults = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PowerShellCommandResults
      PowerShellTabCompletionResults = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PowerShellTabCompletionResults
      SessionParameters = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::SessionParameters
      Error = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::Error
      GatewayProfile = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::GatewayProfile
      PowerShellSessionResources = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PowerShellSessionResources
      NodeParameters = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::NodeParameters
      PowerShellCommandParameters = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PowerShellCommandParameters
      PowerShellTabCompletionParameters = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PowerShellTabCompletionParameters
      PromptMessageResponse = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PromptMessageResponse
      GatewayResource = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::GatewayResource
      NodeResource = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::NodeResource
      SessionResource = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::SessionResource
      PowerShellSessionResource = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PowerShellSessionResource
      PowerShellCommandStatus = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PowerShellCommandStatus
      UpgradeMode = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::UpgradeMode
      RetentionPeriod = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::RetentionPeriod
      CredentialDataFormat = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::CredentialDataFormat
      PromptFieldType = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PromptFieldType
      GatewayExpandOption = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::GatewayExpandOption
      PowerShellExpandOption = Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PowerShellExpandOption
    end

    #
    # ServerManagement
    #
    class ServerManagementClass
      attr_reader :gateway, :node, :session, :power_shell, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_options
        else
          @options = options
        end

        reset!(options)

        @configurable, @base_url, @options = self, nil, nil

        client_0 = Azure::ServerManagement::Mgmt::V2016_07_01_preview::ServerManagement.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @gateway = client_0.gateway
        @node = client_0.node
        @session = client_0.session
        @power_shell = client_0.power_shell

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '2016-07-01-preview')
        case version
          when '2016-07-01-preview'
            client = Azure::ServerManagement::Mgmt::V2016_07_01_preview::ServerManagement.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def version
          Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::Version
        end
        def resource
          Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::Resource
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
        def power_shell_command_results
          Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PowerShellCommandResults
        end
        def power_shell_tab_completion_results
          Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PowerShellTabCompletionResults
        end
        def session_parameters
          Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::SessionParameters
        end
        def error
          Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::Error
        end
        def gateway_profile
          Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::GatewayProfile
        end
        def power_shell_session_resources
          Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PowerShellSessionResources
        end
        def node_parameters
          Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::NodeParameters
        end
        def power_shell_command_parameters
          Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PowerShellCommandParameters
        end
        def power_shell_tab_completion_parameters
          Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PowerShellTabCompletionParameters
        end
        def prompt_message_response
          Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PromptMessageResponse
        end
        def gateway_resource
          Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::GatewayResource
        end
        def node_resource
          Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::NodeResource
        end
        def session_resource
          Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::SessionResource
        end
        def power_shell_session_resource
          Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PowerShellSessionResource
        end
        def power_shell_command_status
          Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PowerShellCommandStatus
        end
        def upgrade_mode
          Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::UpgradeMode
        end
        def retention_period
          Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::RetentionPeriod
        end
        def credential_data_format
          Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::CredentialDataFormat
        end
        def prompt_field_type
          Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PromptFieldType
        end
        def gateway_expand_option
          Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::GatewayExpandOption
        end
        def power_shell_expand_option
          Azure::ServerManagement::Mgmt::V2016_07_01_preview::Models::PowerShellExpandOption
        end
      end
    end
end
