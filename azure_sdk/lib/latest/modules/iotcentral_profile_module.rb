# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_iot_central'

module Azure::Profiles::Latest
  module IotCentral
    module Mgmt
      Operations = Azure::IotCentral::Mgmt::V2018_09_01::Operations
      Apps = Azure::IotCentral::Mgmt::V2018_09_01::Apps

      module Models
        ErrorDetails = Azure::IotCentral::Mgmt::V2018_09_01::Models::ErrorDetails
        Resource = Azure::IotCentral::Mgmt::V2018_09_01::Models::Resource
        AppListResult = Azure::IotCentral::Mgmt::V2018_09_01::Models::AppListResult
        AppSkuInfo = Azure::IotCentral::Mgmt::V2018_09_01::Models::AppSkuInfo
        AppPatch = Azure::IotCentral::Mgmt::V2018_09_01::Models::AppPatch
        ErrorResponseBody = Azure::IotCentral::Mgmt::V2018_09_01::Models::ErrorResponseBody
        OperationInputs = Azure::IotCentral::Mgmt::V2018_09_01::Models::OperationInputs
        AppAvailabilityInfo = Azure::IotCentral::Mgmt::V2018_09_01::Models::AppAvailabilityInfo
        OperationDisplay = Azure::IotCentral::Mgmt::V2018_09_01::Models::OperationDisplay
        AppSku = Azure::IotCentral::Mgmt::V2018_09_01::Models::AppSku
        Operation = Azure::IotCentral::Mgmt::V2018_09_01::Models::Operation
        OperationListResult = Azure::IotCentral::Mgmt::V2018_09_01::Models::OperationListResult
        App = Azure::IotCentral::Mgmt::V2018_09_01::Models::App
      end

      class IotCentralManagementClass
        attr_reader :operations, :apps, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::IotCentral::Mgmt::V2018_09_01::IotCentralClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @apps = @client_0.apps

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/IotCentral/Mgmt"
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
          def error_details
            Azure::IotCentral::Mgmt::V2018_09_01::Models::ErrorDetails
          end
          def resource
            Azure::IotCentral::Mgmt::V2018_09_01::Models::Resource
          end
          def app_list_result
            Azure::IotCentral::Mgmt::V2018_09_01::Models::AppListResult
          end
          def app_sku_info
            Azure::IotCentral::Mgmt::V2018_09_01::Models::AppSkuInfo
          end
          def app_patch
            Azure::IotCentral::Mgmt::V2018_09_01::Models::AppPatch
          end
          def error_response_body
            Azure::IotCentral::Mgmt::V2018_09_01::Models::ErrorResponseBody
          end
          def operation_inputs
            Azure::IotCentral::Mgmt::V2018_09_01::Models::OperationInputs
          end
          def app_availability_info
            Azure::IotCentral::Mgmt::V2018_09_01::Models::AppAvailabilityInfo
          end
          def operation_display
            Azure::IotCentral::Mgmt::V2018_09_01::Models::OperationDisplay
          end
          def app_sku
            Azure::IotCentral::Mgmt::V2018_09_01::Models::AppSku
          end
          def operation
            Azure::IotCentral::Mgmt::V2018_09_01::Models::Operation
          end
          def operation_list_result
            Azure::IotCentral::Mgmt::V2018_09_01::Models::OperationListResult
          end
          def app
            Azure::IotCentral::Mgmt::V2018_09_01::Models::App
          end
        end
      end
    end
  end
end
