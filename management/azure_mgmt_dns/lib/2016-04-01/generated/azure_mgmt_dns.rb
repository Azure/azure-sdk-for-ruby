# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2016-04-01/generated/azure_mgmt_dns/module_definition'
require 'ms_rest_azure'

module Azure::Dns::Mgmt::V2016_04_01
  autoload :RecordSets,                                         '2016-04-01/generated/azure_mgmt_dns/record_sets.rb'
  autoload :Zones,                                              '2016-04-01/generated/azure_mgmt_dns/zones.rb'
  autoload :DnsManagementClient,                                '2016-04-01/generated/azure_mgmt_dns/dns_management_client.rb'

  module Models
    autoload :RecordSetUpdateParameters,                          '2016-04-01/generated/azure_mgmt_dns/models/record_set_update_parameters.rb'
    autoload :RecordSetListResult,                                '2016-04-01/generated/azure_mgmt_dns/models/record_set_list_result.rb'
    autoload :AaaaRecord,                                         '2016-04-01/generated/azure_mgmt_dns/models/aaaa_record.rb'
    autoload :ARecord,                                            '2016-04-01/generated/azure_mgmt_dns/models/arecord.rb'
    autoload :MxRecord,                                           '2016-04-01/generated/azure_mgmt_dns/models/mx_record.rb'
    autoload :PtrRecord,                                          '2016-04-01/generated/azure_mgmt_dns/models/ptr_record.rb'
    autoload :SrvRecord,                                          '2016-04-01/generated/azure_mgmt_dns/models/srv_record.rb'
    autoload :Resource,                                           '2016-04-01/generated/azure_mgmt_dns/models/resource.rb'
    autoload :CnameRecord,                                        '2016-04-01/generated/azure_mgmt_dns/models/cname_record.rb'
    autoload :ZoneDeleteResult,                                   '2016-04-01/generated/azure_mgmt_dns/models/zone_delete_result.rb'
    autoload :RecordSet,                                          '2016-04-01/generated/azure_mgmt_dns/models/record_set.rb'
    autoload :ZoneListResult,                                     '2016-04-01/generated/azure_mgmt_dns/models/zone_list_result.rb'
    autoload :TxtRecord,                                          '2016-04-01/generated/azure_mgmt_dns/models/txt_record.rb'
    autoload :NsRecord,                                           '2016-04-01/generated/azure_mgmt_dns/models/ns_record.rb'
    autoload :SoaRecord,                                          '2016-04-01/generated/azure_mgmt_dns/models/soa_record.rb'
    autoload :TrackedResource,                                    '2016-04-01/generated/azure_mgmt_dns/models/tracked_resource.rb'
    autoload :Zone,                                               '2016-04-01/generated/azure_mgmt_dns/models/zone.rb'
    autoload :ProxyResource,                                      '2016-04-01/generated/azure_mgmt_dns/models/proxy_resource.rb'
    autoload :AzureEntityResource,                                '2016-04-01/generated/azure_mgmt_dns/models/azure_entity_resource.rb'
    autoload :OperationStatus,                                    '2016-04-01/generated/azure_mgmt_dns/models/operation_status.rb'
    autoload :HttpStatusCode,                                     '2016-04-01/generated/azure_mgmt_dns/models/http_status_code.rb'
    autoload :RecordType,                                         '2016-04-01/generated/azure_mgmt_dns/models/record_type.rb'
  end
end
