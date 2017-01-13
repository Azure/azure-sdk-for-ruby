# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
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
require 'generated/azure_mgmt_cognitive_services/module_definition'
require 'ms_rest_azure'

module Azure::ARM::CognitiveServices
  autoload :CognitiveServicesAccounts,                          'generated/azure_mgmt_cognitive_services/cognitive_services_accounts.rb'
  autoload :CognitiveServicesManagementClient,                  'generated/azure_mgmt_cognitive_services/cognitive_services_management_client.rb'

  module Models
    autoload :CognitiveServicesAccountKeys,                       'generated/azure_mgmt_cognitive_services/models/cognitive_services_account_keys.rb'
    autoload :RegenerateKeyParameters,                            'generated/azure_mgmt_cognitive_services/models/regenerate_key_parameters.rb'
    autoload :CognitiveServicesAccountCreateParameters,           'generated/azure_mgmt_cognitive_services/models/cognitive_services_account_create_parameters.rb'
    autoload :CognitiveServicesResourceAndSku,                    'generated/azure_mgmt_cognitive_services/models/cognitive_services_resource_and_sku.rb'
    autoload :CognitiveServicesAccount,                           'generated/azure_mgmt_cognitive_services/models/cognitive_services_account.rb'
    autoload :CognitiveServicesAccountEnumerateSkusResult,        'generated/azure_mgmt_cognitive_services/models/cognitive_services_account_enumerate_skus_result.rb'
    autoload :Sku,                                                'generated/azure_mgmt_cognitive_services/models/sku.rb'
    autoload :ErrorBody,                                          'generated/azure_mgmt_cognitive_services/models/error_body.rb'
    autoload :CognitiveServicesAccountListResult,                 'generated/azure_mgmt_cognitive_services/models/cognitive_services_account_list_result.rb'
    autoload :Error,                                              'generated/azure_mgmt_cognitive_services/models/error.rb'
    autoload :CognitiveServicesAccountUpdateParameters,           'generated/azure_mgmt_cognitive_services/models/cognitive_services_account_update_parameters.rb'
    autoload :SkuName,                                            'generated/azure_mgmt_cognitive_services/models/sku_name.rb'
    autoload :SkuTier,                                            'generated/azure_mgmt_cognitive_services/models/sku_tier.rb'
    autoload :Kind,                                               'generated/azure_mgmt_cognitive_services/models/kind.rb'
    autoload :ProvisioningState,                                  'generated/azure_mgmt_cognitive_services/models/provisioning_state.rb'
    autoload :KeyName,                                            'generated/azure_mgmt_cognitive_services/models/key_name.rb'
  end
end
