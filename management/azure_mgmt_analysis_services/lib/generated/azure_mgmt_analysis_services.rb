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
require 'generated/azure_mgmt_analysis_services/module_definition'
require 'ms_rest_azure'

module Azure::ARM::AnalysisServices
  autoload :Servers,                                            'generated/azure_mgmt_analysis_services/servers.rb'
  autoload :Operations,                                         'generated/azure_mgmt_analysis_services/operations.rb'
  autoload :AnalysisServicesManagementClient,                   'generated/azure_mgmt_analysis_services/analysis_services_management_client.rb'

  module Models
    autoload :IPv4FirewallRule,                                   'generated/azure_mgmt_analysis_services/models/ipv4firewall_rule.rb'
    autoload :IPv4FirewallSettings,                               'generated/azure_mgmt_analysis_services/models/ipv4firewall_settings.rb'
    autoload :Operation,                                          'generated/azure_mgmt_analysis_services/models/operation.rb'
    autoload :AnalysisServicesServerUpdateParameters,             'generated/azure_mgmt_analysis_services/models/analysis_services_server_update_parameters.rb'
    autoload :ResourceSku,                                        'generated/azure_mgmt_analysis_services/models/resource_sku.rb'
    autoload :GatewayListStatusLive,                              'generated/azure_mgmt_analysis_services/models/gateway_list_status_live.rb'
    autoload :AnalysisServicesServers,                            'generated/azure_mgmt_analysis_services/models/analysis_services_servers.rb'
    autoload :GatewayError,                                       'generated/azure_mgmt_analysis_services/models/gateway_error.rb'
    autoload :GatewayDetails,                                     'generated/azure_mgmt_analysis_services/models/gateway_details.rb'
    autoload :GatewayListStatusError,                             'generated/azure_mgmt_analysis_services/models/gateway_list_status_error.rb'
    autoload :OperationListResult,                                'generated/azure_mgmt_analysis_services/models/operation_list_result.rb'
    autoload :SkuEnumerationForNewResourceResult,                 'generated/azure_mgmt_analysis_services/models/sku_enumeration_for_new_resource_result.rb'
    autoload :ServerAdministrators,                               'generated/azure_mgmt_analysis_services/models/server_administrators.rb'
    autoload :SkuDetailsForExistingResource,                      'generated/azure_mgmt_analysis_services/models/sku_details_for_existing_resource.rb'
    autoload :Resource,                                           'generated/azure_mgmt_analysis_services/models/resource.rb'
    autoload :SkuEnumerationForExistingResourceResult,            'generated/azure_mgmt_analysis_services/models/sku_enumeration_for_existing_resource_result.rb'
    autoload :OperationDisplay,                                   'generated/azure_mgmt_analysis_services/models/operation_display.rb'
    autoload :ErrorResponse,                                      'generated/azure_mgmt_analysis_services/models/error_response.rb'
    autoload :AnalysisServicesServer,                             'generated/azure_mgmt_analysis_services/models/analysis_services_server.rb'
    autoload :SkuTier,                                            'generated/azure_mgmt_analysis_services/models/sku_tier.rb'
    autoload :State,                                              'generated/azure_mgmt_analysis_services/models/state.rb'
    autoload :ProvisioningState,                                  'generated/azure_mgmt_analysis_services/models/provisioning_state.rb'
    autoload :ConnectionMode,                                     'generated/azure_mgmt_analysis_services/models/connection_mode.rb'
    autoload :Status,                                             'generated/azure_mgmt_analysis_services/models/status.rb'
  end
end
