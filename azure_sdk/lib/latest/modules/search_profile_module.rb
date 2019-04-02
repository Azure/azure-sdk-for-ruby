# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_search'

module Azure::Profiles::Latest
  module Search
    module Mgmt
      Services = Azure::Search::Mgmt::V2015_08_19::Services
      Operations = Azure::Search::Mgmt::V2015_08_19::Operations
      AdminKeys = Azure::Search::Mgmt::V2015_08_19::AdminKeys
      QueryKeys = Azure::Search::Mgmt::V2015_08_19::QueryKeys

      module Models
        Sku = Azure::Search::Mgmt::V2015_08_19::Models::Sku
        OperationDisplay = Azure::Search::Mgmt::V2015_08_19::Models::OperationDisplay
        Operation = Azure::Search::Mgmt::V2015_08_19::Models::Operation
        OperationListResult = Azure::Search::Mgmt::V2015_08_19::Models::OperationListResult
        ProvisioningState = Azure::Search::Mgmt::V2015_08_19::Models::ProvisioningState
        QueryKey = Azure::Search::Mgmt::V2015_08_19::Models::QueryKey
        AdminKeyResult = Azure::Search::Mgmt::V2015_08_19::Models::AdminKeyResult
        SearchManagementRequestOptions = Azure::Search::Mgmt::V2015_08_19::Models::SearchManagementRequestOptions
        SearchService = Azure::Search::Mgmt::V2015_08_19::Models::SearchService
        CheckNameAvailabilityInput = Azure::Search::Mgmt::V2015_08_19::Models::CheckNameAvailabilityInput
        UnavailableNameReason = Azure::Search::Mgmt::V2015_08_19::Models::UnavailableNameReason
        CheckNameAvailabilityOutput = Azure::Search::Mgmt::V2015_08_19::Models::CheckNameAvailabilityOutput
        SearchServiceStatus = Azure::Search::Mgmt::V2015_08_19::Models::SearchServiceStatus
        HostingMode = Azure::Search::Mgmt::V2015_08_19::Models::HostingMode
        AdminKeyKind = Azure::Search::Mgmt::V2015_08_19::Models::AdminKeyKind
        SkuName = Azure::Search::Mgmt::V2015_08_19::Models::SkuName
        Identity = Azure::Search::Mgmt::V2015_08_19::Models::Identity
        Resource = Azure::Search::Mgmt::V2015_08_19::Models::Resource
      end

      class SearchManagementClass
        attr_reader :services, :operations, :admin_keys, :query_keys, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Search::Mgmt::V2015_08_19::SearchManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @services = @client_0.services
          @operations = @client_0.operations
          @admin_keys = @client_0.admin_keys
          @query_keys = @client_0.query_keys

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
          def sku
            Azure::Search::Mgmt::V2015_08_19::Models::Sku
          end
          def operation_display
            Azure::Search::Mgmt::V2015_08_19::Models::OperationDisplay
          end
          def operation
            Azure::Search::Mgmt::V2015_08_19::Models::Operation
          end
          def operation_list_result
            Azure::Search::Mgmt::V2015_08_19::Models::OperationListResult
          end
          def provisioning_state
            Azure::Search::Mgmt::V2015_08_19::Models::ProvisioningState
          end
          def query_key
            Azure::Search::Mgmt::V2015_08_19::Models::QueryKey
          end
          def admin_key_result
            Azure::Search::Mgmt::V2015_08_19::Models::AdminKeyResult
          end
          def search_management_request_options
            Azure::Search::Mgmt::V2015_08_19::Models::SearchManagementRequestOptions
          end
          def search_service
            Azure::Search::Mgmt::V2015_08_19::Models::SearchService
          end
          def check_name_availability_input
            Azure::Search::Mgmt::V2015_08_19::Models::CheckNameAvailabilityInput
          end
          def unavailable_name_reason
            Azure::Search::Mgmt::V2015_08_19::Models::UnavailableNameReason
          end
          def check_name_availability_output
            Azure::Search::Mgmt::V2015_08_19::Models::CheckNameAvailabilityOutput
          end
          def search_service_status
            Azure::Search::Mgmt::V2015_08_19::Models::SearchServiceStatus
          end
          def hosting_mode
            Azure::Search::Mgmt::V2015_08_19::Models::HostingMode
          end
          def admin_key_kind
            Azure::Search::Mgmt::V2015_08_19::Models::AdminKeyKind
          end
          def sku_name
            Azure::Search::Mgmt::V2015_08_19::Models::SkuName
          end
          def identity
            Azure::Search::Mgmt::V2015_08_19::Models::Identity
          end
          def resource
            Azure::Search::Mgmt::V2015_08_19::Models::Resource
          end
        end
      end
    end
  end
end
