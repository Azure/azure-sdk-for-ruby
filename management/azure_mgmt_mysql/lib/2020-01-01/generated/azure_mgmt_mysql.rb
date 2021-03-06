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
require '2020-01-01/generated/azure_mgmt_mysql/module_definition'
require 'ms_rest_azure'

module Azure::Mysql::Mgmt::V2020_01_01
  autoload :ServerKeys,                                         '2020-01-01/generated/azure_mgmt_mysql/server_keys.rb'
  autoload :Servers,                                            '2020-01-01/generated/azure_mgmt_mysql/servers.rb'
  autoload :MySQLManagementClient,                              '2020-01-01/generated/azure_mgmt_mysql/my_sqlmanagement_client.rb'

  module Models
    autoload :ErrorResponse,                                      '2020-01-01/generated/azure_mgmt_mysql/models/error_response.rb'
    autoload :ServerKeyListResult,                                '2020-01-01/generated/azure_mgmt_mysql/models/server_key_list_result.rb'
    autoload :Resource,                                           '2020-01-01/generated/azure_mgmt_mysql/models/resource.rb'
    autoload :ErrorAdditionalInfo,                                '2020-01-01/generated/azure_mgmt_mysql/models/error_additional_info.rb'
    autoload :ServerUpgradeParameters,                            '2020-01-01/generated/azure_mgmt_mysql/models/server_upgrade_parameters.rb'
    autoload :ServerKey,                                          '2020-01-01/generated/azure_mgmt_mysql/models/server_key.rb'
    autoload :TrackedResource,                                    '2020-01-01/generated/azure_mgmt_mysql/models/tracked_resource.rb'
    autoload :AzureEntityResource,                                '2020-01-01/generated/azure_mgmt_mysql/models/azure_entity_resource.rb'
    autoload :ProxyResource,                                      '2020-01-01/generated/azure_mgmt_mysql/models/proxy_resource.rb'
  end
end
