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
require '2018-10-15/generated/azure_mgmt_LabServices/module_definition'
require 'ms_rest_azure'

module Azure::LabServices::Mgmt::V2018_10_15
  autoload :ProviderOperations,                                 '2018-10-15/generated/azure_mgmt_LabServices/provider_operations.rb'
  autoload :GlobalUsers,                                        '2018-10-15/generated/azure_mgmt_LabServices/global_users.rb'
  autoload :LabAccounts,                                        '2018-10-15/generated/azure_mgmt_LabServices/lab_accounts.rb'
  autoload :Operations,                                         '2018-10-15/generated/azure_mgmt_LabServices/operations.rb'
  autoload :GalleryImages,                                      '2018-10-15/generated/azure_mgmt_LabServices/gallery_images.rb'
  autoload :Labs,                                               '2018-10-15/generated/azure_mgmt_LabServices/labs.rb'
  autoload :EnvironmentSettings,                                '2018-10-15/generated/azure_mgmt_LabServices/environment_settings.rb'
  autoload :Environments,                                       '2018-10-15/generated/azure_mgmt_LabServices/environments.rb'
  autoload :Users,                                              '2018-10-15/generated/azure_mgmt_LabServices/users.rb'
  autoload :ManagedLabsClient,                                  '2018-10-15/generated/azure_mgmt_LabServices/managed_labs_client.rb'

  module Models
    autoload :SizeAvailability,                                   '2018-10-15/generated/azure_mgmt_LabServices/models/size_availability.rb'
    autoload :RegionalAvailability,                               '2018-10-15/generated/azure_mgmt_LabServices/models/regional_availability.rb'
    autoload :GetRegionalAvailabilityResponse,                    '2018-10-15/generated/azure_mgmt_LabServices/models/get_regional_availability_response.rb'
    autoload :ReferenceVmCreationParameters,                      '2018-10-15/generated/azure_mgmt_LabServices/models/reference_vm_creation_parameters.rb'
    autoload :AddUsersPayload,                                    '2018-10-15/generated/azure_mgmt_LabServices/models/add_users_payload.rb'
    autoload :EnvironmentSettingCreationParameters,               '2018-10-15/generated/azure_mgmt_LabServices/models/environment_setting_creation_parameters.rb'
    autoload :CreateLabProperties,                                '2018-10-15/generated/azure_mgmt_LabServices/models/create_lab_properties.rb'
    autoload :ResourceSettingCreationParameters,                  '2018-10-15/generated/azure_mgmt_LabServices/models/resource_setting_creation_parameters.rb'
    autoload :NetworkInterface,                                   '2018-10-15/generated/azure_mgmt_LabServices/models/network_interface.rb'
    autoload :SizeConfigurationPropertiesFragment,                '2018-10-15/generated/azure_mgmt_LabServices/models/size_configuration_properties_fragment.rb'
    autoload :LabCreationParameters,                              '2018-10-15/generated/azure_mgmt_LabServices/models/lab_creation_parameters.rb'
    autoload :ResourceSet,                                        '2018-10-15/generated/azure_mgmt_LabServices/models/resource_set.rb'
    autoload :EnvironmentDetails,                                 '2018-10-15/generated/azure_mgmt_LabServices/models/environment_details.rb'
    autoload :LatestOperationResult,                              '2018-10-15/generated/azure_mgmt_LabServices/models/latest_operation_result.rb'
    autoload :ResponseWithContinuationGalleryImage,               '2018-10-15/generated/azure_mgmt_LabServices/models/response_with_continuation_gallery_image.rb'
    autoload :RegisterPayload,                                    '2018-10-15/generated/azure_mgmt_LabServices/models/register_payload.rb'
    autoload :VmStateDetails,                                     '2018-10-15/generated/azure_mgmt_LabServices/models/vm_state_details.rb'
    autoload :SizeConfigurationProperties,                        '2018-10-15/generated/azure_mgmt_LabServices/models/size_configuration_properties.rb'
    autoload :ResourceSettings,                                   '2018-10-15/generated/azure_mgmt_LabServices/models/resource_settings.rb'
    autoload :ResponseWithContinuationUser,                       '2018-10-15/generated/azure_mgmt_LabServices/models/response_with_continuation_user.rb'
    autoload :ReferenceVmFragment,                                '2018-10-15/generated/azure_mgmt_LabServices/models/reference_vm_fragment.rb'
    autoload :ResponseWithContinuationLabAccount,                 '2018-10-15/generated/azure_mgmt_LabServices/models/response_with_continuation_lab_account.rb'
    autoload :ResponseWithContinuationEnvironment,                '2018-10-15/generated/azure_mgmt_LabServices/models/response_with_continuation_environment.rb'
    autoload :LabDetails,                                         '2018-10-15/generated/azure_mgmt_LabServices/models/lab_details.rb'
    autoload :EnvironmentSize,                                    '2018-10-15/generated/azure_mgmt_LabServices/models/environment_size.rb'
    autoload :ResponseWithContinuationLab,                        '2018-10-15/generated/azure_mgmt_LabServices/models/response_with_continuation_lab.rb'
    autoload :EnvironmentSizeFragment,                            '2018-10-15/generated/azure_mgmt_LabServices/models/environment_size_fragment.rb'
    autoload :ListEnvironmentsPayload,                            '2018-10-15/generated/azure_mgmt_LabServices/models/list_environments_payload.rb'
    autoload :Resource,                                           '2018-10-15/generated/azure_mgmt_LabServices/models/resource.rb'
    autoload :ListEnvironmentsResponse,                           '2018-10-15/generated/azure_mgmt_LabServices/models/list_environments_response.rb'
    autoload :GalleryImageReferenceFragment,                      '2018-10-15/generated/azure_mgmt_LabServices/models/gallery_image_reference_fragment.rb'
    autoload :ListLabsResponse,                                   '2018-10-15/generated/azure_mgmt_LabServices/models/list_labs_response.rb'
    autoload :GetPersonalPreferencesResponse,                     '2018-10-15/generated/azure_mgmt_LabServices/models/get_personal_preferences_response.rb'
    autoload :OperationBatchStatusPayload,                        '2018-10-15/generated/azure_mgmt_LabServices/models/operation_batch_status_payload.rb'
    autoload :ResourceSetFragment,                                '2018-10-15/generated/azure_mgmt_LabServices/models/resource_set_fragment.rb'
    autoload :OperationBatchStatusResponseItem,                   '2018-10-15/generated/azure_mgmt_LabServices/models/operation_batch_status_response_item.rb'
    autoload :ReferenceVm,                                        '2018-10-15/generated/azure_mgmt_LabServices/models/reference_vm.rb'
    autoload :OperationBatchStatusResponse,                       '2018-10-15/generated/azure_mgmt_LabServices/models/operation_batch_status_response.rb'
    autoload :ResourceSettingsFragment,                           '2018-10-15/generated/azure_mgmt_LabServices/models/resource_settings_fragment.rb'
    autoload :OperationError,                                     '2018-10-15/generated/azure_mgmt_LabServices/models/operation_error.rb'
    autoload :SizeInfoFragment,                                   '2018-10-15/generated/azure_mgmt_LabServices/models/size_info_fragment.rb'
    autoload :OperationMetadataDisplay,                           '2018-10-15/generated/azure_mgmt_LabServices/models/operation_metadata_display.rb'
    autoload :ResetPasswordPayload,                               '2018-10-15/generated/azure_mgmt_LabServices/models/reset_password_payload.rb'
    autoload :OperationMetadata,                                  '2018-10-15/generated/azure_mgmt_LabServices/models/operation_metadata.rb'
    autoload :VirtualMachineDetails,                              '2018-10-15/generated/azure_mgmt_LabServices/models/virtual_machine_details.rb'
    autoload :OperationResult,                                    '2018-10-15/generated/azure_mgmt_LabServices/models/operation_result.rb'
    autoload :ResponseWithContinuationEnvironmentSetting,         '2018-10-15/generated/azure_mgmt_LabServices/models/response_with_continuation_environment_setting.rb'
    autoload :OperationStatusPayload,                             '2018-10-15/generated/azure_mgmt_LabServices/models/operation_status_payload.rb'
    autoload :GalleryImageReference,                              '2018-10-15/generated/azure_mgmt_LabServices/models/gallery_image_reference.rb'
    autoload :OperationStatusResponse,                            '2018-10-15/generated/azure_mgmt_LabServices/models/operation_status_response.rb'
    autoload :EnvironmentOperationsPayload,                       '2018-10-15/generated/azure_mgmt_LabServices/models/environment_operations_payload.rb'
    autoload :PersonalPerferencesOperationsPayload,               '2018-10-15/generated/azure_mgmt_LabServices/models/personal_perferences_operations_payload.rb'
    autoload :GetEnvironmentResponse,                             '2018-10-15/generated/azure_mgmt_LabServices/models/get_environment_response.rb'
    autoload :ProviderOperationResult,                            '2018-10-15/generated/azure_mgmt_LabServices/models/provider_operation_result.rb'
    autoload :SizeInfo,                                           '2018-10-15/generated/azure_mgmt_LabServices/models/size_info.rb'
    autoload :PublishPayload,                                     '2018-10-15/generated/azure_mgmt_LabServices/models/publish_payload.rb'
    autoload :Environment,                                        '2018-10-15/generated/azure_mgmt_LabServices/models/environment.rb'
    autoload :EnvironmentFragment,                                '2018-10-15/generated/azure_mgmt_LabServices/models/environment_fragment.rb'
    autoload :EnvironmentSetting,                                 '2018-10-15/generated/azure_mgmt_LabServices/models/environment_setting.rb'
    autoload :EnvironmentSettingFragment,                         '2018-10-15/generated/azure_mgmt_LabServices/models/environment_setting_fragment.rb'
    autoload :GalleryImage,                                       '2018-10-15/generated/azure_mgmt_LabServices/models/gallery_image.rb'
    autoload :GalleryImageFragment,                               '2018-10-15/generated/azure_mgmt_LabServices/models/gallery_image_fragment.rb'
    autoload :Lab,                                                '2018-10-15/generated/azure_mgmt_LabServices/models/lab.rb'
    autoload :LabAccount,                                         '2018-10-15/generated/azure_mgmt_LabServices/models/lab_account.rb'
    autoload :LabAccountFragment,                                 '2018-10-15/generated/azure_mgmt_LabServices/models/lab_account_fragment.rb'
    autoload :LabFragment,                                        '2018-10-15/generated/azure_mgmt_LabServices/models/lab_fragment.rb'
    autoload :User,                                               '2018-10-15/generated/azure_mgmt_LabServices/models/user.rb'
    autoload :UserFragment,                                       '2018-10-15/generated/azure_mgmt_LabServices/models/user_fragment.rb'
    autoload :ManagedLabVmSize,                                   '2018-10-15/generated/azure_mgmt_LabServices/models/managed_lab_vm_size.rb'
    autoload :PublishingState,                                    '2018-10-15/generated/azure_mgmt_LabServices/models/publishing_state.rb'
    autoload :ConfigurationState,                                 '2018-10-15/generated/azure_mgmt_LabServices/models/configuration_state.rb'
    autoload :LabUserAccessMode,                                  '2018-10-15/generated/azure_mgmt_LabServices/models/lab_user_access_mode.rb'
    autoload :AddRemove,                                          '2018-10-15/generated/azure_mgmt_LabServices/models/add_remove.rb'
  end
end
