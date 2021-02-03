# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_confluent'

module Azure::Confluent::Profiles::Latest
  module Mgmt
    MarketplaceAgreements = Azure::Confluent::Mgmt::V2020_03_01::MarketplaceAgreements
    OrganizationOperations = Azure::Confluent::Mgmt::V2020_03_01::OrganizationOperations
    Organization = Azure::Confluent::Mgmt::V2020_03_01::Organization

    module Models
      OfferDetail = Azure::Confluent::Mgmt::V2020_03_01::Models::OfferDetail
      UserDetail = Azure::Confluent::Mgmt::V2020_03_01::Models::UserDetail
      ConfluentAgreementResourceListResponse = Azure::Confluent::Mgmt::V2020_03_01::Models::ConfluentAgreementResourceListResponse
      OperationDisplay = Azure::Confluent::Mgmt::V2020_03_01::Models::OperationDisplay
      OperationResult = Azure::Confluent::Mgmt::V2020_03_01::Models::OperationResult
      ErrorResponseBody = Azure::Confluent::Mgmt::V2020_03_01::Models::ErrorResponseBody
      OrganizationResourceUpdate = Azure::Confluent::Mgmt::V2020_03_01::Models::OrganizationResourceUpdate
      ConfluentAgreementResource = Azure::Confluent::Mgmt::V2020_03_01::Models::ConfluentAgreementResource
      OrganizationResourceProperties = Azure::Confluent::Mgmt::V2020_03_01::Models::OrganizationResourceProperties
      ResourceProviderDefaultErrorResponse = Azure::Confluent::Mgmt::V2020_03_01::Models::ResourceProviderDefaultErrorResponse
      OrganizationResource = Azure::Confluent::Mgmt::V2020_03_01::Models::OrganizationResource
      OperationListResult = Azure::Confluent::Mgmt::V2020_03_01::Models::OperationListResult
      OrganizationResourceListResult = Azure::Confluent::Mgmt::V2020_03_01::Models::OrganizationResourceListResult
      OrganizationResourcePropertiesOfferDetail = Azure::Confluent::Mgmt::V2020_03_01::Models::OrganizationResourcePropertiesOfferDetail
      OrganizationResourcePropertiesUserDetail = Azure::Confluent::Mgmt::V2020_03_01::Models::OrganizationResourcePropertiesUserDetail
      ProvisionState = Azure::Confluent::Mgmt::V2020_03_01::Models::ProvisionState
      SaaSOfferStatus = Azure::Confluent::Mgmt::V2020_03_01::Models::SaaSOfferStatus
    end

    #
    # ConfluentManagementClass
    #
    class ConfluentManagementClass
      attr_reader :marketplace_agreements, :organization_operations, :organization, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_default_options
        else
          @options = options
        end

        reset!(options)

        @configurable = self
        @base_url = options[:base_url].nil? ? nil:options[:base_url]
        @options = options[:options].nil? ? nil:options[:options]

        @client_0 = Azure::Confluent::Mgmt::V2020_03_01::ConfluentManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @marketplace_agreements = @client_0.marketplace_agreements
        @organization_operations = @client_0.organization_operations
        @organization = @client_0.organization

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Confluent/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
      end

    end

    class ModelClasses
      def offer_detail
        Azure::Confluent::Mgmt::V2020_03_01::Models::OfferDetail
      end
      def user_detail
        Azure::Confluent::Mgmt::V2020_03_01::Models::UserDetail
      end
      def confluent_agreement_resource_list_response
        Azure::Confluent::Mgmt::V2020_03_01::Models::ConfluentAgreementResourceListResponse
      end
      def operation_display
        Azure::Confluent::Mgmt::V2020_03_01::Models::OperationDisplay
      end
      def operation_result
        Azure::Confluent::Mgmt::V2020_03_01::Models::OperationResult
      end
      def error_response_body
        Azure::Confluent::Mgmt::V2020_03_01::Models::ErrorResponseBody
      end
      def organization_resource_update
        Azure::Confluent::Mgmt::V2020_03_01::Models::OrganizationResourceUpdate
      end
      def confluent_agreement_resource
        Azure::Confluent::Mgmt::V2020_03_01::Models::ConfluentAgreementResource
      end
      def organization_resource_properties
        Azure::Confluent::Mgmt::V2020_03_01::Models::OrganizationResourceProperties
      end
      def resource_provider_default_error_response
        Azure::Confluent::Mgmt::V2020_03_01::Models::ResourceProviderDefaultErrorResponse
      end
      def organization_resource
        Azure::Confluent::Mgmt::V2020_03_01::Models::OrganizationResource
      end
      def operation_list_result
        Azure::Confluent::Mgmt::V2020_03_01::Models::OperationListResult
      end
      def organization_resource_list_result
        Azure::Confluent::Mgmt::V2020_03_01::Models::OrganizationResourceListResult
      end
      def organization_resource_properties_offer_detail
        Azure::Confluent::Mgmt::V2020_03_01::Models::OrganizationResourcePropertiesOfferDetail
      end
      def organization_resource_properties_user_detail
        Azure::Confluent::Mgmt::V2020_03_01::Models::OrganizationResourcePropertiesUserDetail
      end
      def provision_state
        Azure::Confluent::Mgmt::V2020_03_01::Models::ProvisionState
      end
      def saa_soffer_status
        Azure::Confluent::Mgmt::V2020_03_01::Models::SaaSOfferStatus
      end
    end
  end
end
