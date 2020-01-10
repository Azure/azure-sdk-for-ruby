# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_storagesync'

module Azure::Profiles::Latest
  module StorageSync
    module Mgmt
      Operations = Azure::StorageSync::Mgmt::V2019_06_01::Operations
      StorageSyncServices = Azure::StorageSync::Mgmt::V2019_06_01::StorageSyncServices
      SyncGroups = Azure::StorageSync::Mgmt::V2019_06_01::SyncGroups
      CloudEndpoints = Azure::StorageSync::Mgmt::V2019_06_01::CloudEndpoints
      ServerEndpoints = Azure::StorageSync::Mgmt::V2019_06_01::ServerEndpoints
      RegisteredServers = Azure::StorageSync::Mgmt::V2019_06_01::RegisteredServers
      Workflows = Azure::StorageSync::Mgmt::V2019_06_01::Workflows
      OperationStatusOperations = Azure::StorageSync::Mgmt::V2019_06_01::OperationStatusOperations

      module Models
        ResourcesMoveInfo = Azure::StorageSync::Mgmt::V2019_06_01::Models::ResourcesMoveInfo
        StorageSyncErrorDetails = Azure::StorageSync::Mgmt::V2019_06_01::Models::StorageSyncErrorDetails
        Resource = Azure::StorageSync::Mgmt::V2019_06_01::Models::Resource
        StorageSyncError = Azure::StorageSync::Mgmt::V2019_06_01::Models::StorageSyncError
        StorageSyncApiError = Azure::StorageSync::Mgmt::V2019_06_01::Models::StorageSyncApiError
        ServerEndpointRecallError = Azure::StorageSync::Mgmt::V2019_06_01::Models::ServerEndpointRecallError
        OperationStatus = Azure::StorageSync::Mgmt::V2019_06_01::Models::OperationStatus
        ServerEndpointRecallStatus = Azure::StorageSync::Mgmt::V2019_06_01::Models::ServerEndpointRecallStatus
        TriggerChangeDetectionParameters = Azure::StorageSync::Mgmt::V2019_06_01::Models::TriggerChangeDetectionParameters
        SyncGroupArray = Azure::StorageSync::Mgmt::V2019_06_01::Models::SyncGroupArray
        StorageSyncServiceCreateParameters = Azure::StorageSync::Mgmt::V2019_06_01::Models::StorageSyncServiceCreateParameters
        SubscriptionState = Azure::StorageSync::Mgmt::V2019_06_01::Models::SubscriptionState
        RegisteredServerArray = Azure::StorageSync::Mgmt::V2019_06_01::Models::RegisteredServerArray
        StorageSyncServiceArray = Azure::StorageSync::Mgmt::V2019_06_01::Models::StorageSyncServiceArray
        TriggerRolloverRequest = Azure::StorageSync::Mgmt::V2019_06_01::Models::TriggerRolloverRequest
        ServerEndpointUpdateParameters = Azure::StorageSync::Mgmt::V2019_06_01::Models::ServerEndpointUpdateParameters
        OperationDisplayInfo = Azure::StorageSync::Mgmt::V2019_06_01::Models::OperationDisplayInfo
        ServerEndpointSyncSessionStatus = Azure::StorageSync::Mgmt::V2019_06_01::Models::ServerEndpointSyncSessionStatus
        OperationEntity = Azure::StorageSync::Mgmt::V2019_06_01::Models::OperationEntity
        ServerEndpointSyncStatus = Azure::StorageSync::Mgmt::V2019_06_01::Models::ServerEndpointSyncStatus
        OperationEntityListResult = Azure::StorageSync::Mgmt::V2019_06_01::Models::OperationEntityListResult
        StorageSyncServiceUpdateParameters = Azure::StorageSync::Mgmt::V2019_06_01::Models::StorageSyncServiceUpdateParameters
        OperationDisplayResource = Azure::StorageSync::Mgmt::V2019_06_01::Models::OperationDisplayResource
        WorkflowArray = Azure::StorageSync::Mgmt::V2019_06_01::Models::WorkflowArray
        CheckNameAvailabilityParameters = Azure::StorageSync::Mgmt::V2019_06_01::Models::CheckNameAvailabilityParameters
        CloudEndpointArray = Azure::StorageSync::Mgmt::V2019_06_01::Models::CloudEndpointArray
        CheckNameAvailabilityResult = Azure::StorageSync::Mgmt::V2019_06_01::Models::CheckNameAvailabilityResult
        ServerEndpointSyncActivityStatus = Azure::StorageSync::Mgmt::V2019_06_01::Models::ServerEndpointSyncActivityStatus
        RestoreFileSpec = Azure::StorageSync::Mgmt::V2019_06_01::Models::RestoreFileSpec
        RecallActionParameters = Azure::StorageSync::Mgmt::V2019_06_01::Models::RecallActionParameters
        PostRestoreRequest = Azure::StorageSync::Mgmt::V2019_06_01::Models::PostRestoreRequest
        ServerEndpointFilesNotSyncingError = Azure::StorageSync::Mgmt::V2019_06_01::Models::ServerEndpointFilesNotSyncingError
        PreRestoreRequest = Azure::StorageSync::Mgmt::V2019_06_01::Models::PreRestoreRequest
        ServerEndpointArray = Azure::StorageSync::Mgmt::V2019_06_01::Models::ServerEndpointArray
        BackupRequest = Azure::StorageSync::Mgmt::V2019_06_01::Models::BackupRequest
        ServerEndpointCloudTieringStatus = Azure::StorageSync::Mgmt::V2019_06_01::Models::ServerEndpointCloudTieringStatus
        PostBackupResponse = Azure::StorageSync::Mgmt::V2019_06_01::Models::PostBackupResponse
        StorageSyncService = Azure::StorageSync::Mgmt::V2019_06_01::Models::StorageSyncService
        ProxyResource = Azure::StorageSync::Mgmt::V2019_06_01::Models::ProxyResource
        SyncGroup = Azure::StorageSync::Mgmt::V2019_06_01::Models::SyncGroup
        CloudEndpoint = Azure::StorageSync::Mgmt::V2019_06_01::Models::CloudEndpoint
        SyncGroupCreateParameters = Azure::StorageSync::Mgmt::V2019_06_01::Models::SyncGroupCreateParameters
        CloudEndpointCreateParameters = Azure::StorageSync::Mgmt::V2019_06_01::Models::CloudEndpointCreateParameters
        ServerEndpointCreateParameters = Azure::StorageSync::Mgmt::V2019_06_01::Models::ServerEndpointCreateParameters
        RegisteredServerCreateParameters = Azure::StorageSync::Mgmt::V2019_06_01::Models::RegisteredServerCreateParameters
        ServerEndpoint = Azure::StorageSync::Mgmt::V2019_06_01::Models::ServerEndpoint
        RegisteredServer = Azure::StorageSync::Mgmt::V2019_06_01::Models::RegisteredServer
        Workflow = Azure::StorageSync::Mgmt::V2019_06_01::Models::Workflow
        TrackedResource = Azure::StorageSync::Mgmt::V2019_06_01::Models::TrackedResource
        AzureEntityResource = Azure::StorageSync::Mgmt::V2019_06_01::Models::AzureEntityResource
        Reason = Azure::StorageSync::Mgmt::V2019_06_01::Models::Reason
        ChangeDetectionMode = Azure::StorageSync::Mgmt::V2019_06_01::Models::ChangeDetectionMode
        NameAvailabilityReason = Azure::StorageSync::Mgmt::V2019_06_01::Models::NameAvailabilityReason
      end

      class StorageSyncManagementClass
        attr_reader :operations, :storage_sync_services, :sync_groups, :cloud_endpoints, :server_endpoints, :registered_servers, :workflows, :operation_status_operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::StorageSync::Mgmt::V2019_06_01::StorageSyncManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @storage_sync_services = @client_0.storage_sync_services
          @sync_groups = @client_0.sync_groups
          @cloud_endpoints = @client_0.cloud_endpoints
          @server_endpoints = @client_0.server_endpoints
          @registered_servers = @client_0.registered_servers
          @workflows = @client_0.workflows
          @operation_status_operations = @client_0.operation_status_operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/StorageSync/Mgmt"
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
          def resources_move_info
            Azure::StorageSync::Mgmt::V2019_06_01::Models::ResourcesMoveInfo
          end
          def storage_sync_error_details
            Azure::StorageSync::Mgmt::V2019_06_01::Models::StorageSyncErrorDetails
          end
          def resource
            Azure::StorageSync::Mgmt::V2019_06_01::Models::Resource
          end
          def storage_sync_error
            Azure::StorageSync::Mgmt::V2019_06_01::Models::StorageSyncError
          end
          def storage_sync_api_error
            Azure::StorageSync::Mgmt::V2019_06_01::Models::StorageSyncApiError
          end
          def server_endpoint_recall_error
            Azure::StorageSync::Mgmt::V2019_06_01::Models::ServerEndpointRecallError
          end
          def operation_status
            Azure::StorageSync::Mgmt::V2019_06_01::Models::OperationStatus
          end
          def server_endpoint_recall_status
            Azure::StorageSync::Mgmt::V2019_06_01::Models::ServerEndpointRecallStatus
          end
          def trigger_change_detection_parameters
            Azure::StorageSync::Mgmt::V2019_06_01::Models::TriggerChangeDetectionParameters
          end
          def sync_group_array
            Azure::StorageSync::Mgmt::V2019_06_01::Models::SyncGroupArray
          end
          def storage_sync_service_create_parameters
            Azure::StorageSync::Mgmt::V2019_06_01::Models::StorageSyncServiceCreateParameters
          end
          def subscription_state
            Azure::StorageSync::Mgmt::V2019_06_01::Models::SubscriptionState
          end
          def registered_server_array
            Azure::StorageSync::Mgmt::V2019_06_01::Models::RegisteredServerArray
          end
          def storage_sync_service_array
            Azure::StorageSync::Mgmt::V2019_06_01::Models::StorageSyncServiceArray
          end
          def trigger_rollover_request
            Azure::StorageSync::Mgmt::V2019_06_01::Models::TriggerRolloverRequest
          end
          def server_endpoint_update_parameters
            Azure::StorageSync::Mgmt::V2019_06_01::Models::ServerEndpointUpdateParameters
          end
          def operation_display_info
            Azure::StorageSync::Mgmt::V2019_06_01::Models::OperationDisplayInfo
          end
          def server_endpoint_sync_session_status
            Azure::StorageSync::Mgmt::V2019_06_01::Models::ServerEndpointSyncSessionStatus
          end
          def operation_entity
            Azure::StorageSync::Mgmt::V2019_06_01::Models::OperationEntity
          end
          def server_endpoint_sync_status
            Azure::StorageSync::Mgmt::V2019_06_01::Models::ServerEndpointSyncStatus
          end
          def operation_entity_list_result
            Azure::StorageSync::Mgmt::V2019_06_01::Models::OperationEntityListResult
          end
          def storage_sync_service_update_parameters
            Azure::StorageSync::Mgmt::V2019_06_01::Models::StorageSyncServiceUpdateParameters
          end
          def operation_display_resource
            Azure::StorageSync::Mgmt::V2019_06_01::Models::OperationDisplayResource
          end
          def workflow_array
            Azure::StorageSync::Mgmt::V2019_06_01::Models::WorkflowArray
          end
          def check_name_availability_parameters
            Azure::StorageSync::Mgmt::V2019_06_01::Models::CheckNameAvailabilityParameters
          end
          def cloud_endpoint_array
            Azure::StorageSync::Mgmt::V2019_06_01::Models::CloudEndpointArray
          end
          def check_name_availability_result
            Azure::StorageSync::Mgmt::V2019_06_01::Models::CheckNameAvailabilityResult
          end
          def server_endpoint_sync_activity_status
            Azure::StorageSync::Mgmt::V2019_06_01::Models::ServerEndpointSyncActivityStatus
          end
          def restore_file_spec
            Azure::StorageSync::Mgmt::V2019_06_01::Models::RestoreFileSpec
          end
          def recall_action_parameters
            Azure::StorageSync::Mgmt::V2019_06_01::Models::RecallActionParameters
          end
          def post_restore_request
            Azure::StorageSync::Mgmt::V2019_06_01::Models::PostRestoreRequest
          end
          def server_endpoint_files_not_syncing_error
            Azure::StorageSync::Mgmt::V2019_06_01::Models::ServerEndpointFilesNotSyncingError
          end
          def pre_restore_request
            Azure::StorageSync::Mgmt::V2019_06_01::Models::PreRestoreRequest
          end
          def server_endpoint_array
            Azure::StorageSync::Mgmt::V2019_06_01::Models::ServerEndpointArray
          end
          def backup_request
            Azure::StorageSync::Mgmt::V2019_06_01::Models::BackupRequest
          end
          def server_endpoint_cloud_tiering_status
            Azure::StorageSync::Mgmt::V2019_06_01::Models::ServerEndpointCloudTieringStatus
          end
          def post_backup_response
            Azure::StorageSync::Mgmt::V2019_06_01::Models::PostBackupResponse
          end
          def storage_sync_service
            Azure::StorageSync::Mgmt::V2019_06_01::Models::StorageSyncService
          end
          def proxy_resource
            Azure::StorageSync::Mgmt::V2019_06_01::Models::ProxyResource
          end
          def sync_group
            Azure::StorageSync::Mgmt::V2019_06_01::Models::SyncGroup
          end
          def cloud_endpoint
            Azure::StorageSync::Mgmt::V2019_06_01::Models::CloudEndpoint
          end
          def sync_group_create_parameters
            Azure::StorageSync::Mgmt::V2019_06_01::Models::SyncGroupCreateParameters
          end
          def cloud_endpoint_create_parameters
            Azure::StorageSync::Mgmt::V2019_06_01::Models::CloudEndpointCreateParameters
          end
          def server_endpoint_create_parameters
            Azure::StorageSync::Mgmt::V2019_06_01::Models::ServerEndpointCreateParameters
          end
          def registered_server_create_parameters
            Azure::StorageSync::Mgmt::V2019_06_01::Models::RegisteredServerCreateParameters
          end
          def server_endpoint
            Azure::StorageSync::Mgmt::V2019_06_01::Models::ServerEndpoint
          end
          def registered_server
            Azure::StorageSync::Mgmt::V2019_06_01::Models::RegisteredServer
          end
          def workflow
            Azure::StorageSync::Mgmt::V2019_06_01::Models::Workflow
          end
          def tracked_resource
            Azure::StorageSync::Mgmt::V2019_06_01::Models::TrackedResource
          end
          def azure_entity_resource
            Azure::StorageSync::Mgmt::V2019_06_01::Models::AzureEntityResource
          end
          def reason
            Azure::StorageSync::Mgmt::V2019_06_01::Models::Reason
          end
          def change_detection_mode
            Azure::StorageSync::Mgmt::V2019_06_01::Models::ChangeDetectionMode
          end
          def name_availability_reason
            Azure::StorageSync::Mgmt::V2019_06_01::Models::NameAvailabilityReason
          end
        end
      end
    end
  end
end
