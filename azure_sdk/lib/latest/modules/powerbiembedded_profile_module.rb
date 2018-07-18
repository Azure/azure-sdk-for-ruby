# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_powerbi_embedded'

module Azure::Profiles::Latest
  module PowerBiEmbedded
    module Mgmt
      Workspaces = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Workspaces
      WorkspaceCollections = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::WorkspaceCollections

      module Models
        CheckNameReason = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::CheckNameReason
        OperationList = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::OperationList
        WorkspaceCollectionAccessKeys = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::WorkspaceCollectionAccessKeys
        WorkspaceCollection = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::WorkspaceCollection
        WorkspaceCollectionAccessKey = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::WorkspaceCollectionAccessKey
        CreateWorkspaceCollectionRequest = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::CreateWorkspaceCollectionRequest
        Operation = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::Operation
        Workspace = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::Workspace
        UpdateWorkspaceCollectionRequest = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::UpdateWorkspaceCollectionRequest
        Display = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::Display
        CheckNameRequest = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::CheckNameRequest
        AzureSku = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::AzureSku
        CheckNameResponse = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::CheckNameResponse
        WorkspaceList = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::WorkspaceList
        MigrateWorkspaceCollectionRequest = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::MigrateWorkspaceCollectionRequest
        WorkspaceCollectionList = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::WorkspaceCollectionList
        Error = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::Error
        ErrorDetail = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::ErrorDetail
        AccessKeyName = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::AccessKeyName
      end

      class PowerBiEmbeddedManagementClass
        attr_reader :workspaces, :workspace_collections, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::PowerBIEmbeddedManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @workspaces = @client_0.workspaces
          @workspace_collections = @client_0.workspace_collections

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/PowerBiEmbedded/Mgmt"
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
          def check_name_reason
            Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::CheckNameReason
          end
          def operation_list
            Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::OperationList
          end
          def workspace_collection_access_keys
            Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::WorkspaceCollectionAccessKeys
          end
          def workspace_collection
            Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::WorkspaceCollection
          end
          def workspace_collection_access_key
            Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::WorkspaceCollectionAccessKey
          end
          def create_workspace_collection_request
            Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::CreateWorkspaceCollectionRequest
          end
          def operation
            Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::Operation
          end
          def workspace
            Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::Workspace
          end
          def update_workspace_collection_request
            Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::UpdateWorkspaceCollectionRequest
          end
          def display
            Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::Display
          end
          def check_name_request
            Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::CheckNameRequest
          end
          def azure_sku
            Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::AzureSku
          end
          def check_name_response
            Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::CheckNameResponse
          end
          def workspace_list
            Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::WorkspaceList
          end
          def migrate_workspace_collection_request
            Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::MigrateWorkspaceCollectionRequest
          end
          def workspace_collection_list
            Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::WorkspaceCollectionList
          end
          def error
            Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::Error
          end
          def error_detail
            Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::ErrorDetail
          end
          def access_key_name
            Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::AccessKeyName
          end
        end
      end
    end
  end
end
