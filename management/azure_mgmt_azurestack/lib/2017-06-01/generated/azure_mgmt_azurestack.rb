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
require '2017-06-01/generated/azure_mgmt_azurestack/module_definition'
require 'ms_rest_azure'

module Azure::AzureStack::Mgmt::V2017_06_01
  autoload :Operations,                                         '2017-06-01/generated/azure_mgmt_azurestack/operations.rb'
  autoload :Products,                                           '2017-06-01/generated/azure_mgmt_azurestack/products.rb'
  autoload :Registrations,                                      '2017-06-01/generated/azure_mgmt_azurestack/registrations.rb'
  autoload :CustomerSubscriptions,                              '2017-06-01/generated/azure_mgmt_azurestack/customer_subscriptions.rb'
  autoload :AzureStackManagementClient,                         '2017-06-01/generated/azure_mgmt_azurestack/azure_stack_management_client.rb'

  module Models
    autoload :ProductLink,                                        '2017-06-01/generated/azure_mgmt_azurestack/models/product_link.rb'
    autoload :ProductProperties,                                  '2017-06-01/generated/azure_mgmt_azurestack/models/product_properties.rb'
    autoload :TrackedResource,                                    '2017-06-01/generated/azure_mgmt_azurestack/models/tracked_resource.rb'
    autoload :Compatibility,                                      '2017-06-01/generated/azure_mgmt_azurestack/models/compatibility.rb'
    autoload :Operation,                                          '2017-06-01/generated/azure_mgmt_azurestack/models/operation.rb'
    autoload :Display,                                            '2017-06-01/generated/azure_mgmt_azurestack/models/display.rb'
    autoload :OperationList,                                      '2017-06-01/generated/azure_mgmt_azurestack/models/operation_list.rb'
    autoload :ErrorResponse,                                      '2017-06-01/generated/azure_mgmt_azurestack/models/error_response.rb'
    autoload :DataDiskImage,                                      '2017-06-01/generated/azure_mgmt_azurestack/models/data_disk_image.rb'
    autoload :ProductList,                                        '2017-06-01/generated/azure_mgmt_azurestack/models/product_list.rb'
    autoload :VirtualMachineExtensionProductProperties,           '2017-06-01/generated/azure_mgmt_azurestack/models/virtual_machine_extension_product_properties.rb'
    autoload :DeviceConfiguration,                                '2017-06-01/generated/azure_mgmt_azurestack/models/device_configuration.rb'
    autoload :IconUris,                                           '2017-06-01/generated/azure_mgmt_azurestack/models/icon_uris.rb'
    autoload :MarketplaceProductLogUpdate,                        '2017-06-01/generated/azure_mgmt_azurestack/models/marketplace_product_log_update.rb'
    autoload :ErrorDetails,                                       '2017-06-01/generated/azure_mgmt_azurestack/models/error_details.rb'
    autoload :ProductLog,                                         '2017-06-01/generated/azure_mgmt_azurestack/models/product_log.rb'
    autoload :ExtendedProduct,                                    '2017-06-01/generated/azure_mgmt_azurestack/models/extended_product.rb'
    autoload :CustomerSubscriptionList,                           '2017-06-01/generated/azure_mgmt_azurestack/models/customer_subscription_list.rb'
    autoload :Resource,                                           '2017-06-01/generated/azure_mgmt_azurestack/models/resource.rb'
    autoload :RegistrationList,                                   '2017-06-01/generated/azure_mgmt_azurestack/models/registration_list.rb'
    autoload :VirtualMachineProductProperties,                    '2017-06-01/generated/azure_mgmt_azurestack/models/virtual_machine_product_properties.rb'
    autoload :ActivationKeyResult,                                '2017-06-01/generated/azure_mgmt_azurestack/models/activation_key_result.rb'
    autoload :OsDiskImage,                                        '2017-06-01/generated/azure_mgmt_azurestack/models/os_disk_image.rb'
    autoload :RegistrationParameter,                              '2017-06-01/generated/azure_mgmt_azurestack/models/registration_parameter.rb'
    autoload :Product,                                            '2017-06-01/generated/azure_mgmt_azurestack/models/product.rb'
    autoload :Registration,                                       '2017-06-01/generated/azure_mgmt_azurestack/models/registration.rb'
    autoload :CustomerSubscription,                               '2017-06-01/generated/azure_mgmt_azurestack/models/customer_subscription.rb'
    autoload :ProvisioningState,                                  '2017-06-01/generated/azure_mgmt_azurestack/models/provisioning_state.rb'
    autoload :ComputeRole,                                        '2017-06-01/generated/azure_mgmt_azurestack/models/compute_role.rb'
    autoload :OperatingSystem,                                    '2017-06-01/generated/azure_mgmt_azurestack/models/operating_system.rb'
    autoload :CompatibilityIssue,                                 '2017-06-01/generated/azure_mgmt_azurestack/models/compatibility_issue.rb'
    autoload :Category,                                           '2017-06-01/generated/azure_mgmt_azurestack/models/category.rb'
    autoload :Location,                                           '2017-06-01/generated/azure_mgmt_azurestack/models/location.rb'
  end
end
