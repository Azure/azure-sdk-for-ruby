# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_search'

module Azure::Profiles::Latest
  module Search
    module Mgmt
      Operations = Azure::Search::Mgmt::V2015_08_19::Operations
      QueryKeys = Azure::Search::Mgmt::V2015_08_19::QueryKeys
      Services = Azure::Search::Mgmt::V2015_08_19::Services
      AdminKeys = Azure::Search::Mgmt::V2015_08_19::AdminKeys

      module Models
        CheckNameAvailabilityInput = Azure::Search::Mgmt::V2015_08_19::Models::CheckNameAvailabilityInput
        Identity = Azure::Search::Mgmt::V2015_08_19::Models::Identity
        CheckNameAvailabilityOutput = Azure::Search::Mgmt::V2015_08_19::Models::CheckNameAvailabilityOutput
        QueryKey = Azure::Search::Mgmt::V2015_08_19::Models::QueryKey
        SearchManagementRequestOptions = Azure::Search::Mgmt::V2015_08_19::Models::SearchManagementRequestOptions
        SearchService = Azure::Search::Mgmt::V2015_08_19::Models::SearchService
        Sku = Azure::Search::Mgmt::V2015_08_19::Models::Sku
        UnavailableNameReason = Azure::Search::Mgmt::V2015_08_19::Models::UnavailableNameReason
        HostingMode = Azure::Search::Mgmt::V2015_08_19::Models::HostingMode
        AdminKeyResult = Azure::Search::Mgmt::V2015_08_19::Models::AdminKeyResult
        Operation = Azure::Search::Mgmt::V2015_08_19::Models::Operation
        SearchServiceStatus = Azure::Search::Mgmt::V2015_08_19::Models::SearchServiceStatus
        AdminKeyKind = Azure::Search::Mgmt::V2015_08_19::Models::AdminKeyKind
        OperationDisplay = Azure::Search::Mgmt::V2015_08_19::Models::OperationDisplay
        OperationListResult = Azure::Search::Mgmt::V2015_08_19::Models::OperationListResult
        Resource = Azure::Search::Mgmt::V2015_08_19::Models::Resource
        SkuName = Azure::Search::Mgmt::V2015_08_19::Models::SkuName
        ProvisioningState = Azure::Search::Mgmt::V2015_08_19::Models::ProvisioningState
      end

      class SearchManagementClass
        attr_reader :operations, :query_keys, :services, :admin_keys, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Search::Mgmt::V2015_08_19::SearchManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @query_keys = @client_0.query_keys
          @services = @client_0.services
          @admin_keys = @client_0.admin_keys

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Search/Mgmt"
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
          def check_name_availability_input
            Azure::Search::Mgmt::V2015_08_19::Models::CheckNameAvailabilityInput
          end
          def identity
            Azure::Search::Mgmt::V2015_08_19::Models::Identity
          end
          def check_name_availability_output
            Azure::Search::Mgmt::V2015_08_19::Models::CheckNameAvailabilityOutput
          end
          def query_key
            Azure::Search::Mgmt::V2015_08_19::Models::QueryKey
          end
          def search_management_request_options
            Azure::Search::Mgmt::V2015_08_19::Models::SearchManagementRequestOptions
          end
          def search_service
            Azure::Search::Mgmt::V2015_08_19::Models::SearchService
          end
          def sku
            Azure::Search::Mgmt::V2015_08_19::Models::Sku
          end
          def unavailable_name_reason
            Azure::Search::Mgmt::V2015_08_19::Models::UnavailableNameReason
          end
          def hosting_mode
            Azure::Search::Mgmt::V2015_08_19::Models::HostingMode
          end
          def admin_key_result
            Azure::Search::Mgmt::V2015_08_19::Models::AdminKeyResult
          end
          def operation
            Azure::Search::Mgmt::V2015_08_19::Models::Operation
          end
          def search_service_status
            Azure::Search::Mgmt::V2015_08_19::Models::SearchServiceStatus
          end
          def admin_key_kind
            Azure::Search::Mgmt::V2015_08_19::Models::AdminKeyKind
          end
          def operation_display
            Azure::Search::Mgmt::V2015_08_19::Models::OperationDisplay
          end
          def operation_list_result
            Azure::Search::Mgmt::V2015_08_19::Models::OperationListResult
          end
          def resource
            Azure::Search::Mgmt::V2015_08_19::Models::Resource
          end
          def sku_name
            Azure::Search::Mgmt::V2015_08_19::Models::SkuName
          end
          def provisioning_state
            Azure::Search::Mgmt::V2015_08_19::Models::ProvisioningState
          end
        end
      end
    end
  end
end
