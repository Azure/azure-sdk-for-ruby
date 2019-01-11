# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_msi'

module Azure::Profiles::Latest
  module ManagedServiceIdentity
    module Mgmt
      Operations = Azure::ManagedServiceIdentity::Mgmt::V2015_08_31_preview::Operations
      UserAssignedIdentities = Azure::ManagedServiceIdentity::Mgmt::V2015_08_31_preview::UserAssignedIdentities

      module Models
        Operation = Azure::ManagedServiceIdentity::Mgmt::V2015_08_31_preview::Models::Operation
        UserAssignedIdentitiesListResult = Azure::ManagedServiceIdentity::Mgmt::V2015_08_31_preview::Models::UserAssignedIdentitiesListResult
        OperationListResult = Azure::ManagedServiceIdentity::Mgmt::V2015_08_31_preview::Models::OperationListResult
        Identity = Azure::ManagedServiceIdentity::Mgmt::V2015_08_31_preview::Models::Identity
        OperationDisplay = Azure::ManagedServiceIdentity::Mgmt::V2015_08_31_preview::Models::OperationDisplay
        UserAssignedIdentities = Azure::ManagedServiceIdentity::Mgmt::V2015_08_31_preview::Models::UserAssignedIdentities
      end

      class ManagedServiceIdentityManagementClass
        attr_reader :operations, :user_assigned_identities, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::ManagedServiceIdentity::Mgmt::V2015_08_31_preview::ManagedServiceIdentityClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @user_assigned_identities = @client_0.user_assigned_identities

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/ManagedServiceIdentity/Mgmt"
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
          def operation
            Azure::ManagedServiceIdentity::Mgmt::V2015_08_31_preview::Models::Operation
          end
          def user_assigned_identities_list_result
            Azure::ManagedServiceIdentity::Mgmt::V2015_08_31_preview::Models::UserAssignedIdentitiesListResult
          end
          def operation_list_result
            Azure::ManagedServiceIdentity::Mgmt::V2015_08_31_preview::Models::OperationListResult
          end
          def identity
            Azure::ManagedServiceIdentity::Mgmt::V2015_08_31_preview::Models::Identity
          end
          def operation_display
            Azure::ManagedServiceIdentity::Mgmt::V2015_08_31_preview::Models::OperationDisplay
          end
          def user_assigned_identities
            Azure::ManagedServiceIdentity::Mgmt::V2015_08_31_preview::Models::UserAssignedIdentities
          end
        end
      end
    end
  end
end
