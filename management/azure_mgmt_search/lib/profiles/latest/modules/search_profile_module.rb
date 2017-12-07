# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_search'

module Azure::Search::Profiles::Latest
  module Mgmt
    AdminKeys = Azure::Search::Mgmt::V2015_08_19::AdminKeys
    QueryKeys = Azure::Search::Mgmt::V2015_08_19::QueryKeys
    Services = Azure::Search::Mgmt::V2015_08_19::Services

    module Models
      Sku = Azure::Search::Mgmt::V2015_08_19::Models::Sku
      CheckNameAvailabilityInput = Azure::Search::Mgmt::V2015_08_19::Models::CheckNameAvailabilityInput
      SearchManagementRequestOptions = Azure::Search::Mgmt::V2015_08_19::Models::SearchManagementRequestOptions
      AdminKeyResult = Azure::Search::Mgmt::V2015_08_19::Models::AdminKeyResult
      Resource = Azure::Search::Mgmt::V2015_08_19::Models::Resource
      QueryKey = Azure::Search::Mgmt::V2015_08_19::Models::QueryKey
      CheckNameAvailabilityOutput = Azure::Search::Mgmt::V2015_08_19::Models::CheckNameAvailabilityOutput
      SearchService = Azure::Search::Mgmt::V2015_08_19::Models::SearchService
      UnavailableNameReason = Azure::Search::Mgmt::V2015_08_19::Models::UnavailableNameReason
      SkuName = Azure::Search::Mgmt::V2015_08_19::Models::SkuName
      HostingMode = Azure::Search::Mgmt::V2015_08_19::Models::HostingMode
      SearchServiceStatus = Azure::Search::Mgmt::V2015_08_19::Models::SearchServiceStatus
      ProvisioningState = Azure::Search::Mgmt::V2015_08_19::Models::ProvisioningState
      AdminKeyKind = Azure::Search::Mgmt::V2015_08_19::Models::AdminKeyKind
    end

    #
    # SearchManagementClass
    #
    class SearchManagementClass
      attr_reader :admin_keys, :query_keys, :services, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_default_options
        else
          @options = options
        end

        reset!(options)

        @configurable, @base_url, @options = self, nil, nil

        client_0 = Azure::Search::Mgmt::V2015_08_19::SearchManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @admin_keys = client_0.admin_keys
        @query_keys = client_0.query_keys
        @services = client_0.services

        @model_classes = ModelClasses.new
      end
    end

    class ModelClasses
      def sku
        Azure::Search::Mgmt::V2015_08_19::Models::Sku
      end
      def check_name_availability_input
        Azure::Search::Mgmt::V2015_08_19::Models::CheckNameAvailabilityInput
      end
      def search_management_request_options
        Azure::Search::Mgmt::V2015_08_19::Models::SearchManagementRequestOptions
      end
      def admin_key_result
        Azure::Search::Mgmt::V2015_08_19::Models::AdminKeyResult
      end
      def resource
        Azure::Search::Mgmt::V2015_08_19::Models::Resource
      end
      def query_key
        Azure::Search::Mgmt::V2015_08_19::Models::QueryKey
      end
      def check_name_availability_output
        Azure::Search::Mgmt::V2015_08_19::Models::CheckNameAvailabilityOutput
      end
      def search_service
        Azure::Search::Mgmt::V2015_08_19::Models::SearchService
      end
      def unavailable_name_reason
        Azure::Search::Mgmt::V2015_08_19::Models::UnavailableNameReason
      end
      def sku_name
        Azure::Search::Mgmt::V2015_08_19::Models::SkuName
      end
      def hosting_mode
        Azure::Search::Mgmt::V2015_08_19::Models::HostingMode
      end
      def search_service_status
        Azure::Search::Mgmt::V2015_08_19::Models::SearchServiceStatus
      end
      def provisioning_state
        Azure::Search::Mgmt::V2015_08_19::Models::ProvisioningState
      end
      def admin_key_kind
        Azure::Search::Mgmt::V2015_08_19::Models::AdminKeyKind
      end
    end
  end
end
