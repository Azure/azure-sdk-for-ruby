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
require '2016-09-01-preview/generated/azure_mgmt_managed_applications/module_definition'
require 'ms_rest_azure'

module Azure::ARM::ManagedApplications::Api_2016_09_01_preview
  autoload :Appliances,                                         '2016-09-01-preview/generated/azure_mgmt_managed_applications/appliances.rb'
  autoload :ApplianceDefinitions,                               '2016-09-01-preview/generated/azure_mgmt_managed_applications/appliance_definitions.rb'
  autoload :ManagedApplicationClient,                           '2016-09-01-preview/generated/azure_mgmt_managed_applications/managed_application_client.rb'

  module Models
    autoload :Sku,                                                '2016-09-01-preview/generated/azure_mgmt_managed_applications/models/sku.rb'
    autoload :Plan,                                               '2016-09-01-preview/generated/azure_mgmt_managed_applications/models/plan.rb'
    autoload :Identity,                                           '2016-09-01-preview/generated/azure_mgmt_managed_applications/models/identity.rb'
    autoload :PlanPatchable,                                      '2016-09-01-preview/generated/azure_mgmt_managed_applications/models/plan_patchable.rb'
    autoload :ErrorResponse,                                      '2016-09-01-preview/generated/azure_mgmt_managed_applications/models/error_response.rb'
    autoload :ApplianceProviderAuthorization,                     '2016-09-01-preview/generated/azure_mgmt_managed_applications/models/appliance_provider_authorization.rb'
    autoload :ApplianceDefinitionListResult,                      '2016-09-01-preview/generated/azure_mgmt_managed_applications/models/appliance_definition_list_result.rb'
    autoload :ApplianceListResult,                                '2016-09-01-preview/generated/azure_mgmt_managed_applications/models/appliance_list_result.rb'
    autoload :ApplianceArtifact,                                  '2016-09-01-preview/generated/azure_mgmt_managed_applications/models/appliance_artifact.rb'
    autoload :Resource,                                           '2016-09-01-preview/generated/azure_mgmt_managed_applications/models/resource.rb'
    autoload :GenericResource,                                    '2016-09-01-preview/generated/azure_mgmt_managed_applications/models/generic_resource.rb'
    autoload :Appliance,                                          '2016-09-01-preview/generated/azure_mgmt_managed_applications/models/appliance.rb'
    autoload :AppliancePatchable,                                 '2016-09-01-preview/generated/azure_mgmt_managed_applications/models/appliance_patchable.rb'
    autoload :ApplianceDefinition,                                '2016-09-01-preview/generated/azure_mgmt_managed_applications/models/appliance_definition.rb'
    autoload :ProvisioningState,                                  '2016-09-01-preview/generated/azure_mgmt_managed_applications/models/provisioning_state.rb'
    autoload :ApplianceLockLevel,                                 '2016-09-01-preview/generated/azure_mgmt_managed_applications/models/appliance_lock_level.rb'
    autoload :ApplianceArtifactType,                              '2016-09-01-preview/generated/azure_mgmt_managed_applications/models/appliance_artifact_type.rb'
    autoload :ResourceIdentityType,                               '2016-09-01-preview/generated/azure_mgmt_managed_applications/models/resource_identity_type.rb'
  end
end
