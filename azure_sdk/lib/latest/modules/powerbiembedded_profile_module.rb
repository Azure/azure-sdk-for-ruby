# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_powerbi_embedded'

module Azure::Profiles::Latest
  module PowerBiEmbedded
    module Mgmt
      WorkspaceCollections = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::WorkspaceCollections
      Workspaces = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Workspaces

      module Models
        AccessKeyName = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::AccessKeyName
        ErrorDetail = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::ErrorDetail
        AzureSku = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::AzureSku
        Operation = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::Operation
        CheckNameReason = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::CheckNameReason
        OperationList = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::OperationList
        WorkspaceCollectionAccessKeys = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::WorkspaceCollectionAccessKeys
        WorkspaceCollection = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::WorkspaceCollection
        WorkspaceCollectionAccessKey = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::WorkspaceCollectionAccessKey
        CreateWorkspaceCollectionRequest = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::CreateWorkspaceCollectionRequest
        Display = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::Display
        UpdateWorkspaceCollectionRequest = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::UpdateWorkspaceCollectionRequest
        CheckNameRequest = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::CheckNameRequest
        Workspace = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::Workspace
        WorkspaceList = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::WorkspaceList
        CheckNameResponse = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::CheckNameResponse
        Error = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::Error
        MigrateWorkspaceCollectionRequest = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::MigrateWorkspaceCollectionRequest
        WorkspaceCollectionList = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::WorkspaceCollectionList
      end

      class PowerBiEmbeddedManagementClass
        attr_reader :workspace_collections, :workspaces, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::PowerBiEmbedded::Mgmt::V2016_01_29::PowerBIEmbeddedManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @workspace_collections = @client_0.workspace_collections
          @workspaces = @client_0.workspaces

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
          def access_key_name
            Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::AccessKeyName
          end
          def error_detail
            Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::ErrorDetail
          end
          def azure_sku
            Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::AzureSku
          end
          def operation
            Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::Operation
          end
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
          def display
            Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::Display
          end
          def update_workspace_collection_request
            Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::UpdateWorkspaceCollectionRequest
          end
          def check_name_request
            Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::CheckNameRequest
          end
          def workspace
            Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::Workspace
          end
          def workspace_list
            Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::WorkspaceList
          end
          def check_name_response
            Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::CheckNameResponse
          end
          def error
            Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::Error
          end
          def migrate_workspace_collection_request
            Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::MigrateWorkspaceCollectionRequest
          end
          def workspace_collection_list
            Azure::PowerBiEmbedded::Mgmt::V2016_01_29::Models::WorkspaceCollectionList
          end
        end
      end
    end
  end
end
