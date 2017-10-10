# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_dns'

module Azure::Dns::Management::Profile_2016_04_01
    RecordSets = Azure::ARM::Dns::Api_2016_04_01::RecordSets
    Zones = Azure::ARM::Dns::Api_2016_04_01::Zones

    module Models
      RecordSet = Azure::ARM::Dns::Api_2016_04_01::Models::RecordSet
      ARecord = Azure::ARM::Dns::Api_2016_04_01::Models::ARecord
      RecordSetUpdateParameters = Azure::ARM::Dns::Api_2016_04_01::Models::RecordSetUpdateParameters
      MxRecord = Azure::ARM::Dns::Api_2016_04_01::Models::MxRecord
      RecordSetListResult = Azure::ARM::Dns::Api_2016_04_01::Models::RecordSetListResult
      PtrRecord = Azure::ARM::Dns::Api_2016_04_01::Models::PtrRecord
      SrvRecord = Azure::ARM::Dns::Api_2016_04_01::Models::SrvRecord
      CnameRecord = Azure::ARM::Dns::Api_2016_04_01::Models::CnameRecord
      ZoneDeleteResult = Azure::ARM::Dns::Api_2016_04_01::Models::ZoneDeleteResult
      AaaaRecord = Azure::ARM::Dns::Api_2016_04_01::Models::AaaaRecord
      ZoneListResult = Azure::ARM::Dns::Api_2016_04_01::Models::ZoneListResult
      TxtRecord = Azure::ARM::Dns::Api_2016_04_01::Models::TxtRecord
      NsRecord = Azure::ARM::Dns::Api_2016_04_01::Models::NsRecord
      SoaRecord = Azure::ARM::Dns::Api_2016_04_01::Models::SoaRecord
      Zone = Azure::ARM::Dns::Api_2016_04_01::Models::Zone
      OperationStatus = Azure::ARM::Dns::Api_2016_04_01::Models::OperationStatus
      HttpStatusCode = Azure::ARM::Dns::Api_2016_04_01::Models::HttpStatusCode
      RecordType = Azure::ARM::Dns::Api_2016_04_01::Models::RecordType
    end

    #
    # Dns
    #
    class DnsClass
      attr_reader :record_sets, :zones, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Dns::Api_2016_04_01::DnsManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        @record_sets = client.record_sets
        @zones = client.zones
        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client
        client = Azure::ARM::Dns::Api_2016_04_01::DnsManagementClient.new(@configurable.credentials, @base_url, @options)
        client.subscription_id = configurable.subscription_id
        return client
      end

      class ModelClasses
        def record_set
          Azure::ARM::Dns::Api_2016_04_01::Models::RecordSet
        end
        def arecord
          Azure::ARM::Dns::Api_2016_04_01::Models::ARecord
        end
        def record_set_update_parameters
          Azure::ARM::Dns::Api_2016_04_01::Models::RecordSetUpdateParameters
        end
        def mx_record
          Azure::ARM::Dns::Api_2016_04_01::Models::MxRecord
        end
        def record_set_list_result
          Azure::ARM::Dns::Api_2016_04_01::Models::RecordSetListResult
        end
        def ptr_record
          Azure::ARM::Dns::Api_2016_04_01::Models::PtrRecord
        end
        def srv_record
          Azure::ARM::Dns::Api_2016_04_01::Models::SrvRecord
        end
        def cname_record
          Azure::ARM::Dns::Api_2016_04_01::Models::CnameRecord
        end
        def zone_delete_result
          Azure::ARM::Dns::Api_2016_04_01::Models::ZoneDeleteResult
        end
        def aaaa_record
          Azure::ARM::Dns::Api_2016_04_01::Models::AaaaRecord
        end
        def zone_list_result
          Azure::ARM::Dns::Api_2016_04_01::Models::ZoneListResult
        end
        def txt_record
          Azure::ARM::Dns::Api_2016_04_01::Models::TxtRecord
        end
        def ns_record
          Azure::ARM::Dns::Api_2016_04_01::Models::NsRecord
        end
        def soa_record
          Azure::ARM::Dns::Api_2016_04_01::Models::SoaRecord
        end
        def zone
          Azure::ARM::Dns::Api_2016_04_01::Models::Zone
        end
        def operation_status
          Azure::ARM::Dns::Api_2016_04_01::Models::OperationStatus
        end
        def http_status_code
          Azure::ARM::Dns::Api_2016_04_01::Models::HttpStatusCode
        end
        def record_type
          Azure::ARM::Dns::Api_2016_04_01::Models::RecordType
        end
      end
    end
end
