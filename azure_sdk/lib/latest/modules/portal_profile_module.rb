# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_portal'

module Azure::Profiles::Latest
  module Portal
    module Mgmt
      Operations = Azure::Portal::Mgmt::V2019_01_01_preview::Operations
      Dashboards = Azure::Portal::Mgmt::V2019_01_01_preview::Dashboards

      module Models
        PatchableDashboard = Azure::Portal::Mgmt::V2019_01_01_preview::Models::PatchableDashboard
        ResourceProviderOperationDisplay = Azure::Portal::Mgmt::V2019_01_01_preview::Models::ResourceProviderOperationDisplay
        DashboardParts = Azure::Portal::Mgmt::V2019_01_01_preview::Models::DashboardParts
        ResourceProviderOperation = Azure::Portal::Mgmt::V2019_01_01_preview::Models::ResourceProviderOperation
        Dashboard = Azure::Portal::Mgmt::V2019_01_01_preview::Models::Dashboard
        ResourceProviderOperationList = Azure::Portal::Mgmt::V2019_01_01_preview::Models::ResourceProviderOperationList
        DashboardPartsPosition = Azure::Portal::Mgmt::V2019_01_01_preview::Models::DashboardPartsPosition
        ErrorDefinition = Azure::Portal::Mgmt::V2019_01_01_preview::Models::ErrorDefinition
        DashboardListResult = Azure::Portal::Mgmt::V2019_01_01_preview::Models::DashboardListResult
        ErrorResponse = Azure::Portal::Mgmt::V2019_01_01_preview::Models::ErrorResponse
        DashboardLens = Azure::Portal::Mgmt::V2019_01_01_preview::Models::DashboardLens
      end

      class PortalManagementClass
        attr_reader :operations, :dashboards, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Portal::Mgmt::V2019_01_01_preview::PortalClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @dashboards = @client_0.dashboards

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Portal/Mgmt"
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
          def patchable_dashboard
            Azure::Portal::Mgmt::V2019_01_01_preview::Models::PatchableDashboard
          end
          def resource_provider_operation_display
            Azure::Portal::Mgmt::V2019_01_01_preview::Models::ResourceProviderOperationDisplay
          end
          def dashboard_parts
            Azure::Portal::Mgmt::V2019_01_01_preview::Models::DashboardParts
          end
          def resource_provider_operation
            Azure::Portal::Mgmt::V2019_01_01_preview::Models::ResourceProviderOperation
          end
          def dashboard
            Azure::Portal::Mgmt::V2019_01_01_preview::Models::Dashboard
          end
          def resource_provider_operation_list
            Azure::Portal::Mgmt::V2019_01_01_preview::Models::ResourceProviderOperationList
          end
          def dashboard_parts_position
            Azure::Portal::Mgmt::V2019_01_01_preview::Models::DashboardPartsPosition
          end
          def error_definition
            Azure::Portal::Mgmt::V2019_01_01_preview::Models::ErrorDefinition
          end
          def dashboard_list_result
            Azure::Portal::Mgmt::V2019_01_01_preview::Models::DashboardListResult
          end
          def error_response
            Azure::Portal::Mgmt::V2019_01_01_preview::Models::ErrorResponse
          end
          def dashboard_lens
            Azure::Portal::Mgmt::V2019_01_01_preview::Models::DashboardLens
          end
        end
      end
    end
  end
end
