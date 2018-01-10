# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_links'

module Azure::Links::Profiles::V2017_03_09
  module Mgmt
    ResourceLinks = Azure::Links::Mgmt::V2016_09_01::ResourceLinks

    module Models
      ResourceLink = Azure::Links::Mgmt::V2016_09_01::Models::ResourceLink
      ResourceLinkFilter = Azure::Links::Mgmt::V2016_09_01::Models::ResourceLinkFilter
      ResourceLinkResult = Azure::Links::Mgmt::V2016_09_01::Models::ResourceLinkResult
      ResourceLinkProperties = Azure::Links::Mgmt::V2016_09_01::Models::ResourceLinkProperties
      Filter = Azure::Links::Mgmt::V2016_09_01::Models::Filter
    end

    #
    # LinksManagementClass
    #
    class LinksManagementClass
      attr_reader :resource_links, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_default_options
        else
          @options = options
        end

        reset!(options)

        @configurable, @base_url, @options = self, nil, nil

        client_0 = Azure::Links::Mgmt::V2016_09_01::ManagementLinkClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(client_0)
        @resource_links = client_0.resource_links

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/V2017_03_09/Links/Mgmt'
        client.add_user_agent_information(profile_information)
      end

    end

    class ModelClasses
      def resource_link
        Azure::Links::Mgmt::V2016_09_01::Models::ResourceLink
      end
      def resource_link_filter
        Azure::Links::Mgmt::V2016_09_01::Models::ResourceLinkFilter
      end
      def resource_link_result
        Azure::Links::Mgmt::V2016_09_01::Models::ResourceLinkResult
      end
      def resource_link_properties
        Azure::Links::Mgmt::V2016_09_01::Models::ResourceLinkProperties
      end
      def filter
        Azure::Links::Mgmt::V2016_09_01::Models::Filter
      end
    end
  end
end
