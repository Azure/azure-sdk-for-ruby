# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_automanage'

module Azure::Profiles::Latest
  module Automanage
    module Mgmt
      Accounts = Azure::Automanage::Mgmt::V2020_06_30_preview::Accounts
      ConfigurationProfileAssignments = Azure::Automanage::Mgmt::V2020_06_30_preview::ConfigurationProfileAssignments
      ConfigurationProfilePreferences = Azure::Automanage::Mgmt::V2020_06_30_preview::ConfigurationProfilePreferences
      Operations = Azure::Automanage::Mgmt::V2020_06_30_preview::Operations

      module Models
        ConfigurationProfilePreferenceProperties = Azure::Automanage::Mgmt::V2020_06_30_preview::Models::ConfigurationProfilePreferenceProperties
        AccountIdentity = Azure::Automanage::Mgmt::V2020_06_30_preview::Models::AccountIdentity
        ErrorAdditionalInfo = Azure::Automanage::Mgmt::V2020_06_30_preview::Models::ErrorAdditionalInfo
        ErrorResponse = Azure::Automanage::Mgmt::V2020_06_30_preview::Models::ErrorResponse
        AccountList = Azure::Automanage::Mgmt::V2020_06_30_preview::Models::AccountList
        ErrorResponseError = Azure::Automanage::Mgmt::V2020_06_30_preview::Models::ErrorResponseError
        ConfigurationProfileAssignmentProperties = Azure::Automanage::Mgmt::V2020_06_30_preview::Models::ConfigurationProfileAssignmentProperties
        ConfigurationProfileAssignmentList = Azure::Automanage::Mgmt::V2020_06_30_preview::Models::ConfigurationProfileAssignmentList
        ConfigurationProfilePreferenceList = Azure::Automanage::Mgmt::V2020_06_30_preview::Models::ConfigurationProfilePreferenceList
        ConfigurationProfilePreferenceAntiMalware = Azure::Automanage::Mgmt::V2020_06_30_preview::Models::ConfigurationProfilePreferenceAntiMalware
        OperationDisplay = Azure::Automanage::Mgmt::V2020_06_30_preview::Models::OperationDisplay
        Resource = Azure::Automanage::Mgmt::V2020_06_30_preview::Models::Resource
        Operation = Azure::Automanage::Mgmt::V2020_06_30_preview::Models::Operation
        ConfigurationProfileAssignmentCompliance = Azure::Automanage::Mgmt::V2020_06_30_preview::Models::ConfigurationProfileAssignmentCompliance
        OperationList = Azure::Automanage::Mgmt::V2020_06_30_preview::Models::OperationList
        ConfigurationProfilePreferenceVmBackup = Azure::Automanage::Mgmt::V2020_06_30_preview::Models::ConfigurationProfilePreferenceVmBackup
        UpdateResource = Azure::Automanage::Mgmt::V2020_06_30_preview::Models::UpdateResource
        Account = Azure::Automanage::Mgmt::V2020_06_30_preview::Models::Account
        AccountUpdate = Azure::Automanage::Mgmt::V2020_06_30_preview::Models::AccountUpdate
        ConfigurationProfileAssignment = Azure::Automanage::Mgmt::V2020_06_30_preview::Models::ConfigurationProfileAssignment
        ConfigurationProfilePreference = Azure::Automanage::Mgmt::V2020_06_30_preview::Models::ConfigurationProfilePreference
        ConfigurationProfilePreferenceUpdate = Azure::Automanage::Mgmt::V2020_06_30_preview::Models::ConfigurationProfilePreferenceUpdate
        ProxyResource = Azure::Automanage::Mgmt::V2020_06_30_preview::Models::ProxyResource
        AzureEntityResource = Azure::Automanage::Mgmt::V2020_06_30_preview::Models::AzureEntityResource
        TrackedResource = Azure::Automanage::Mgmt::V2020_06_30_preview::Models::TrackedResource
        ResourceIdentityType = Azure::Automanage::Mgmt::V2020_06_30_preview::Models::ResourceIdentityType
        ConfigurationProfile = Azure::Automanage::Mgmt::V2020_06_30_preview::Models::ConfigurationProfile
        ProvisioningState = Azure::Automanage::Mgmt::V2020_06_30_preview::Models::ProvisioningState
        UpdateStatus = Azure::Automanage::Mgmt::V2020_06_30_preview::Models::UpdateStatus
        EnableRealTimeProtection = Azure::Automanage::Mgmt::V2020_06_30_preview::Models::EnableRealTimeProtection
        RunScheduledScan = Azure::Automanage::Mgmt::V2020_06_30_preview::Models::RunScheduledScan
        ScanType = Azure::Automanage::Mgmt::V2020_06_30_preview::Models::ScanType
      end

      class AutomanageManagementClass
        attr_reader :accounts, :configuration_profile_assignments, :configuration_profile_preferences, :operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Automanage::Mgmt::V2020_06_30_preview::AutomanageClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @accounts = @client_0.accounts
          @configuration_profile_assignments = @client_0.configuration_profile_assignments
          @configuration_profile_preferences = @client_0.configuration_profile_preferences
          @operations = @client_0.operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Automanage/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def configuration_profile_preference_properties
            Azure::Automanage::Mgmt::V2020_06_30_preview::Models::ConfigurationProfilePreferenceProperties
          end
          def account_identity
            Azure::Automanage::Mgmt::V2020_06_30_preview::Models::AccountIdentity
          end
          def error_additional_info
            Azure::Automanage::Mgmt::V2020_06_30_preview::Models::ErrorAdditionalInfo
          end
          def error_response
            Azure::Automanage::Mgmt::V2020_06_30_preview::Models::ErrorResponse
          end
          def account_list
            Azure::Automanage::Mgmt::V2020_06_30_preview::Models::AccountList
          end
          def error_response_error
            Azure::Automanage::Mgmt::V2020_06_30_preview::Models::ErrorResponseError
          end
          def configuration_profile_assignment_properties
            Azure::Automanage::Mgmt::V2020_06_30_preview::Models::ConfigurationProfileAssignmentProperties
          end
          def configuration_profile_assignment_list
            Azure::Automanage::Mgmt::V2020_06_30_preview::Models::ConfigurationProfileAssignmentList
          end
          def configuration_profile_preference_list
            Azure::Automanage::Mgmt::V2020_06_30_preview::Models::ConfigurationProfilePreferenceList
          end
          def configuration_profile_preference_anti_malware
            Azure::Automanage::Mgmt::V2020_06_30_preview::Models::ConfigurationProfilePreferenceAntiMalware
          end
          def operation_display
            Azure::Automanage::Mgmt::V2020_06_30_preview::Models::OperationDisplay
          end
          def resource
            Azure::Automanage::Mgmt::V2020_06_30_preview::Models::Resource
          end
          def operation
            Azure::Automanage::Mgmt::V2020_06_30_preview::Models::Operation
          end
          def configuration_profile_assignment_compliance
            Azure::Automanage::Mgmt::V2020_06_30_preview::Models::ConfigurationProfileAssignmentCompliance
          end
          def operation_list
            Azure::Automanage::Mgmt::V2020_06_30_preview::Models::OperationList
          end
          def configuration_profile_preference_vm_backup
            Azure::Automanage::Mgmt::V2020_06_30_preview::Models::ConfigurationProfilePreferenceVmBackup
          end
          def update_resource
            Azure::Automanage::Mgmt::V2020_06_30_preview::Models::UpdateResource
          end
          def account
            Azure::Automanage::Mgmt::V2020_06_30_preview::Models::Account
          end
          def account_update
            Azure::Automanage::Mgmt::V2020_06_30_preview::Models::AccountUpdate
          end
          def configuration_profile_assignment
            Azure::Automanage::Mgmt::V2020_06_30_preview::Models::ConfigurationProfileAssignment
          end
          def configuration_profile_preference
            Azure::Automanage::Mgmt::V2020_06_30_preview::Models::ConfigurationProfilePreference
          end
          def configuration_profile_preference_update
            Azure::Automanage::Mgmt::V2020_06_30_preview::Models::ConfigurationProfilePreferenceUpdate
          end
          def proxy_resource
            Azure::Automanage::Mgmt::V2020_06_30_preview::Models::ProxyResource
          end
          def azure_entity_resource
            Azure::Automanage::Mgmt::V2020_06_30_preview::Models::AzureEntityResource
          end
          def tracked_resource
            Azure::Automanage::Mgmt::V2020_06_30_preview::Models::TrackedResource
          end
          def resource_identity_type
            Azure::Automanage::Mgmt::V2020_06_30_preview::Models::ResourceIdentityType
          end
          def configuration_profile
            Azure::Automanage::Mgmt::V2020_06_30_preview::Models::ConfigurationProfile
          end
          def provisioning_state
            Azure::Automanage::Mgmt::V2020_06_30_preview::Models::ProvisioningState
          end
          def update_status
            Azure::Automanage::Mgmt::V2020_06_30_preview::Models::UpdateStatus
          end
          def enable_real_time_protection
            Azure::Automanage::Mgmt::V2020_06_30_preview::Models::EnableRealTimeProtection
          end
          def run_scheduled_scan
            Azure::Automanage::Mgmt::V2020_06_30_preview::Models::RunScheduledScan
          end
          def scan_type
            Azure::Automanage::Mgmt::V2020_06_30_preview::Models::ScanType
          end
        end
      end
    end
  end
end
