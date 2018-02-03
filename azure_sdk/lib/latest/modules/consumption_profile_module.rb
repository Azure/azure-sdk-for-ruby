# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_consumption'

module Azure::Profiles::Latest
  module Consumption
    module Mgmt
      UsageDetails = Azure::Consumption::Mgmt::V2017_04_24_preview::UsageDetails
      Operations = Azure::Consumption::Mgmt::V2017_04_24_preview::Operations

      module Models
        ErrorResponse = Azure::Consumption::Mgmt::V2017_04_24_preview::Models::ErrorResponse
        OperationDisplay = Azure::Consumption::Mgmt::V2017_04_24_preview::Models::OperationDisplay
        UsageDetailsListResult = Azure::Consumption::Mgmt::V2017_04_24_preview::Models::UsageDetailsListResult
        Operation = Azure::Consumption::Mgmt::V2017_04_24_preview::Models::Operation
        MeterDetails = Azure::Consumption::Mgmt::V2017_04_24_preview::Models::MeterDetails
        OperationListResult = Azure::Consumption::Mgmt::V2017_04_24_preview::Models::OperationListResult
        ErrorDetails = Azure::Consumption::Mgmt::V2017_04_24_preview::Models::ErrorDetails
        Resource = Azure::Consumption::Mgmt::V2017_04_24_preview::Models::Resource
        UsageDetail = Azure::Consumption::Mgmt::V2017_04_24_preview::Models::UsageDetail
      end

      class ConsumptionManagementClass
        attr_reader :usage_details, :operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Consumption::Mgmt::V2017_04_24_preview::ConsumptionManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @usage_details = @client_0.usage_details
          @operations = @client_0.operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = 'Profiles/azure_sdk/Latest/Consumption/Mgmt'
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
          def error_response
            Azure::Consumption::Mgmt::V2017_04_24_preview::Models::ErrorResponse
          end
          def operation_display
            Azure::Consumption::Mgmt::V2017_04_24_preview::Models::OperationDisplay
          end
          def usage_details_list_result
            Azure::Consumption::Mgmt::V2017_04_24_preview::Models::UsageDetailsListResult
          end
          def operation
            Azure::Consumption::Mgmt::V2017_04_24_preview::Models::Operation
          end
          def meter_details
            Azure::Consumption::Mgmt::V2017_04_24_preview::Models::MeterDetails
          end
          def operation_list_result
            Azure::Consumption::Mgmt::V2017_04_24_preview::Models::OperationListResult
          end
          def error_details
            Azure::Consumption::Mgmt::V2017_04_24_preview::Models::ErrorDetails
          end
          def resource
            Azure::Consumption::Mgmt::V2017_04_24_preview::Models::Resource
          end
          def usage_detail
            Azure::Consumption::Mgmt::V2017_04_24_preview::Models::UsageDetail
          end
        end
      end
    end
  end
end
