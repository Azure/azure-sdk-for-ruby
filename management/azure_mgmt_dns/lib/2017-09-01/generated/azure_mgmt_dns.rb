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
require '2017-09-01/generated/azure_mgmt_dns/module_definition'
require 'ms_rest_azure'

module Azure::Dns::Mgmt::V2017_09_01
  autoload :RecordSets,                                         '2017-09-01/generated/azure_mgmt_dns/record_sets.rb'
  autoload :Zones,                                              '2017-09-01/generated/azure_mgmt_dns/zones.rb'
  autoload :DnsManagementClient,                                '2017-09-01/generated/azure_mgmt_dns/dns_management_client.rb'

  module Models
    autoload :RecordSet,                                          '2017-09-01/generated/azure_mgmt_dns/models/record_set.rb'
    autoload :RecordSetUpdateParameters,                          '2017-09-01/generated/azure_mgmt_dns/models/record_set_update_parameters.rb'
    autoload :AaaaRecord,                                         '2017-09-01/generated/azure_mgmt_dns/models/aaaa_record.rb'
    autoload :RecordSetListResult,                                '2017-09-01/generated/azure_mgmt_dns/models/record_set_list_result.rb'
    autoload :NsRecord,                                           '2017-09-01/generated/azure_mgmt_dns/models/ns_record.rb'
    autoload :MxRecord,                                           '2017-09-01/generated/azure_mgmt_dns/models/mx_record.rb'
    autoload :PtrRecord,                                          '2017-09-01/generated/azure_mgmt_dns/models/ptr_record.rb'
    autoload :TxtRecord,                                          '2017-09-01/generated/azure_mgmt_dns/models/txt_record.rb'
    autoload :CnameRecord,                                        '2017-09-01/generated/azure_mgmt_dns/models/cname_record.rb'
    autoload :Resource,                                           '2017-09-01/generated/azure_mgmt_dns/models/resource.rb'
    autoload :CaaRecord,                                          '2017-09-01/generated/azure_mgmt_dns/models/caa_record.rb'
    autoload :ZoneListResult,                                     '2017-09-01/generated/azure_mgmt_dns/models/zone_list_result.rb'
    autoload :SrvRecord,                                          '2017-09-01/generated/azure_mgmt_dns/models/srv_record.rb'
    autoload :ARecord,                                            '2017-09-01/generated/azure_mgmt_dns/models/arecord.rb'
    autoload :SoaRecord,                                          '2017-09-01/generated/azure_mgmt_dns/models/soa_record.rb'
    autoload :TrackedResource,                                    '2017-09-01/generated/azure_mgmt_dns/models/tracked_resource.rb'
    autoload :Zone,                                               '2017-09-01/generated/azure_mgmt_dns/models/zone.rb'
    autoload :ProxyResource,                                      '2017-09-01/generated/azure_mgmt_dns/models/proxy_resource.rb'
    autoload :AzureEntityResource,                                '2017-09-01/generated/azure_mgmt_dns/models/azure_entity_resource.rb'
    autoload :RecordType,                                         '2017-09-01/generated/azure_mgmt_dns/models/record_type.rb'
  end
end
