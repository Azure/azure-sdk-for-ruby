# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_dns'

module Azure::Profiles::Latest
  module Dns
    module Mgmt
      RecordSets = Azure::Dns::Mgmt::V2018_03_01_preview::RecordSets
      Zones = Azure::Dns::Mgmt::V2018_03_01_preview::Zones

      module Models
        RecordSetUpdateParameters = Azure::Dns::Mgmt::V2018_03_01_preview::Models::RecordSetUpdateParameters
        RecordSetListResult = Azure::Dns::Mgmt::V2018_03_01_preview::Models::RecordSetListResult
        AaaaRecord = Azure::Dns::Mgmt::V2018_03_01_preview::Models::AaaaRecord
        ARecord = Azure::Dns::Mgmt::V2018_03_01_preview::Models::ARecord
        MxRecord = Azure::Dns::Mgmt::V2018_03_01_preview::Models::MxRecord
        PtrRecord = Azure::Dns::Mgmt::V2018_03_01_preview::Models::PtrRecord
        SrvRecord = Azure::Dns::Mgmt::V2018_03_01_preview::Models::SrvRecord
        CnameRecord = Azure::Dns::Mgmt::V2018_03_01_preview::Models::CnameRecord
        RecordSet = Azure::Dns::Mgmt::V2018_03_01_preview::Models::RecordSet
        ZoneListResult = Azure::Dns::Mgmt::V2018_03_01_preview::Models::ZoneListResult
        TxtRecord = Azure::Dns::Mgmt::V2018_03_01_preview::Models::TxtRecord
        NsRecord = Azure::Dns::Mgmt::V2018_03_01_preview::Models::NsRecord
        SoaRecord = Azure::Dns::Mgmt::V2018_03_01_preview::Models::SoaRecord
        TrackedResource = Azure::Dns::Mgmt::V2018_03_01_preview::Models::TrackedResource
        Zone = Azure::Dns::Mgmt::V2018_03_01_preview::Models::Zone
        ProxyResource = Azure::Dns::Mgmt::V2018_03_01_preview::Models::ProxyResource
        AzureEntityResource = Azure::Dns::Mgmt::V2018_03_01_preview::Models::AzureEntityResource
        RecordType = Azure::Dns::Mgmt::V2018_03_01_preview::Models::RecordType
        Resource = Azure::Dns::Mgmt::V2018_03_01_preview::Models::Resource
        SubResource = Azure::Dns::Mgmt::V2018_03_01_preview::Models::SubResource
        ZoneUpdate = Azure::Dns::Mgmt::V2018_03_01_preview::Models::ZoneUpdate
        CaaRecord = Azure::Dns::Mgmt::V2018_03_01_preview::Models::CaaRecord
        ZoneType = Azure::Dns::Mgmt::V2018_03_01_preview::Models::ZoneType
      end

      class DnsManagementClass
        attr_reader :record_sets, :zones, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Dns::Mgmt::V2018_03_01_preview::DnsManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @record_sets = @client_0.record_sets
          @zones = @client_0.zones

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Dns/Mgmt"
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
          def record_set_update_parameters
            Azure::Dns::Mgmt::V2018_03_01_preview::Models::RecordSetUpdateParameters
          end
          def record_set_list_result
            Azure::Dns::Mgmt::V2018_03_01_preview::Models::RecordSetListResult
          end
          def aaaa_record
            Azure::Dns::Mgmt::V2018_03_01_preview::Models::AaaaRecord
          end
          def arecord
            Azure::Dns::Mgmt::V2018_03_01_preview::Models::ARecord
          end
          def mx_record
            Azure::Dns::Mgmt::V2018_03_01_preview::Models::MxRecord
          end
          def ptr_record
            Azure::Dns::Mgmt::V2018_03_01_preview::Models::PtrRecord
          end
          def srv_record
            Azure::Dns::Mgmt::V2018_03_01_preview::Models::SrvRecord
          end
          def cname_record
            Azure::Dns::Mgmt::V2018_03_01_preview::Models::CnameRecord
          end
          def record_set
            Azure::Dns::Mgmt::V2018_03_01_preview::Models::RecordSet
          end
          def zone_list_result
            Azure::Dns::Mgmt::V2018_03_01_preview::Models::ZoneListResult
          end
          def txt_record
            Azure::Dns::Mgmt::V2018_03_01_preview::Models::TxtRecord
          end
          def ns_record
            Azure::Dns::Mgmt::V2018_03_01_preview::Models::NsRecord
          end
          def soa_record
            Azure::Dns::Mgmt::V2018_03_01_preview::Models::SoaRecord
          end
          def tracked_resource
            Azure::Dns::Mgmt::V2018_03_01_preview::Models::TrackedResource
          end
          def zone
            Azure::Dns::Mgmt::V2018_03_01_preview::Models::Zone
          end
          def proxy_resource
            Azure::Dns::Mgmt::V2018_03_01_preview::Models::ProxyResource
          end
          def azure_entity_resource
            Azure::Dns::Mgmt::V2018_03_01_preview::Models::AzureEntityResource
          end
          def record_type
            Azure::Dns::Mgmt::V2018_03_01_preview::Models::RecordType
          end
          def resource
            Azure::Dns::Mgmt::V2018_03_01_preview::Models::Resource
          end
          def sub_resource
            Azure::Dns::Mgmt::V2018_03_01_preview::Models::SubResource
          end
          def zone_update
            Azure::Dns::Mgmt::V2018_03_01_preview::Models::ZoneUpdate
          end
          def caa_record
            Azure::Dns::Mgmt::V2018_03_01_preview::Models::CaaRecord
          end
          def zone_type
            Azure::Dns::Mgmt::V2018_03_01_preview::Models::ZoneType
          end
        end
      end
    end
  end
end
