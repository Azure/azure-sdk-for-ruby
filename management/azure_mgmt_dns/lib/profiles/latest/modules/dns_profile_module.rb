# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_dns'

module Azure::Dns::Profiles::Latest
  module Mgmt
    RecordSets = Azure::Dns::Mgmt::V2017_09_01::RecordSets
    Zones = Azure::Dns::Mgmt::V2017_09_01::Zones

    module Models
      CaaRecord = Azure::Dns::Mgmt::V2017_09_01::Models::CaaRecord
      ARecord = Azure::Dns::Mgmt::V2017_09_01::Models::ARecord
      RecordSet = Azure::Dns::Mgmt::V2017_09_01::Models::RecordSet
      MxRecord = Azure::Dns::Mgmt::V2017_09_01::Models::MxRecord
      RecordSetUpdateParameters = Azure::Dns::Mgmt::V2017_09_01::Models::RecordSetUpdateParameters
      PtrRecord = Azure::Dns::Mgmt::V2017_09_01::Models::PtrRecord
      RecordSetListResult = Azure::Dns::Mgmt::V2017_09_01::Models::RecordSetListResult
      TxtRecord = Azure::Dns::Mgmt::V2017_09_01::Models::TxtRecord
      CnameRecord = Azure::Dns::Mgmt::V2017_09_01::Models::CnameRecord
      AaaaRecord = Azure::Dns::Mgmt::V2017_09_01::Models::AaaaRecord
      ZoneListResult = Azure::Dns::Mgmt::V2017_09_01::Models::ZoneListResult
      SrvRecord = Azure::Dns::Mgmt::V2017_09_01::Models::SrvRecord
      Resource = Azure::Dns::Mgmt::V2017_09_01::Models::Resource
      NsRecord = Azure::Dns::Mgmt::V2017_09_01::Models::NsRecord
      SoaRecord = Azure::Dns::Mgmt::V2017_09_01::Models::SoaRecord
      Zone = Azure::Dns::Mgmt::V2017_09_01::Models::Zone
      RecordType = Azure::Dns::Mgmt::V2017_09_01::Models::RecordType
    end

    #
    # DnsManagementClass
    #
    class DnsManagementClass
      attr_reader :record_sets, :zones, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::Dns::Mgmt::V2017_09_01::DnsManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @record_sets = @client_0.record_sets
        @zones = @client_0.zones

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Dns/Mgmt'
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
      def caa_record
        Azure::Dns::Mgmt::V2017_09_01::Models::CaaRecord
      end
      def arecord
        Azure::Dns::Mgmt::V2017_09_01::Models::ARecord
      end
      def record_set
        Azure::Dns::Mgmt::V2017_09_01::Models::RecordSet
      end
      def mx_record
        Azure::Dns::Mgmt::V2017_09_01::Models::MxRecord
      end
      def record_set_update_parameters
        Azure::Dns::Mgmt::V2017_09_01::Models::RecordSetUpdateParameters
      end
      def ptr_record
        Azure::Dns::Mgmt::V2017_09_01::Models::PtrRecord
      end
      def record_set_list_result
        Azure::Dns::Mgmt::V2017_09_01::Models::RecordSetListResult
      end
      def txt_record
        Azure::Dns::Mgmt::V2017_09_01::Models::TxtRecord
      end
      def cname_record
        Azure::Dns::Mgmt::V2017_09_01::Models::CnameRecord
      end
      def aaaa_record
        Azure::Dns::Mgmt::V2017_09_01::Models::AaaaRecord
      end
      def zone_list_result
        Azure::Dns::Mgmt::V2017_09_01::Models::ZoneListResult
      end
      def srv_record
        Azure::Dns::Mgmt::V2017_09_01::Models::SrvRecord
      end
      def resource
        Azure::Dns::Mgmt::V2017_09_01::Models::Resource
      end
      def ns_record
        Azure::Dns::Mgmt::V2017_09_01::Models::NsRecord
      end
      def soa_record
        Azure::Dns::Mgmt::V2017_09_01::Models::SoaRecord
      end
      def zone
        Azure::Dns::Mgmt::V2017_09_01::Models::Zone
      end
      def record_type
        Azure::Dns::Mgmt::V2017_09_01::Models::RecordType
      end
    end
  end
end
