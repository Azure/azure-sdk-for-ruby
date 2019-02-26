# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_mixedreality'

module Azure::Profiles::Latest
  module MixedReality
    module Mgmt
      Operations = Azure::MixedReality::Mgmt::V2019_02_28_preview::Operations
      SpatialAnchorsAccounts = Azure::MixedReality::Mgmt::V2019_02_28_preview::SpatialAnchorsAccounts

      module Models
        SpatialAnchorsAccountKeys = Azure::MixedReality::Mgmt::V2019_02_28_preview::Models::SpatialAnchorsAccountKeys
        CheckNameAvailabilityRequest = Azure::MixedReality::Mgmt::V2019_02_28_preview::Models::CheckNameAvailabilityRequest
        SpatialAnchorsAccountKeyRegenerateRequest = Azure::MixedReality::Mgmt::V2019_02_28_preview::Models::SpatialAnchorsAccountKeyRegenerateRequest
        ErrorResponse = Azure::MixedReality::Mgmt::V2019_02_28_preview::Models::ErrorResponse
        SpatialAnchorsAccountList = Azure::MixedReality::Mgmt::V2019_02_28_preview::Models::SpatialAnchorsAccountList
        Operation = Azure::MixedReality::Mgmt::V2019_02_28_preview::Models::Operation
        OperationDisplay = Azure::MixedReality::Mgmt::V2019_02_28_preview::Models::OperationDisplay
        OperationList = Azure::MixedReality::Mgmt::V2019_02_28_preview::Models::OperationList
        CheckNameAvailabilityResponse = Azure::MixedReality::Mgmt::V2019_02_28_preview::Models::CheckNameAvailabilityResponse
        Resource = Azure::MixedReality::Mgmt::V2019_02_28_preview::Models::Resource
        SpatialAnchorsAccount = Azure::MixedReality::Mgmt::V2019_02_28_preview::Models::SpatialAnchorsAccount
        ProxyResource = Azure::MixedReality::Mgmt::V2019_02_28_preview::Models::ProxyResource
        AzureEntityResource = Azure::MixedReality::Mgmt::V2019_02_28_preview::Models::AzureEntityResource
        TrackedResource = Azure::MixedReality::Mgmt::V2019_02_28_preview::Models::TrackedResource
        NameAvailability = Azure::MixedReality::Mgmt::V2019_02_28_preview::Models::NameAvailability
        NameUnavailableReason = Azure::MixedReality::Mgmt::V2019_02_28_preview::Models::NameUnavailableReason
      end

      class MixedRealityManagementClass
        attr_reader :operations, :spatial_anchors_accounts, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::MixedReality::Mgmt::V2019_02_28_preview::MixedRealityClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @spatial_anchors_accounts = @client_0.spatial_anchors_accounts

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/MixedReality/Mgmt"
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
          def spatial_anchors_account_keys
            Azure::MixedReality::Mgmt::V2019_02_28_preview::Models::SpatialAnchorsAccountKeys
          end
          def check_name_availability_request
            Azure::MixedReality::Mgmt::V2019_02_28_preview::Models::CheckNameAvailabilityRequest
          end
          def spatial_anchors_account_key_regenerate_request
            Azure::MixedReality::Mgmt::V2019_02_28_preview::Models::SpatialAnchorsAccountKeyRegenerateRequest
          end
          def error_response
            Azure::MixedReality::Mgmt::V2019_02_28_preview::Models::ErrorResponse
          end
          def spatial_anchors_account_list
            Azure::MixedReality::Mgmt::V2019_02_28_preview::Models::SpatialAnchorsAccountList
          end
          def operation
            Azure::MixedReality::Mgmt::V2019_02_28_preview::Models::Operation
          end
          def operation_display
            Azure::MixedReality::Mgmt::V2019_02_28_preview::Models::OperationDisplay
          end
          def operation_list
            Azure::MixedReality::Mgmt::V2019_02_28_preview::Models::OperationList
          end
          def check_name_availability_response
            Azure::MixedReality::Mgmt::V2019_02_28_preview::Models::CheckNameAvailabilityResponse
          end
          def resource
            Azure::MixedReality::Mgmt::V2019_02_28_preview::Models::Resource
          end
          def spatial_anchors_account
            Azure::MixedReality::Mgmt::V2019_02_28_preview::Models::SpatialAnchorsAccount
          end
          def proxy_resource
            Azure::MixedReality::Mgmt::V2019_02_28_preview::Models::ProxyResource
          end
          def azure_entity_resource
            Azure::MixedReality::Mgmt::V2019_02_28_preview::Models::AzureEntityResource
          end
          def tracked_resource
            Azure::MixedReality::Mgmt::V2019_02_28_preview::Models::TrackedResource
          end
          def name_availability
            Azure::MixedReality::Mgmt::V2019_02_28_preview::Models::NameAvailability
          end
          def name_unavailable_reason
            Azure::MixedReality::Mgmt::V2019_02_28_preview::Models::NameUnavailableReason
          end
        end
      end
    end
  end
end
