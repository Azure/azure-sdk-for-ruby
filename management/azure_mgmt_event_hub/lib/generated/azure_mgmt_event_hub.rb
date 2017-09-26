# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
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
require 'generated/azure_mgmt_event_hub/module_definition'
require 'ms_rest_azure'

module Azure::ARM::EventHub
  autoload :Operations,                                         'generated/azure_mgmt_event_hub/operations.rb'
  autoload :Namespaces,                                         'generated/azure_mgmt_event_hub/namespaces.rb'
  autoload :DisasterRecoveryConfigs,                            'generated/azure_mgmt_event_hub/disaster_recovery_configs.rb'
  autoload :EventHubs,                                          'generated/azure_mgmt_event_hub/event_hubs.rb'
  autoload :ConsumerGroups,                                     'generated/azure_mgmt_event_hub/consumer_groups.rb'
  autoload :EventHubManagementClient,                           'generated/azure_mgmt_event_hub/event_hub_management_client.rb'

  module Models
    autoload :CaptureDescription,                                 'generated/azure_mgmt_event_hub/models/capture_description.rb'
    autoload :Destination,                                        'generated/azure_mgmt_event_hub/models/destination.rb'
    autoload :Operation,                                          'generated/azure_mgmt_event_hub/models/operation.rb'
    autoload :ErrorResponse,                                      'generated/azure_mgmt_event_hub/models/error_response.rb'
    autoload :OperationListResult,                                'generated/azure_mgmt_event_hub/models/operation_list_result.rb'
    autoload :EventHubListResult,                                 'generated/azure_mgmt_event_hub/models/event_hub_list_result.rb'
    autoload :AccessKeys,                                         'generated/azure_mgmt_event_hub/models/access_keys.rb'
    autoload :ArmDisasterRecoveryListResult,                      'generated/azure_mgmt_event_hub/models/arm_disaster_recovery_list_result.rb'
    autoload :Sku,                                                'generated/azure_mgmt_event_hub/models/sku.rb'
    autoload :ConsumerGroupListResult,                            'generated/azure_mgmt_event_hub/models/consumer_group_list_result.rb'
    autoload :AuthorizationRuleListResult,                        'generated/azure_mgmt_event_hub/models/authorization_rule_list_result.rb'
    autoload :CheckNameAvailabilityParameter,                     'generated/azure_mgmt_event_hub/models/check_name_availability_parameter.rb'
    autoload :EHNamespaceListResult,                              'generated/azure_mgmt_event_hub/models/ehnamespace_list_result.rb'
    autoload :CheckNameAvailabilityResult,                        'generated/azure_mgmt_event_hub/models/check_name_availability_result.rb'
    autoload :RegenerateAccessKeyParameters,                      'generated/azure_mgmt_event_hub/models/regenerate_access_key_parameters.rb'
    autoload :OperationDisplay,                                   'generated/azure_mgmt_event_hub/models/operation_display.rb'
    autoload :TrackedResource,                                    'generated/azure_mgmt_event_hub/models/tracked_resource.rb'
    autoload :EHNamespace,                                        'generated/azure_mgmt_event_hub/models/ehnamespace.rb'
    autoload :AuthorizationRule,                                  'generated/azure_mgmt_event_hub/models/authorization_rule.rb'
    autoload :Eventhub,                                           'generated/azure_mgmt_event_hub/models/eventhub.rb'
    autoload :ConsumerGroup,                                      'generated/azure_mgmt_event_hub/models/consumer_group.rb'
    autoload :ArmDisasterRecovery,                                'generated/azure_mgmt_event_hub/models/arm_disaster_recovery.rb'
    autoload :SkuName,                                            'generated/azure_mgmt_event_hub/models/sku_name.rb'
    autoload :SkuTier,                                            'generated/azure_mgmt_event_hub/models/sku_tier.rb'
    autoload :AccessRights,                                       'generated/azure_mgmt_event_hub/models/access_rights.rb'
    autoload :KeyType,                                            'generated/azure_mgmt_event_hub/models/key_type.rb'
    autoload :EntityStatus,                                       'generated/azure_mgmt_event_hub/models/entity_status.rb'
    autoload :EncodingCaptureDescription,                         'generated/azure_mgmt_event_hub/models/encoding_capture_description.rb'
    autoload :UnavailableReason,                                  'generated/azure_mgmt_event_hub/models/unavailable_reason.rb'
    autoload :ProvisioningStateDR,                                'generated/azure_mgmt_event_hub/models/provisioning_state_dr.rb'
    autoload :RoleDisasterRecovery,                               'generated/azure_mgmt_event_hub/models/role_disaster_recovery.rb'
  end
end
