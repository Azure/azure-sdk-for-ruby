# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_privatedns'

module Azure::PrivateDns::Profiles::Latest
  module Mgmt
    PrivateZones = Azure::PrivateDns::Mgmt::V2018_09_01::PrivateZones
    VirtualNetworkLinks = Azure::PrivateDns::Mgmt::V2018_09_01::VirtualNetworkLinks
    RecordSets = Azure::PrivateDns::Mgmt::V2018_09_01::RecordSets

    module Models
      PtrRecord = Azure::PrivateDns::Mgmt::V2018_09_01::Models::PtrRecord
      SoaRecord = Azure::PrivateDns::Mgmt::V2018_09_01::Models::SoaRecord
      PrivateZoneListResult = Azure::PrivateDns::Mgmt::V2018_09_01::Models::PrivateZoneListResult
      SrvRecord = Azure::PrivateDns::Mgmt::V2018_09_01::Models::SrvRecord
      SubResource = Azure::PrivateDns::Mgmt::V2018_09_01::Models::SubResource
      VirtualNetworkLinkListResult = Azure::PrivateDns::Mgmt::V2018_09_01::Models::VirtualNetworkLinkListResult
      AaaaRecord = Azure::PrivateDns::Mgmt::V2018_09_01::Models::AaaaRecord
      TxtRecord = Azure::PrivateDns::Mgmt::V2018_09_01::Models::TxtRecord
      MxRecord = Azure::PrivateDns::Mgmt::V2018_09_01::Models::MxRecord
      ARecord = Azure::PrivateDns::Mgmt::V2018_09_01::Models::ARecord
      RecordSetListResult = Azure::PrivateDns::Mgmt::V2018_09_01::Models::RecordSetListResult
      CnameRecord = Azure::PrivateDns::Mgmt::V2018_09_01::Models::CnameRecord
      Resource = Azure::PrivateDns::Mgmt::V2018_09_01::Models::Resource
      TrackedResource = Azure::PrivateDns::Mgmt::V2018_09_01::Models::TrackedResource
      PrivateZone = Azure::PrivateDns::Mgmt::V2018_09_01::Models::PrivateZone
      VirtualNetworkLink = Azure::PrivateDns::Mgmt::V2018_09_01::Models::VirtualNetworkLink
      ProxyResource = Azure::PrivateDns::Mgmt::V2018_09_01::Models::ProxyResource
      RecordSet = Azure::PrivateDns::Mgmt::V2018_09_01::Models::RecordSet
      ProvisioningState = Azure::PrivateDns::Mgmt::V2018_09_01::Models::ProvisioningState
      VirtualNetworkLinkState = Azure::PrivateDns::Mgmt::V2018_09_01::Models::VirtualNetworkLinkState
      RecordType = Azure::PrivateDns::Mgmt::V2018_09_01::Models::RecordType
    end

    #
    # PrivateDnsManagementClass
    #
    class PrivateDnsManagementClass
      attr_reader :private_zones, :virtual_network_links, :record_sets, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_default_options
        else
          @options = options
        end

        reset!(options)

        @configurable = self
        @base_url = options[:base_url].nil? ? nil:options[:base_url]
        @options = options[:options].nil? ? nil:options[:options]

        @client_0 = Azure::PrivateDns::Mgmt::V2018_09_01::PrivateDnsManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @private_zones = @client_0.private_zones
        @virtual_network_links = @client_0.virtual_network_links
        @record_sets = @client_0.record_sets

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/PrivateDns/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
      end

    end

    class ModelClasses
      def ptr_record
        Azure::PrivateDns::Mgmt::V2018_09_01::Models::PtrRecord
      end
      def soa_record
        Azure::PrivateDns::Mgmt::V2018_09_01::Models::SoaRecord
      end
      def private_zone_list_result
        Azure::PrivateDns::Mgmt::V2018_09_01::Models::PrivateZoneListResult
      end
      def srv_record
        Azure::PrivateDns::Mgmt::V2018_09_01::Models::SrvRecord
      end
      def sub_resource
        Azure::PrivateDns::Mgmt::V2018_09_01::Models::SubResource
      end
      def virtual_network_link_list_result
        Azure::PrivateDns::Mgmt::V2018_09_01::Models::VirtualNetworkLinkListResult
      end
      def aaaa_record
        Azure::PrivateDns::Mgmt::V2018_09_01::Models::AaaaRecord
      end
      def txt_record
        Azure::PrivateDns::Mgmt::V2018_09_01::Models::TxtRecord
      end
      def mx_record
        Azure::PrivateDns::Mgmt::V2018_09_01::Models::MxRecord
      end
      def arecord
        Azure::PrivateDns::Mgmt::V2018_09_01::Models::ARecord
      end
      def record_set_list_result
        Azure::PrivateDns::Mgmt::V2018_09_01::Models::RecordSetListResult
      end
      def cname_record
        Azure::PrivateDns::Mgmt::V2018_09_01::Models::CnameRecord
      end
      def resource
        Azure::PrivateDns::Mgmt::V2018_09_01::Models::Resource
      end
      def tracked_resource
        Azure::PrivateDns::Mgmt::V2018_09_01::Models::TrackedResource
      end
      def private_zone
        Azure::PrivateDns::Mgmt::V2018_09_01::Models::PrivateZone
      end
      def virtual_network_link
        Azure::PrivateDns::Mgmt::V2018_09_01::Models::VirtualNetworkLink
      end
      def proxy_resource
        Azure::PrivateDns::Mgmt::V2018_09_01::Models::ProxyResource
      end
      def record_set
        Azure::PrivateDns::Mgmt::V2018_09_01::Models::RecordSet
      end
      def provisioning_state
        Azure::PrivateDns::Mgmt::V2018_09_01::Models::ProvisioningState
      end
      def virtual_network_link_state
        Azure::PrivateDns::Mgmt::V2018_09_01::Models::VirtualNetworkLinkState
      end
      def record_type
        Azure::PrivateDns::Mgmt::V2018_09_01::Models::RecordType
      end
    end
  end
end
