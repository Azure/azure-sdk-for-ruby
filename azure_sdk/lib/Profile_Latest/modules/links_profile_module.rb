# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_links'


module Azure::Profiles::Management::Profile_Latest
  module Links
    ResourceLinks = Azure::ARM::Links::Api_2016_09_01::ResourceLinks

    module Models
      ResourceLink = Azure::ARM::Links::Api_2016_09_01::Models::ResourceLink
      ResourceLinkFilter = Azure::ARM::Links::Api_2016_09_01::Models::ResourceLinkFilter
      ResourceLinkResult = Azure::ARM::Links::Api_2016_09_01::Models::ResourceLinkResult
      ResourceLinkProperties = Azure::ARM::Links::Api_2016_09_01::Models::ResourceLinkProperties
      Filter = Azure::ARM::Links::Api_2016_09_01::Models::Filter
    end

    #
    # Links
    #
    class LinksClass
      attr_accessor :resource_links, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Links::Api_2016_09_01::ManagementLinkClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.resource_links = Azure::ARM::Links::Api_2016_09_01::ResourceLinks.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2016-09-01'
            client = Azure::ARM::Links::Api_2016_09_01::ManagementLinkClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def resource_link
          Azure::ARM::Links::Api_2016_09_01::Models::ResourceLink
        end
        def resource_link_filter
          Azure::ARM::Links::Api_2016_09_01::Models::ResourceLinkFilter
        end
        def resource_link_result
          Azure::ARM::Links::Api_2016_09_01::Models::ResourceLinkResult
        end
        def resource_link_properties
          Azure::ARM::Links::Api_2016_09_01::Models::ResourceLinkProperties
        end
        def filter
          Azure::ARM::Links::Api_2016_09_01::Models::Filter
        end
      end
    end
  end
end
