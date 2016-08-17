# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
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
require 'generated/azure_mgmt_service_bus/module_definition'
require 'ms_rest_azure'

module Azure::ARM::ServiceBus
  autoload :Namespaces,                                         'generated/azure_mgmt_service_bus/namespaces.rb'
  autoload :Queues,                                             'generated/azure_mgmt_service_bus/queues.rb'
  autoload :Topics,                                             'generated/azure_mgmt_service_bus/topics.rb'
  autoload :Subscriptions,                                      'generated/azure_mgmt_service_bus/subscriptions.rb'
  autoload :ServiceBusManagementClient,                         'generated/azure_mgmt_service_bus/service_bus_management_client.rb'

  module Models
    autoload :NamespaceCreateOrUpdateParameters,                  'generated/azure_mgmt_service_bus/models/namespace_create_or_update_parameters.rb'
    autoload :Sku,                                                'generated/azure_mgmt_service_bus/models/sku.rb'
    autoload :NamespaceListResult,                                'generated/azure_mgmt_service_bus/models/namespace_list_result.rb'
    autoload :SharedAccessAuthorizationRuleCreateOrUpdateParameters, 'generated/azure_mgmt_service_bus/models/shared_access_authorization_rule_create_or_update_parameters.rb'
    autoload :SharedAccessAuthorizationRuleListResult,            'generated/azure_mgmt_service_bus/models/shared_access_authorization_rule_list_result.rb'
    autoload :ResourceListKeys,                                   'generated/azure_mgmt_service_bus/models/resource_list_keys.rb'
    autoload :RegenerateKeysParameters,                           'generated/azure_mgmt_service_bus/models/regenerate_keys_parameters.rb'
    autoload :QueueCreateOrUpdateParameters,                      'generated/azure_mgmt_service_bus/models/queue_create_or_update_parameters.rb'
    autoload :MessageCountDetails,                                'generated/azure_mgmt_service_bus/models/message_count_details.rb'
    autoload :QueueListResult,                                    'generated/azure_mgmt_service_bus/models/queue_list_result.rb'
    autoload :TopicCreateOrUpdateParameters,                      'generated/azure_mgmt_service_bus/models/topic_create_or_update_parameters.rb'
    autoload :TopicListResult,                                    'generated/azure_mgmt_service_bus/models/topic_list_result.rb'
    autoload :SubscriptionCreateOrUpdateParameters,               'generated/azure_mgmt_service_bus/models/subscription_create_or_update_parameters.rb'
    autoload :SubscriptionListResult,                             'generated/azure_mgmt_service_bus/models/subscription_list_result.rb'
    autoload :NamespaceResource,                                  'generated/azure_mgmt_service_bus/models/namespace_resource.rb'
    autoload :SharedAccessAuthorizationRuleResource,              'generated/azure_mgmt_service_bus/models/shared_access_authorization_rule_resource.rb'
    autoload :QueueResource,                                      'generated/azure_mgmt_service_bus/models/queue_resource.rb'
    autoload :TopicResource,                                      'generated/azure_mgmt_service_bus/models/topic_resource.rb'
    autoload :SubscriptionResource,                               'generated/azure_mgmt_service_bus/models/subscription_resource.rb'
    autoload :SkuName,                                            'generated/azure_mgmt_service_bus/models/sku_name.rb'
    autoload :SkuTier,                                            'generated/azure_mgmt_service_bus/models/sku_tier.rb'
    autoload :NamespaceState,                                     'generated/azure_mgmt_service_bus/models/namespace_state.rb'
    autoload :AccessRights,                                       'generated/azure_mgmt_service_bus/models/access_rights.rb'
    autoload :Policykey,                                          'generated/azure_mgmt_service_bus/models/policykey.rb'
    autoload :EntityAvailabilityStatus,                           'generated/azure_mgmt_service_bus/models/entity_availability_status.rb'
    autoload :EntityStatus,                                       'generated/azure_mgmt_service_bus/models/entity_status.rb'
  end
end
