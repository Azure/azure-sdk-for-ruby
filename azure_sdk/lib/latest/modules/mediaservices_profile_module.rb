# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_media_services'

module Azure::Profiles::Latest
  module MediaServices
    module Mgmt
      Operations = Azure::MediaServices::Mgmt::V2015_10_01::Operations
      MediaServiceOperations = Azure::MediaServices::Mgmt::V2015_10_01::MediaServiceOperations

      module Models
        RegenerateKeyInput = Azure::MediaServices::Mgmt::V2015_10_01::Models::RegenerateKeyInput
        RegenerateKeyOutput = Azure::MediaServices::Mgmt::V2015_10_01::Models::RegenerateKeyOutput
        ApiError = Azure::MediaServices::Mgmt::V2015_10_01::Models::ApiError
        Resource = Azure::MediaServices::Mgmt::V2015_10_01::Models::Resource
        CheckNameAvailabilityOutput = Azure::MediaServices::Mgmt::V2015_10_01::Models::CheckNameAvailabilityOutput
        ServiceKeys = Azure::MediaServices::Mgmt::V2015_10_01::Models::ServiceKeys
        MediaServiceCollection = Azure::MediaServices::Mgmt::V2015_10_01::Models::MediaServiceCollection
        SyncStorageKeysInput = Azure::MediaServices::Mgmt::V2015_10_01::Models::SyncStorageKeysInput
        CheckNameAvailabilityInput = Azure::MediaServices::Mgmt::V2015_10_01::Models::CheckNameAvailabilityInput
        OperationDisplay = Azure::MediaServices::Mgmt::V2015_10_01::Models::OperationDisplay
        ApiEndpoint = Azure::MediaServices::Mgmt::V2015_10_01::Models::ApiEndpoint
        Operation = Azure::MediaServices::Mgmt::V2015_10_01::Models::Operation
        StorageAccount = Azure::MediaServices::Mgmt::V2015_10_01::Models::StorageAccount
        OperationListResult = Azure::MediaServices::Mgmt::V2015_10_01::Models::OperationListResult
        MediaService = Azure::MediaServices::Mgmt::V2015_10_01::Models::MediaService
        ResourceType = Azure::MediaServices::Mgmt::V2015_10_01::Models::ResourceType
        EntityNameUnavailabilityReason = Azure::MediaServices::Mgmt::V2015_10_01::Models::EntityNameUnavailabilityReason
        KeyType = Azure::MediaServices::Mgmt::V2015_10_01::Models::KeyType
      end

      class MediaServicesManagementClass
        attr_reader :operations, :media_service_operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::MediaServices::Mgmt::V2015_10_01::MediaServicesManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @media_service_operations = @client_0.media_service_operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/MediaServices/Mgmt"
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
          def regenerate_key_input
            Azure::MediaServices::Mgmt::V2015_10_01::Models::RegenerateKeyInput
          end
          def regenerate_key_output
            Azure::MediaServices::Mgmt::V2015_10_01::Models::RegenerateKeyOutput
          end
          def api_error
            Azure::MediaServices::Mgmt::V2015_10_01::Models::ApiError
          end
          def resource
            Azure::MediaServices::Mgmt::V2015_10_01::Models::Resource
          end
          def check_name_availability_output
            Azure::MediaServices::Mgmt::V2015_10_01::Models::CheckNameAvailabilityOutput
          end
          def service_keys
            Azure::MediaServices::Mgmt::V2015_10_01::Models::ServiceKeys
          end
          def media_service_collection
            Azure::MediaServices::Mgmt::V2015_10_01::Models::MediaServiceCollection
          end
          def sync_storage_keys_input
            Azure::MediaServices::Mgmt::V2015_10_01::Models::SyncStorageKeysInput
          end
          def check_name_availability_input
            Azure::MediaServices::Mgmt::V2015_10_01::Models::CheckNameAvailabilityInput
          end
          def operation_display
            Azure::MediaServices::Mgmt::V2015_10_01::Models::OperationDisplay
          end
          def api_endpoint
            Azure::MediaServices::Mgmt::V2015_10_01::Models::ApiEndpoint
          end
          def operation
            Azure::MediaServices::Mgmt::V2015_10_01::Models::Operation
          end
          def storage_account
            Azure::MediaServices::Mgmt::V2015_10_01::Models::StorageAccount
          end
          def operation_list_result
            Azure::MediaServices::Mgmt::V2015_10_01::Models::OperationListResult
          end
          def media_service
            Azure::MediaServices::Mgmt::V2015_10_01::Models::MediaService
          end
          def resource_type
            Azure::MediaServices::Mgmt::V2015_10_01::Models::ResourceType
          end
          def entity_name_unavailability_reason
            Azure::MediaServices::Mgmt::V2015_10_01::Models::EntityNameUnavailabilityReason
          end
          def key_type
            Azure::MediaServices::Mgmt::V2015_10_01::Models::KeyType
          end
        end
      end
    end
  end
end
