# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_consumption'

module Azure::Consumption::Profiles::Latest
  module Mgmt
    UsageDetails = Azure::Consumption::Mgmt::V2017_11_30::UsageDetails
    Operations = Azure::Consumption::Mgmt::V2017_11_30::Operations

    module Models
      ErrorResponse = Azure::Consumption::Mgmt::V2017_11_30::Models::ErrorResponse
      OperationDisplay = Azure::Consumption::Mgmt::V2017_11_30::Models::OperationDisplay
      UsageDetailsListResult = Azure::Consumption::Mgmt::V2017_11_30::Models::UsageDetailsListResult
      Operation = Azure::Consumption::Mgmt::V2017_11_30::Models::Operation
      MeterDetails = Azure::Consumption::Mgmt::V2017_11_30::Models::MeterDetails
      OperationListResult = Azure::Consumption::Mgmt::V2017_11_30::Models::OperationListResult
      ErrorDetails = Azure::Consumption::Mgmt::V2017_11_30::Models::ErrorDetails
      Resource = Azure::Consumption::Mgmt::V2017_11_30::Models::Resource
      UsageDetail = Azure::Consumption::Mgmt::V2017_11_30::Models::UsageDetail
    end

    #
    # ConsumptionManagementClass
    #
    class ConsumptionManagementClass
      attr_reader :usage_details, :operations, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_default_options
        else
          @options = options
        end

        reset!(options)

        @configurable, @base_url, @options = self, nil, nil

        client_0 = Azure::Consumption::Mgmt::V2017_11_30::ConsumptionManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @usage_details = client_0.usage_details
        @operations = client_0.operations

        @model_classes = ModelClasses.new
      end
    end

    class ModelClasses
      def error_response
        Azure::Consumption::Mgmt::V2017_11_30::Models::ErrorResponse
      end
      def operation_display
        Azure::Consumption::Mgmt::V2017_11_30::Models::OperationDisplay
      end
      def usage_details_list_result
        Azure::Consumption::Mgmt::V2017_11_30::Models::UsageDetailsListResult
      end
      def operation
        Azure::Consumption::Mgmt::V2017_11_30::Models::Operation
      end
      def meter_details
        Azure::Consumption::Mgmt::V2017_11_30::Models::MeterDetails
      end
      def operation_list_result
        Azure::Consumption::Mgmt::V2017_11_30::Models::OperationListResult
      end
      def error_details
        Azure::Consumption::Mgmt::V2017_11_30::Models::ErrorDetails
      end
      def resource
        Azure::Consumption::Mgmt::V2017_11_30::Models::Resource
      end
      def usage_detail
        Azure::Consumption::Mgmt::V2017_11_30::Models::UsageDetail
      end
    end
  end
end
