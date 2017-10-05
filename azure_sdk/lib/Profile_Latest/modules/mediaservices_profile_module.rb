# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_media_services'


module Azure::Profiles::Management::Profile_Latest
  module MediaServices
    Operations = Azure::ARM::MediaServices::Api_2015_10_01::Operations
    MediaServiceOperations = Azure::ARM::MediaServices::Api_2015_10_01::MediaServiceOperations

    module Models
      RegenerateKeyInput = Azure::ARM::MediaServices::Api_2015_10_01::Models::RegenerateKeyInput
      RegenerateKeyOutput = Azure::ARM::MediaServices::Api_2015_10_01::Models::RegenerateKeyOutput
      ApiError = Azure::ARM::MediaServices::Api_2015_10_01::Models::ApiError
      CheckNameAvailabilityOutput = Azure::ARM::MediaServices::Api_2015_10_01::Models::CheckNameAvailabilityOutput
      ServiceKeys = Azure::ARM::MediaServices::Api_2015_10_01::Models::ServiceKeys
      MediaServiceCollection = Azure::ARM::MediaServices::Api_2015_10_01::Models::MediaServiceCollection
      SyncStorageKeysInput = Azure::ARM::MediaServices::Api_2015_10_01::Models::SyncStorageKeysInput
      CheckNameAvailabilityInput = Azure::ARM::MediaServices::Api_2015_10_01::Models::CheckNameAvailabilityInput
      OperationDisplay = Azure::ARM::MediaServices::Api_2015_10_01::Models::OperationDisplay
      ApiEndpoint = Azure::ARM::MediaServices::Api_2015_10_01::Models::ApiEndpoint
      Operation = Azure::ARM::MediaServices::Api_2015_10_01::Models::Operation
      StorageAccount = Azure::ARM::MediaServices::Api_2015_10_01::Models::StorageAccount
      OperationListResult = Azure::ARM::MediaServices::Api_2015_10_01::Models::OperationListResult
      MediaService = Azure::ARM::MediaServices::Api_2015_10_01::Models::MediaService
      ResourceType = Azure::ARM::MediaServices::Api_2015_10_01::Models::ResourceType
      EntityNameUnavailabilityReason = Azure::ARM::MediaServices::Api_2015_10_01::Models::EntityNameUnavailabilityReason
      KeyType = Azure::ARM::MediaServices::Api_2015_10_01::Models::KeyType
    end

    #
    # MediaServices
    #
    class MediaServicesClass
      attr_accessor :operations, :media_service_operations, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::MediaServices::Api_2015_10_01::MediaServicesManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.operations = Azure::ARM::MediaServices::Api_2015_10_01::Operations.new(client)
        self.media_service_operations = Azure::ARM::MediaServices::Api_2015_10_01::MediaServiceOperations.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2015-10-01'
            client = Azure::ARM::MediaServices::Api_2015_10_01::MediaServicesManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def regenerate_key_input
          Azure::ARM::MediaServices::Api_2015_10_01::Models::RegenerateKeyInput
        end
        def regenerate_key_output
          Azure::ARM::MediaServices::Api_2015_10_01::Models::RegenerateKeyOutput
        end
        def api_error
          Azure::ARM::MediaServices::Api_2015_10_01::Models::ApiError
        end
        def check_name_availability_output
          Azure::ARM::MediaServices::Api_2015_10_01::Models::CheckNameAvailabilityOutput
        end
        def service_keys
          Azure::ARM::MediaServices::Api_2015_10_01::Models::ServiceKeys
        end
        def media_service_collection
          Azure::ARM::MediaServices::Api_2015_10_01::Models::MediaServiceCollection
        end
        def sync_storage_keys_input
          Azure::ARM::MediaServices::Api_2015_10_01::Models::SyncStorageKeysInput
        end
        def check_name_availability_input
          Azure::ARM::MediaServices::Api_2015_10_01::Models::CheckNameAvailabilityInput
        end
        def operation_display
          Azure::ARM::MediaServices::Api_2015_10_01::Models::OperationDisplay
        end
        def api_endpoint
          Azure::ARM::MediaServices::Api_2015_10_01::Models::ApiEndpoint
        end
        def operation
          Azure::ARM::MediaServices::Api_2015_10_01::Models::Operation
        end
        def storage_account
          Azure::ARM::MediaServices::Api_2015_10_01::Models::StorageAccount
        end
        def operation_list_result
          Azure::ARM::MediaServices::Api_2015_10_01::Models::OperationListResult
        end
        def media_service
          Azure::ARM::MediaServices::Api_2015_10_01::Models::MediaService
        end
        def resource_type
          Azure::ARM::MediaServices::Api_2015_10_01::Models::ResourceType
        end
        def entity_name_unavailability_reason
          Azure::ARM::MediaServices::Api_2015_10_01::Models::EntityNameUnavailabilityReason
        end
        def key_type
          Azure::ARM::MediaServices::Api_2015_10_01::Models::KeyType
        end
      end
    end
  end
end
