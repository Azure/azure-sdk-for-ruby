# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_serialconsole'

module Azure::Serialconsole::Profiles::Latest
  module Mgmt
    List = Azure::Serialconsole::Mgmt::V2018_05_01::List
    ListConsole = Azure::Serialconsole::Mgmt::V2018_05_01::ListConsole
    Console = Azure::Serialconsole::Mgmt::V2018_05_01::Console

    module Models
      SetDisabledResult = Azure::Serialconsole::Mgmt::V2018_05_01::Models::SetDisabledResult
      DeploymentValidateResult = Azure::Serialconsole::Mgmt::V2018_05_01::Models::DeploymentValidateResult
      GetDisabledResult = Azure::Serialconsole::Mgmt::V2018_05_01::Models::GetDisabledResult
      SerialConsoleOperations = Azure::Serialconsole::Mgmt::V2018_05_01::Models::SerialConsoleOperations
      SerialConsoleGetResult = Azure::Serialconsole::Mgmt::V2018_05_01::Models::SerialConsoleGetResult
    end

    #
    # SerialconsoleManagementClass
    #
    class SerialconsoleManagementClass
      attr_reader :list, :list_console, :console, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::Serialconsole::Mgmt::V2018_05_01::MicrosoftSerialConsoleClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @list = @client_0.list
        @list_console = @client_0.list_console
        @console = @client_0.console

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Serialconsole/Mgmt'
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
      def set_disabled_result
        Azure::Serialconsole::Mgmt::V2018_05_01::Models::SetDisabledResult
      end
      def deployment_validate_result
        Azure::Serialconsole::Mgmt::V2018_05_01::Models::DeploymentValidateResult
      end
      def get_disabled_result
        Azure::Serialconsole::Mgmt::V2018_05_01::Models::GetDisabledResult
      end
      def serial_console_operations
        Azure::Serialconsole::Mgmt::V2018_05_01::Models::SerialConsoleOperations
      end
      def serial_console_get_result
        Azure::Serialconsole::Mgmt::V2018_05_01::Models::SerialConsoleGetResult
      end
    end
  end
end
