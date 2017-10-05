# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_powerbi_embedded'


module Azure::Profiles::Management::Profile_Latest
  module PowerBiEmbedded
    WorkspaceCollections = Azure::ARM::PowerBiEmbedded::Api_2016_01_29::WorkspaceCollections
    Workspaces = Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Workspaces

    module Models
      Operation = Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::Operation
      OperationList = Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::OperationList
      Error = Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::Error
      WorkspaceCollectionAccessKeys = Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::WorkspaceCollectionAccessKeys
      WorkspaceCollection = Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::WorkspaceCollection
      WorkspaceCollectionAccessKey = Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::WorkspaceCollectionAccessKey
      Workspace = Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::Workspace
      CreateWorkspaceCollectionRequest = Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::CreateWorkspaceCollectionRequest
      Display = Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::Display
      UpdateWorkspaceCollectionRequest = Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::UpdateWorkspaceCollectionRequest
      AzureSku = Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::AzureSku
      CheckNameRequest = Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::CheckNameRequest
      WorkspaceList = Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::WorkspaceList
      CheckNameResponse = Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::CheckNameResponse
      WorkspaceCollectionList = Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::WorkspaceCollectionList
      MigrateWorkspaceCollectionRequest = Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::MigrateWorkspaceCollectionRequest
      ErrorDetail = Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::ErrorDetail
      AccessKeyName = Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::AccessKeyName
      CheckNameReason = Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::CheckNameReason
    end

    #
    # PowerBiEmbedded
    #
    class PowerBiEmbeddedClass
      attr_accessor :workspace_collections, :workspaces, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::PowerBiEmbedded::Api_2016_01_29::PowerBIEmbeddedManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.workspace_collections = Azure::ARM::PowerBiEmbedded::Api_2016_01_29::WorkspaceCollections.new(client)
        self.workspaces = Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Workspaces.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2016-01-29'
            client = Azure::ARM::PowerBiEmbedded::Api_2016_01_29::PowerBIEmbeddedManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def operation
          Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::Operation
        end
        def operation_list
          Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::OperationList
        end
        def error
          Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::Error
        end
        def workspace_collection_access_keys
          Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::WorkspaceCollectionAccessKeys
        end
        def workspace_collection
          Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::WorkspaceCollection
        end
        def workspace_collection_access_key
          Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::WorkspaceCollectionAccessKey
        end
        def workspace
          Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::Workspace
        end
        def create_workspace_collection_request
          Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::CreateWorkspaceCollectionRequest
        end
        def display
          Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::Display
        end
        def update_workspace_collection_request
          Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::UpdateWorkspaceCollectionRequest
        end
        def azure_sku
          Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::AzureSku
        end
        def check_name_request
          Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::CheckNameRequest
        end
        def workspace_list
          Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::WorkspaceList
        end
        def check_name_response
          Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::CheckNameResponse
        end
        def workspace_collection_list
          Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::WorkspaceCollectionList
        end
        def migrate_workspace_collection_request
          Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::MigrateWorkspaceCollectionRequest
        end
        def error_detail
          Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::ErrorDetail
        end
        def access_key_name
          Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::AccessKeyName
        end
        def check_name_reason
          Azure::ARM::PowerBiEmbedded::Api_2016_01_29::Models::CheckNameReason
        end
      end
    end
  end
end
