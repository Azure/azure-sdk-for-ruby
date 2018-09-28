# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_iot_central'

module Azure::Profiles::Latest
  module IotCentral
    module Mgmt
      Apps = Azure::IotCentral::Mgmt::V2018_09_01::Apps
      Operations = Azure::IotCentral::Mgmt::V2018_09_01::Operations

      module Models
        ErrorDetails = Azure::IotCentral::Mgmt::V2018_09_01::Models::ErrorDetails
        Operation = Azure::IotCentral::Mgmt::V2018_09_01::Models::Operation
        AppListResult = Azure::IotCentral::Mgmt::V2018_09_01::Models::AppListResult
        AppPatch = Azure::IotCentral::Mgmt::V2018_09_01::Models::AppPatch
        OperationInputs = Azure::IotCentral::Mgmt::V2018_09_01::Models::OperationInputs
        AppSkuInfo = Azure::IotCentral::Mgmt::V2018_09_01::Models::AppSkuInfo
        AppNameAvailabilityInfo = Azure::IotCentral::Mgmt::V2018_09_01::Models::AppNameAvailabilityInfo
        App = Azure::IotCentral::Mgmt::V2018_09_01::Models::App
        AppSku = Azure::IotCentral::Mgmt::V2018_09_01::Models::AppSku
        AppNameUnavailabilityReason = Azure::IotCentral::Mgmt::V2018_09_01::Models::AppNameUnavailabilityReason
        OperationDisplay = Azure::IotCentral::Mgmt::V2018_09_01::Models::OperationDisplay
        OperationListResult = Azure::IotCentral::Mgmt::V2018_09_01::Models::OperationListResult
        Resource = Azure::IotCentral::Mgmt::V2018_09_01::Models::Resource
      end

      class IotCentralManagementClass
        attr_reader :apps, :operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::IotCentral::Mgmt::V2018_09_01::IotCentralClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @apps = @client_0.apps
          @operations = @client_0.operations

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
          def operation
            Azure::IotCentral::Mgmt::V2018_09_01::Models::Operation
          end
          def app_list_result
            Azure::IotCentral::Mgmt::V2018_09_01::Models::AppListResult
          end
          def app_patch
            Azure::IotCentral::Mgmt::V2018_09_01::Models::AppPatch
          end
          def operation_inputs
            Azure::IotCentral::Mgmt::V2018_09_01::Models::OperationInputs
          end
          def app_sku_info
            Azure::IotCentral::Mgmt::V2018_09_01::Models::AppSkuInfo
          end
          def app_name_availability_info
            Azure::IotCentral::Mgmt::V2018_09_01::Models::AppNameAvailabilityInfo
          end
          def app
            Azure::IotCentral::Mgmt::V2018_09_01::Models::App
          end
          def app_sku
            Azure::IotCentral::Mgmt::V2018_09_01::Models::AppSku
          end
          def app_name_unavailability_reason
            Azure::IotCentral::Mgmt::V2018_09_01::Models::AppNameUnavailabilityReason
          end
          def operation_display
            Azure::IotCentral::Mgmt::V2018_09_01::Models::OperationDisplay
          end
          def operation_list_result
            Azure::IotCentral::Mgmt::V2018_09_01::Models::OperationListResult
          end
          def resource
            Azure::IotCentral::Mgmt::V2018_09_01::Models::Resource
          end
        end
      end
    end
  end
end
