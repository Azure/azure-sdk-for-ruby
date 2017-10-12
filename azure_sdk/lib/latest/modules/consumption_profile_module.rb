# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_consumption'

module Azure::Profiles::Latest
  module Consumption::Mgmt
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
      Resource = Azure::ARM::Consumption::Api_2017_04_24_preview::Models::Resource
      UsageDetail = Azure::ARM::Consumption::Api_2017_04_24_preview::Models::UsageDetail
    end

    #
    # Consumption
    #
    class ConsumptionClass
      attr_reader :usage_details, :operations, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        client_0 = Azure::ARM::Consumption::Api_2017_04_24_preview::ConsumptionManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @usage_details = client_0.usage_details
        @operations = client_0.operations

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '2017-04-24-preview')
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
        def resource
          Azure::ARM::Consumption::Api_2017_04_24_preview::Models::Resource
        end
        def usage_detail
          Azure::ARM::Consumption::Api_2017_04_24_preview::Models::UsageDetail
        end
      end
    end
  end
end
