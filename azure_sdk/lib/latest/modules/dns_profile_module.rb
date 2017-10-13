# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_dns'

module Azure::Profiles::Latest
  module Dns::Mgmt
    RecordSets = Azure::Dns::Mgmt::V2016_04_01::RecordSets
    Zones = Azure::Dns::Mgmt::V2016_04_01::Zones

    module Models
      RecordSet = Azure::Dns::Mgmt::V2016_04_01::Models::RecordSet
      ARecord = Azure::Dns::Mgmt::V2016_04_01::Models::ARecord
      RecordSetUpdateParameters = Azure::Dns::Mgmt::V2016_04_01::Models::RecordSetUpdateParameters
      MxRecord = Azure::Dns::Mgmt::V2016_04_01::Models::MxRecord
      RecordSetListResult = Azure::Dns::Mgmt::V2016_04_01::Models::RecordSetListResult
      PtrRecord = Azure::Dns::Mgmt::V2016_04_01::Models::PtrRecord
      SrvRecord = Azure::Dns::Mgmt::V2016_04_01::Models::SrvRecord
      CnameRecord = Azure::Dns::Mgmt::V2016_04_01::Models::CnameRecord
      ZoneDeleteResult = Azure::Dns::Mgmt::V2016_04_01::Models::ZoneDeleteResult
      AaaaRecord = Azure::Dns::Mgmt::V2016_04_01::Models::AaaaRecord
      ZoneListResult = Azure::Dns::Mgmt::V2016_04_01::Models::ZoneListResult
      TxtRecord = Azure::Dns::Mgmt::V2016_04_01::Models::TxtRecord
      Resource = Azure::Dns::Mgmt::V2016_04_01::Models::Resource
      NsRecord = Azure::Dns::Mgmt::V2016_04_01::Models::NsRecord
      SoaRecord = Azure::Dns::Mgmt::V2016_04_01::Models::SoaRecord
      Zone = Azure::Dns::Mgmt::V2016_04_01::Models::Zone
      OperationStatus = Azure::Dns::Mgmt::V2016_04_01::Models::OperationStatus
      HttpStatusCode = Azure::Dns::Mgmt::V2016_04_01::Models::HttpStatusCode
      RecordType = Azure::Dns::Mgmt::V2016_04_01::Models::RecordType
    end

    #
    # Dns
    #
    class DnsClass
      attr_reader :record_sets, :zones, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        client_0 = Azure::Dns::Mgmt::V2016_04_01::DnsManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @record_sets = client_0.record_sets
        @zones = client_0.zones

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '2016-04-01')
        case version
          when '2016-04-01'
            client = Azure::Dns::Mgmt::V2016_04_01::DnsManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def record_set
          Azure::Dns::Mgmt::V2016_04_01::Models::RecordSet
        end
        def arecord
          Azure::Dns::Mgmt::V2016_04_01::Models::ARecord
        end
        def record_set_update_parameters
          Azure::Dns::Mgmt::V2016_04_01::Models::RecordSetUpdateParameters
        end
        def mx_record
          Azure::Dns::Mgmt::V2016_04_01::Models::MxRecord
        end
        def record_set_list_result
          Azure::Dns::Mgmt::V2016_04_01::Models::RecordSetListResult
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
        def aaaa_record
          Azure::Dns::Mgmt::V2016_04_01::Models::AaaaRecord
        end
        def zone_list_result
          Azure::Dns::Mgmt::V2016_04_01::Models::ZoneListResult
        end
        def txt_record
          Azure::Dns::Mgmt::V2016_04_01::Models::TxtRecord
        end
        def resource
          Azure::Dns::Mgmt::V2016_04_01::Models::Resource
        end
        def ns_record
          Azure::Dns::Mgmt::V2016_04_01::Models::NsRecord
        end
        def soa_record
          Azure::Dns::Mgmt::V2016_04_01::Models::SoaRecord
        end
        def zone
          Azure::Dns::Mgmt::V2016_04_01::Models::Zone
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
      end
    end
  end
end
