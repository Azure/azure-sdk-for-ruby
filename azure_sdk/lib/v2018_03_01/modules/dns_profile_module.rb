# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_dns'

module Azure::Profiles::V2018_03_01
  module Dns
    module Mgmt
      RecordSets = Azure::Dns::Mgmt::V2016_04_01::RecordSets
      Zones = Azure::Dns::Mgmt::V2016_04_01::Zones

      module Models
        RecordSetUpdateParameters = Azure::Dns::Mgmt::V2016_04_01::Models::RecordSetUpdateParameters
        RecordSetListResult = Azure::Dns::Mgmt::V2016_04_01::Models::RecordSetListResult
        AaaaRecord = Azure::Dns::Mgmt::V2016_04_01::Models::AaaaRecord
        ARecord = Azure::Dns::Mgmt::V2016_04_01::Models::ARecord
        MxRecord = Azure::Dns::Mgmt::V2016_04_01::Models::MxRecord
        PtrRecord = Azure::Dns::Mgmt::V2016_04_01::Models::PtrRecord
        SrvRecord = Azure::Dns::Mgmt::V2016_04_01::Models::SrvRecord
        CnameRecord = Azure::Dns::Mgmt::V2016_04_01::Models::CnameRecord
        ZoneDeleteResult = Azure::Dns::Mgmt::V2016_04_01::Models::ZoneDeleteResult
        RecordSet = Azure::Dns::Mgmt::V2016_04_01::Models::RecordSet
        ZoneListResult = Azure::Dns::Mgmt::V2016_04_01::Models::ZoneListResult
        TxtRecord = Azure::Dns::Mgmt::V2016_04_01::Models::TxtRecord
        NsRecord = Azure::Dns::Mgmt::V2016_04_01::Models::NsRecord
        SoaRecord = Azure::Dns::Mgmt::V2016_04_01::Models::SoaRecord
        TrackedResource = Azure::Dns::Mgmt::V2016_04_01::Models::TrackedResource
        Zone = Azure::Dns::Mgmt::V2016_04_01::Models::Zone
        ProxyResource = Azure::Dns::Mgmt::V2016_04_01::Models::ProxyResource
        AzureEntityResource = Azure::Dns::Mgmt::V2016_04_01::Models::AzureEntityResource
        OperationStatus = Azure::Dns::Mgmt::V2016_04_01::Models::OperationStatus
        HttpStatusCode = Azure::Dns::Mgmt::V2016_04_01::Models::HttpStatusCode
        RecordType = Azure::Dns::Mgmt::V2016_04_01::Models::RecordType
        Resource = Azure::Dns::Mgmt::V2016_04_01::Models::Resource
      end

      class DnsManagementClass
        attr_reader :record_sets, :zones, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Dns::Mgmt::V2016_04_01::DnsManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @record_sets = @client_0.record_sets
          @zones = @client_0.zones

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/V2018_03_01/Dns/Mgmt"
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
            Azure::Dns::Mgmt::V2016_04_01::Models::RecordSetUpdateParameters
          end
          def record_set_list_result
            Azure::Dns::Mgmt::V2016_04_01::Models::RecordSetListResult
          end
          def aaaa_record
            Azure::Dns::Mgmt::V2016_04_01::Models::AaaaRecord
          end
          def arecord
            Azure::Dns::Mgmt::V2016_04_01::Models::ARecord
          end
          def mx_record
            Azure::Dns::Mgmt::V2016_04_01::Models::MxRecord
          end
          def ptr_record
            Azure::Dns::Mgmt::V2016_04_01::Models::PtrRecord
          end
          def srv_record
            Azure::Dns::Mgmt::V2016_04_01::Models::SrvRecord
          end
          def cname_record
            Azure::Dns::Mgmt::V2016_04_01::Models::CnameRecord
          end
          def zone_delete_result
            Azure::Dns::Mgmt::V2016_04_01::Models::ZoneDeleteResult
          end
          def record_set
            Azure::Dns::Mgmt::V2016_04_01::Models::RecordSet
          end
          def zone_list_result
            Azure::Dns::Mgmt::V2016_04_01::Models::ZoneListResult
          end
          def txt_record
            Azure::Dns::Mgmt::V2016_04_01::Models::TxtRecord
          end
          def ns_record
            Azure::Dns::Mgmt::V2016_04_01::Models::NsRecord
          end
          def soa_record
            Azure::Dns::Mgmt::V2016_04_01::Models::SoaRecord
          end
          def tracked_resource
            Azure::Dns::Mgmt::V2016_04_01::Models::TrackedResource
          end
          def zone
            Azure::Dns::Mgmt::V2016_04_01::Models::Zone
          end
          def proxy_resource
            Azure::Dns::Mgmt::V2016_04_01::Models::ProxyResource
          end
          def azure_entity_resource
            Azure::Dns::Mgmt::V2016_04_01::Models::AzureEntityResource
          end
          def operation_status
            Azure::Dns::Mgmt::V2016_04_01::Models::OperationStatus
          end
          def http_status_code
            Azure::Dns::Mgmt::V2016_04_01::Models::HttpStatusCode
          end
          def record_type
            Azure::Dns::Mgmt::V2016_04_01::Models::RecordType
          end
          def resource
            Azure::Dns::Mgmt::V2016_04_01::Models::Resource
          end
        end
      end
    end
  end
end
