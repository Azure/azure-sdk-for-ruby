# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_search'


module Azure::Profiles::Management::Profile_Latest
  module Search
    AdminKeys = Azure::ARM::Search::Api_2015_08_19::AdminKeys
    QueryKeys = Azure::ARM::Search::Api_2015_08_19::QueryKeys
    Services = Azure::ARM::Search::Api_2015_08_19::Services

    module Models
      Sku = Azure::ARM::Search::Api_2015_08_19::Models::Sku
      CheckNameAvailabilityInput = Azure::ARM::Search::Api_2015_08_19::Models::CheckNameAvailabilityInput
      SearchManagementRequestOptions = Azure::ARM::Search::Api_2015_08_19::Models::SearchManagementRequestOptions
      AdminKeyResult = Azure::ARM::Search::Api_2015_08_19::Models::AdminKeyResult
      QueryKey = Azure::ARM::Search::Api_2015_08_19::Models::QueryKey
      CheckNameAvailabilityOutput = Azure::ARM::Search::Api_2015_08_19::Models::CheckNameAvailabilityOutput
      SearchService = Azure::ARM::Search::Api_2015_08_19::Models::SearchService
      UnavailableNameReason = Azure::ARM::Search::Api_2015_08_19::Models::UnavailableNameReason
      SkuName = Azure::ARM::Search::Api_2015_08_19::Models::SkuName
      HostingMode = Azure::ARM::Search::Api_2015_08_19::Models::HostingMode
      SearchServiceStatus = Azure::ARM::Search::Api_2015_08_19::Models::SearchServiceStatus
      ProvisioningState = Azure::ARM::Search::Api_2015_08_19::Models::ProvisioningState
      AdminKeyKind = Azure::ARM::Search::Api_2015_08_19::Models::AdminKeyKind
    end

    #
    # Search
    #
    class SearchClass
      attr_accessor :admin_keys, :query_keys, :services, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Search::Api_2015_08_19::SearchManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.admin_keys = Azure::ARM::Search::Api_2015_08_19::AdminKeys.new(client)
        self.query_keys = Azure::ARM::Search::Api_2015_08_19::QueryKeys.new(client)
        self.services = Azure::ARM::Search::Api_2015_08_19::Services.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2015-08-19'
            client = Azure::ARM::Search::Api_2015_08_19::SearchManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def sku
          Azure::ARM::Search::Api_2015_08_19::Models::Sku
        end
        def check_name_availability_input
          Azure::ARM::Search::Api_2015_08_19::Models::CheckNameAvailabilityInput
        end
        def search_management_request_options
          Azure::ARM::Search::Api_2015_08_19::Models::SearchManagementRequestOptions
        end
        def admin_key_result
          Azure::ARM::Search::Api_2015_08_19::Models::AdminKeyResult
        end
        def query_key
          Azure::ARM::Search::Api_2015_08_19::Models::QueryKey
        end
        def check_name_availability_output
          Azure::ARM::Search::Api_2015_08_19::Models::CheckNameAvailabilityOutput
        end
        def search_service
          Azure::ARM::Search::Api_2015_08_19::Models::SearchService
        end
        def unavailable_name_reason
          Azure::ARM::Search::Api_2015_08_19::Models::UnavailableNameReason
        end
        def sku_name
          Azure::ARM::Search::Api_2015_08_19::Models::SkuName
        end
        def hosting_mode
          Azure::ARM::Search::Api_2015_08_19::Models::HostingMode
        end
        def search_service_status
          Azure::ARM::Search::Api_2015_08_19::Models::SearchServiceStatus
        end
        def provisioning_state
          Azure::ARM::Search::Api_2015_08_19::Models::ProvisioningState
        end
        def admin_key_kind
          Azure::ARM::Search::Api_2015_08_19::Models::AdminKeyKind
        end
      end
    end
  end
end
