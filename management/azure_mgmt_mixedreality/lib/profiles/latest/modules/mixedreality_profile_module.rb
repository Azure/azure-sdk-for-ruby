# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_mixedreality'

module Azure::MixedReality::Profiles::Latest
  module Mgmt
    RemoteRenderingAccounts = Azure::MixedReality::Mgmt::V2020_04_06_preview::RemoteRenderingAccounts
    Operations = Azure::MixedReality::Mgmt::V2020_05_01::Operations
    SpatialAnchorsAccounts = Azure::MixedReality::Mgmt::V2020_05_01::SpatialAnchorsAccounts

    module Models
      Plan = Azure::MixedReality::Mgmt::V2020_04_06_preview::Models::Plan
      RemoteRenderingAccountPage = Azure::MixedReality::Mgmt::V2020_04_06_preview::Models::RemoteRenderingAccountPage
      Identity = Azure::MixedReality::Mgmt::V2020_04_06_preview::Models::Identity
      ResourceModelWithAllowedPropertySet = Azure::MixedReality::Mgmt::V2020_04_06_preview::Models::ResourceModelWithAllowedPropertySet
      Sku = Azure::MixedReality::Mgmt::V2020_04_06_preview::Models::Sku
      RemoteRenderingAccountIdentity = Azure::MixedReality::Mgmt::V2020_04_06_preview::Models::RemoteRenderingAccountIdentity
      RemoteRenderingAccount = Azure::MixedReality::Mgmt::V2020_04_06_preview::Models::RemoteRenderingAccount
      ResourceModelWithAllowedPropertySetIdentity = Azure::MixedReality::Mgmt::V2020_04_06_preview::Models::ResourceModelWithAllowedPropertySetIdentity
      ResourceModelWithAllowedPropertySetSku = Azure::MixedReality::Mgmt::V2020_04_06_preview::Models::ResourceModelWithAllowedPropertySetSku
      ResourceModelWithAllowedPropertySetPlan = Azure::MixedReality::Mgmt::V2020_04_06_preview::Models::ResourceModelWithAllowedPropertySetPlan
      SkuTier = Azure::MixedReality::Mgmt::V2020_04_06_preview::Models::SkuTier
      ResourceIdentityType = Azure::MixedReality::Mgmt::V2020_04_06_preview::Models::ResourceIdentityType
      CheckNameAvailabilityResponse = Azure::MixedReality::Mgmt::V2020_05_01::Models::CheckNameAvailabilityResponse
      AccountKeyRegenerateRequest = Azure::MixedReality::Mgmt::V2020_05_01::Models::AccountKeyRegenerateRequest
      Operation = Azure::MixedReality::Mgmt::V2020_05_01::Models::Operation
      SpatialAnchorsAccountPage = Azure::MixedReality::Mgmt::V2020_05_01::Models::SpatialAnchorsAccountPage
      CheckNameAvailabilityRequest = Azure::MixedReality::Mgmt::V2020_05_01::Models::CheckNameAvailabilityRequest
      AccountKeys = Azure::MixedReality::Mgmt::V2020_05_01::Models::AccountKeys
      OperationPage = Azure::MixedReality::Mgmt::V2020_05_01::Models::OperationPage
      OperationDisplay = Azure::MixedReality::Mgmt::V2020_05_01::Models::OperationDisplay
      Resource = Azure::MixedReality::Mgmt::V2020_05_01::Models::Resource
      TrackedResource = Azure::MixedReality::Mgmt::V2020_05_01::Models::TrackedResource
      SpatialAnchorsAccount = Azure::MixedReality::Mgmt::V2020_05_01::Models::SpatialAnchorsAccount
      ProxyResource = Azure::MixedReality::Mgmt::V2020_05_01::Models::ProxyResource
      AzureEntityResource = Azure::MixedReality::Mgmt::V2020_05_01::Models::AzureEntityResource
      NameAvailability = Azure::MixedReality::Mgmt::V2020_05_01::Models::NameAvailability
      NameUnavailableReason = Azure::MixedReality::Mgmt::V2020_05_01::Models::NameUnavailableReason
    end

    #
    # MixedRealityManagementClass
    #
    class MixedRealityManagementClass
      attr_reader :remote_rendering_accounts, :operations, :spatial_anchors_accounts, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::MixedReality::Mgmt::V2020_04_06_preview::MixedRealityClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @remote_rendering_accounts = @client_0.remote_rendering_accounts

        @client_1 = Azure::MixedReality::Mgmt::V2020_05_01::MixedRealityClient.new(configurable.credentials, base_url, options)
        if(@client_1.respond_to?(:subscription_id))
          @client_1.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_1)
        @operations = @client_1.operations
        @spatial_anchors_accounts = @client_1.spatial_anchors_accounts

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/MixedReality/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_1.respond_to?method
          @client_1.send(method, *args)
        elsif @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
      end

    end

    class ModelClasses
      def plan
        Azure::MixedReality::Mgmt::V2020_04_06_preview::Models::Plan
      end
      def remote_rendering_account_page
        Azure::MixedReality::Mgmt::V2020_04_06_preview::Models::RemoteRenderingAccountPage
      end
      def identity
        Azure::MixedReality::Mgmt::V2020_04_06_preview::Models::Identity
      end
      def resource_model_with_allowed_property_set
        Azure::MixedReality::Mgmt::V2020_04_06_preview::Models::ResourceModelWithAllowedPropertySet
      end
      def sku
        Azure::MixedReality::Mgmt::V2020_04_06_preview::Models::Sku
      end
      def remote_rendering_account_identity
        Azure::MixedReality::Mgmt::V2020_04_06_preview::Models::RemoteRenderingAccountIdentity
      end
      def remote_rendering_account
        Azure::MixedReality::Mgmt::V2020_04_06_preview::Models::RemoteRenderingAccount
      end
      def resource_model_with_allowed_property_set_identity
        Azure::MixedReality::Mgmt::V2020_04_06_preview::Models::ResourceModelWithAllowedPropertySetIdentity
      end
      def resource_model_with_allowed_property_set_sku
        Azure::MixedReality::Mgmt::V2020_04_06_preview::Models::ResourceModelWithAllowedPropertySetSku
      end
      def resource_model_with_allowed_property_set_plan
        Azure::MixedReality::Mgmt::V2020_04_06_preview::Models::ResourceModelWithAllowedPropertySetPlan
      end
      def sku_tier
        Azure::MixedReality::Mgmt::V2020_04_06_preview::Models::SkuTier
      end
      def resource_identity_type
        Azure::MixedReality::Mgmt::V2020_04_06_preview::Models::ResourceIdentityType
      end
      def check_name_availability_response
        Azure::MixedReality::Mgmt::V2020_05_01::Models::CheckNameAvailabilityResponse
      end
      def account_key_regenerate_request
        Azure::MixedReality::Mgmt::V2020_05_01::Models::AccountKeyRegenerateRequest
      end
      def operation
        Azure::MixedReality::Mgmt::V2020_05_01::Models::Operation
      end
      def spatial_anchors_account_page
        Azure::MixedReality::Mgmt::V2020_05_01::Models::SpatialAnchorsAccountPage
      end
      def check_name_availability_request
        Azure::MixedReality::Mgmt::V2020_05_01::Models::CheckNameAvailabilityRequest
      end
      def account_keys
        Azure::MixedReality::Mgmt::V2020_05_01::Models::AccountKeys
      end
      def operation_page
        Azure::MixedReality::Mgmt::V2020_05_01::Models::OperationPage
      end
      def operation_display
        Azure::MixedReality::Mgmt::V2020_05_01::Models::OperationDisplay
      end
      def resource
        Azure::MixedReality::Mgmt::V2020_05_01::Models::Resource
      end
      def tracked_resource
        Azure::MixedReality::Mgmt::V2020_05_01::Models::TrackedResource
      end
      def spatial_anchors_account
        Azure::MixedReality::Mgmt::V2020_05_01::Models::SpatialAnchorsAccount
      end
      def proxy_resource
        Azure::MixedReality::Mgmt::V2020_05_01::Models::ProxyResource
      end
      def azure_entity_resource
        Azure::MixedReality::Mgmt::V2020_05_01::Models::AzureEntityResource
      end
      def name_availability
        Azure::MixedReality::Mgmt::V2020_05_01::Models::NameAvailability
      end
      def name_unavailable_reason
        Azure::MixedReality::Mgmt::V2020_05_01::Models::NameUnavailableReason
      end
    end
  end
end
