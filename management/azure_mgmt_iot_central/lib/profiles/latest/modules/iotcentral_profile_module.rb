# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_iot_central'

module Azure::IotCentral::Profiles::Latest
  module Mgmt
    Apps = Azure::IotCentral::Mgmt::V2017_07_01_privatepreview::Apps
    Operations = Azure::IotCentral::Mgmt::V2017_07_01_privatepreview::Operations

    module Models
      AppListResult = Azure::IotCentral::Mgmt::V2017_07_01_privatepreview::Models::AppListResult
      OperationDisplay = Azure::IotCentral::Mgmt::V2017_07_01_privatepreview::Models::OperationDisplay
      AppPatch = Azure::IotCentral::Mgmt::V2017_07_01_privatepreview::Models::AppPatch
      Operation = Azure::IotCentral::Mgmt::V2017_07_01_privatepreview::Models::Operation
      ErrorDetails = Azure::IotCentral::Mgmt::V2017_07_01_privatepreview::Models::ErrorDetails
      OperationListResult = Azure::IotCentral::Mgmt::V2017_07_01_privatepreview::Models::OperationListResult
      Resource = Azure::IotCentral::Mgmt::V2017_07_01_privatepreview::Models::Resource
      OperationInputs = Azure::IotCentral::Mgmt::V2017_07_01_privatepreview::Models::OperationInputs
      AppSkuInfo = Azure::IotCentral::Mgmt::V2017_07_01_privatepreview::Models::AppSkuInfo
      AppNameAvailabilityInfo = Azure::IotCentral::Mgmt::V2017_07_01_privatepreview::Models::AppNameAvailabilityInfo
      App = Azure::IotCentral::Mgmt::V2017_07_01_privatepreview::Models::App
      AppSku = Azure::IotCentral::Mgmt::V2017_07_01_privatepreview::Models::AppSku
      AppNameUnavailabilityReason = Azure::IotCentral::Mgmt::V2017_07_01_privatepreview::Models::AppNameUnavailabilityReason
    end

    #
    # IotCentralManagementClass
    #
    class IotCentralManagementClass
      attr_reader :apps, :operations, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::IotCentral::Mgmt::V2017_07_01_privatepreview::IotCentralClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @apps = @client_0.apps
        @operations = @client_0.operations

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/IotCentral/Mgmt'
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
      def app_list_result
        Azure::IotCentral::Mgmt::V2017_07_01_privatepreview::Models::AppListResult
      end
      def operation_display
        Azure::IotCentral::Mgmt::V2017_07_01_privatepreview::Models::OperationDisplay
      end
      def app_patch
        Azure::IotCentral::Mgmt::V2017_07_01_privatepreview::Models::AppPatch
      end
      def operation
        Azure::IotCentral::Mgmt::V2017_07_01_privatepreview::Models::Operation
      end
      def error_details
        Azure::IotCentral::Mgmt::V2017_07_01_privatepreview::Models::ErrorDetails
      end
      def operation_list_result
        Azure::IotCentral::Mgmt::V2017_07_01_privatepreview::Models::OperationListResult
      end
      def resource
        Azure::IotCentral::Mgmt::V2017_07_01_privatepreview::Models::Resource
      end
      def operation_inputs
        Azure::IotCentral::Mgmt::V2017_07_01_privatepreview::Models::OperationInputs
      end
      def app_sku_info
        Azure::IotCentral::Mgmt::V2017_07_01_privatepreview::Models::AppSkuInfo
      end
      def app_name_availability_info
        Azure::IotCentral::Mgmt::V2017_07_01_privatepreview::Models::AppNameAvailabilityInfo
      end
      def app
        Azure::IotCentral::Mgmt::V2017_07_01_privatepreview::Models::App
      end
      def app_sku
        Azure::IotCentral::Mgmt::V2017_07_01_privatepreview::Models::AppSku
      end
      def app_name_unavailability_reason
        Azure::IotCentral::Mgmt::V2017_07_01_privatepreview::Models::AppNameUnavailabilityReason
      end
    end
  end
end
