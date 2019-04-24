# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_links'

module Azure::Profiles::Latest
  module Links
    module Mgmt
      Operations = Azure::Links::Mgmt::V2016_09_01::Operations
      ResourceLinks = Azure::Links::Mgmt::V2016_09_01::ResourceLinks

      module Models
        ResourceLinkResult = Azure::Links::Mgmt::V2016_09_01::Models::ResourceLinkResult
        OperationDisplay = Azure::Links::Mgmt::V2016_09_01::Models::OperationDisplay
        ResourceLinkProperties = Azure::Links::Mgmt::V2016_09_01::Models::ResourceLinkProperties
        Operation = Azure::Links::Mgmt::V2016_09_01::Models::Operation
        ResourceLink = Azure::Links::Mgmt::V2016_09_01::Models::ResourceLink
        ResourceLinkFilter = Azure::Links::Mgmt::V2016_09_01::Models::ResourceLinkFilter
        OperationListResult = Azure::Links::Mgmt::V2016_09_01::Models::OperationListResult
        Filter = Azure::Links::Mgmt::V2016_09_01::Models::Filter
      end

      class LinksManagementClass
        attr_reader :operations, :resource_links, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Links::Mgmt::V2016_09_01::ManagementLinkClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @resource_links = @client_0.resource_links

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Links/Mgmt"
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
          def resource_link_result
            Azure::Links::Mgmt::V2016_09_01::Models::ResourceLinkResult
          end
          def operation_display
            Azure::Links::Mgmt::V2016_09_01::Models::OperationDisplay
          end
          def resource_link_properties
            Azure::Links::Mgmt::V2016_09_01::Models::ResourceLinkProperties
          end
          def operation
            Azure::Links::Mgmt::V2016_09_01::Models::Operation
          end
          def resource_link
            Azure::Links::Mgmt::V2016_09_01::Models::ResourceLink
          end
          def resource_link_filter
            Azure::Links::Mgmt::V2016_09_01::Models::ResourceLinkFilter
          end
          def operation_list_result
            Azure::Links::Mgmt::V2016_09_01::Models::OperationListResult
          end
          def filter
            Azure::Links::Mgmt::V2016_09_01::Models::Filter
          end
        end
      end
    end
  end
end
