# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_mixedreality'

module Azure::MixedReality::Profiles::Latest
  module Mgmt
    Operations = Azure::MixedReality::Mgmt::V2019_12_02_preview::Operations
    RemoteRenderingAccounts = Azure::MixedReality::Mgmt::V2019_12_02_preview::RemoteRenderingAccounts
    SpatialAnchorsAccounts = Azure::MixedReality::Mgmt::V2019_12_02_preview::SpatialAnchorsAccounts

    module Models
      ErrorResponse = Azure::MixedReality::Mgmt::V2019_12_02_preview::Models::ErrorResponse
      AccountKeys = Azure::MixedReality::Mgmt::V2019_12_02_preview::Models::AccountKeys
      CheckNameAvailabilityResponse = Azure::MixedReality::Mgmt::V2019_12_02_preview::Models::CheckNameAvailabilityResponse
      RemoteRenderingAccountPage = Azure::MixedReality::Mgmt::V2019_12_02_preview::Models::RemoteRenderingAccountPage
      Operation = Azure::MixedReality::Mgmt::V2019_12_02_preview::Models::Operation
      CheckNameAvailabilityRequest = Azure::MixedReality::Mgmt::V2019_12_02_preview::Models::CheckNameAvailabilityRequest
      SpatialAnchorsAccountPage = Azure::MixedReality::Mgmt::V2019_12_02_preview::Models::SpatialAnchorsAccountPage
      OperationPage = Azure::MixedReality::Mgmt::V2019_12_02_preview::Models::OperationPage
      Resource = Azure::MixedReality::Mgmt::V2019_12_02_preview::Models::Resource
      OperationDisplay = Azure::MixedReality::Mgmt::V2019_12_02_preview::Models::OperationDisplay
      AccountKeyRegenerateRequest = Azure::MixedReality::Mgmt::V2019_12_02_preview::Models::AccountKeyRegenerateRequest
      RemoteRenderingAccount = Azure::MixedReality::Mgmt::V2019_12_02_preview::Models::RemoteRenderingAccount
      ProxyResource = Azure::MixedReality::Mgmt::V2019_12_02_preview::Models::ProxyResource
      AzureEntityResource = Azure::MixedReality::Mgmt::V2019_12_02_preview::Models::AzureEntityResource
      TrackedResource = Azure::MixedReality::Mgmt::V2019_12_02_preview::Models::TrackedResource
      SpatialAnchorsAccount = Azure::MixedReality::Mgmt::V2019_12_02_preview::Models::SpatialAnchorsAccount
      NameAvailability = Azure::MixedReality::Mgmt::V2019_12_02_preview::Models::NameAvailability
      NameUnavailableReason = Azure::MixedReality::Mgmt::V2019_12_02_preview::Models::NameUnavailableReason
    end

    #
    # MixedRealityManagementClass
    #
    class MixedRealityManagementClass
      attr_reader :operations, :remote_rendering_accounts, :spatial_anchors_accounts, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::MixedReality::Mgmt::V2019_12_02_preview::MixedRealityClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @operations = @client_0.operations
        @remote_rendering_accounts = @client_0.remote_rendering_accounts
        @spatial_anchors_accounts = @client_0.spatial_anchors_accounts

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/MixedReality/Mgmt'
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
      def error_response
        Azure::MixedReality::Mgmt::V2019_12_02_preview::Models::ErrorResponse
      end
      def account_keys
        Azure::MixedReality::Mgmt::V2019_12_02_preview::Models::AccountKeys
      end
      def check_name_availability_response
        Azure::MixedReality::Mgmt::V2019_12_02_preview::Models::CheckNameAvailabilityResponse
      end
      def remote_rendering_account_page
        Azure::MixedReality::Mgmt::V2019_12_02_preview::Models::RemoteRenderingAccountPage
      end
      def operation
        Azure::MixedReality::Mgmt::V2019_12_02_preview::Models::Operation
      end
      def check_name_availability_request
        Azure::MixedReality::Mgmt::V2019_12_02_preview::Models::CheckNameAvailabilityRequest
      end
      def spatial_anchors_account_page
        Azure::MixedReality::Mgmt::V2019_12_02_preview::Models::SpatialAnchorsAccountPage
      end
      def operation_page
        Azure::MixedReality::Mgmt::V2019_12_02_preview::Models::OperationPage
      end
      def resource
        Azure::MixedReality::Mgmt::V2019_12_02_preview::Models::Resource
      end
      def operation_display
        Azure::MixedReality::Mgmt::V2019_12_02_preview::Models::OperationDisplay
      end
      def account_key_regenerate_request
        Azure::MixedReality::Mgmt::V2019_12_02_preview::Models::AccountKeyRegenerateRequest
      end
      def remote_rendering_account
        Azure::MixedReality::Mgmt::V2019_12_02_preview::Models::RemoteRenderingAccount
      end
      def proxy_resource
        Azure::MixedReality::Mgmt::V2019_12_02_preview::Models::ProxyResource
      end
      def azure_entity_resource
        Azure::MixedReality::Mgmt::V2019_12_02_preview::Models::AzureEntityResource
      end
      def tracked_resource
        Azure::MixedReality::Mgmt::V2019_12_02_preview::Models::TrackedResource
      end
      def spatial_anchors_account
        Azure::MixedReality::Mgmt::V2019_12_02_preview::Models::SpatialAnchorsAccount
      end
      def name_availability
        Azure::MixedReality::Mgmt::V2019_12_02_preview::Models::NameAvailability
      end
      def name_unavailable_reason
        Azure::MixedReality::Mgmt::V2019_12_02_preview::Models::NameUnavailableReason
      end
    end
  end
end
