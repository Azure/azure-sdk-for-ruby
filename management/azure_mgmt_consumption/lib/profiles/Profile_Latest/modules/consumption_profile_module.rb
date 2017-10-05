# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_consumption'


module Azure::Profiles::ConsumptionModule::Management::Profile_Latest
  module Consumption
    UsageDetails = Azure::ARM::Consumption::Api_2017_04_24_preview::UsageDetails
    Operations = Azure::ARM::Consumption::Api_2017_04_24_preview::Operations

    module Models
      ErrorResponse = Azure::ARM::Consumption::Api_2017_04_24_preview::Models::ErrorResponse
      OperationDisplay = Azure::ARM::Consumption::Api_2017_04_24_preview::Models::OperationDisplay
      UsageDetailsListResult = Azure::ARM::Consumption::Api_2017_04_24_preview::Models::UsageDetailsListResult
      Operation = Azure::ARM::Consumption::Api_2017_04_24_preview::Models::Operation
      MeterDetails = Azure::ARM::Consumption::Api_2017_04_24_preview::Models::MeterDetails
      OperationListResult = Azure::ARM::Consumption::Api_2017_04_24_preview::Models::OperationListResult
      ErrorDetails = Azure::ARM::Consumption::Api_2017_04_24_preview::Models::ErrorDetails
      UsageDetail = Azure::ARM::Consumption::Api_2017_04_24_preview::Models::UsageDetail
    end

    #
    # Consumption
    #
    class ConsumptionClass
      attr_accessor :usage_details, :operations, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Consumption::Api_2017_04_24_preview::ConsumptionManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.usage_details = Azure::ARM::Consumption::Api_2017_04_24_preview::UsageDetails.new(client)
        self.operations = Azure::ARM::Consumption::Api_2017_04_24_preview::Operations.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2017-04-24-preview'
            client = Azure::ARM::Consumption::Api_2017_04_24_preview::ConsumptionManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def error_response
          Azure::ARM::Consumption::Api_2017_04_24_preview::Models::ErrorResponse
        end
        def operation_display
          Azure::ARM::Consumption::Api_2017_04_24_preview::Models::OperationDisplay
        end
        def usage_details_list_result
          Azure::ARM::Consumption::Api_2017_04_24_preview::Models::UsageDetailsListResult
        end
        def operation
          Azure::ARM::Consumption::Api_2017_04_24_preview::Models::Operation
        end
        def meter_details
          Azure::ARM::Consumption::Api_2017_04_24_preview::Models::MeterDetails
        end
        def operation_list_result
          Azure::ARM::Consumption::Api_2017_04_24_preview::Models::OperationListResult
        end
        def error_details
          Azure::ARM::Consumption::Api_2017_04_24_preview::Models::ErrorDetails
        end
        def usage_detail
          Azure::ARM::Consumption::Api_2017_04_24_preview::Models::UsageDetail
        end
      end
    end
  end
end
