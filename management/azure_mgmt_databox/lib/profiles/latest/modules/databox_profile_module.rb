# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_databox'

module Azure::DataBox::Profiles::Latest
  module Mgmt
    Operations = Azure::DataBox::Mgmt::V2018_01_01::Operations
    Jobs = Azure::DataBox::Mgmt::V2018_01_01::Jobs
    Service = Azure::DataBox::Mgmt::V2018_01_01::Service

    module Models
      DiskSecret = Azure::DataBox::Mgmt::V2018_01_01::Models::DiskSecret
      Operation = Azure::DataBox::Mgmt::V2018_01_01::Models::Operation
      AccountCredentialDetails = Azure::DataBox::Mgmt::V2018_01_01::Models::AccountCredentialDetails
      Resource = Azure::DataBox::Mgmt::V2018_01_01::Models::Resource
      AddressValidationOutput = Azure::DataBox::Mgmt::V2018_01_01::Models::AddressValidationOutput
      OperationList = Azure::DataBox::Mgmt::V2018_01_01::Models::OperationList
      ArmBaseObject = Azure::DataBox::Mgmt::V2018_01_01::Models::ArmBaseObject
      DataBoxHeavySecret = Azure::DataBox::Mgmt::V2018_01_01::Models::DataBoxHeavySecret
      Sku = Azure::DataBox::Mgmt::V2018_01_01::Models::Sku
      SkuCapacity = Azure::DataBox::Mgmt::V2018_01_01::Models::SkuCapacity
      ValidateAddress = Azure::DataBox::Mgmt::V2018_01_01::Models::ValidateAddress
      SkuInformation = Azure::DataBox::Mgmt::V2018_01_01::Models::SkuInformation
      DataBoxSecret = Azure::DataBox::Mgmt::V2018_01_01::Models::DataBoxSecret
      CancellationReason = Azure::DataBox::Mgmt::V2018_01_01::Models::CancellationReason
      UnencryptedCredentialsList = Azure::DataBox::Mgmt::V2018_01_01::Models::UnencryptedCredentialsList
      ContactDetails = Azure::DataBox::Mgmt::V2018_01_01::Models::ContactDetails
      DestinationAccountDetails = Azure::DataBox::Mgmt::V2018_01_01::Models::DestinationAccountDetails
      CopyProgress = Azure::DataBox::Mgmt::V2018_01_01::Models::CopyProgress
      UnencryptedCredentials = Azure::DataBox::Mgmt::V2018_01_01::Models::UnencryptedCredentials
      JobResourceUpdateParameter = Azure::DataBox::Mgmt::V2018_01_01::Models::JobResourceUpdateParameter
      DataBoxDiskCopyProgress = Azure::DataBox::Mgmt::V2018_01_01::Models::DataBoxDiskCopyProgress
      JobSecrets = Azure::DataBox::Mgmt::V2018_01_01::Models::JobSecrets
      ShareCredentialDetails = Azure::DataBox::Mgmt::V2018_01_01::Models::ShareCredentialDetails
      ShipmentPickUpResponse = Azure::DataBox::Mgmt::V2018_01_01::Models::ShipmentPickUpResponse
      ApplianceNetworkConfiguration = Azure::DataBox::Mgmt::V2018_01_01::Models::ApplianceNetworkConfiguration
      Error = Azure::DataBox::Mgmt::V2018_01_01::Models::Error
      DestinationToServiceLocationMap = Azure::DataBox::Mgmt::V2018_01_01::Models::DestinationToServiceLocationMap
      JobErrorDetails = Azure::DataBox::Mgmt::V2018_01_01::Models::JobErrorDetails
      AvailableSkusResult = Azure::DataBox::Mgmt::V2018_01_01::Models::AvailableSkusResult
      JobStages = Azure::DataBox::Mgmt::V2018_01_01::Models::JobStages
      CopyLogDetails = Azure::DataBox::Mgmt::V2018_01_01::Models::CopyLogDetails
      PackageShippingDetails = Azure::DataBox::Mgmt::V2018_01_01::Models::PackageShippingDetails
      ShippingAddress = Azure::DataBox::Mgmt::V2018_01_01::Models::ShippingAddress
      Preferences = Azure::DataBox::Mgmt::V2018_01_01::Models::Preferences
      SkuCost = Azure::DataBox::Mgmt::V2018_01_01::Models::SkuCost
      JobDetails = Azure::DataBox::Mgmt::V2018_01_01::Models::JobDetails
      OperationDisplay = Azure::DataBox::Mgmt::V2018_01_01::Models::OperationDisplay
      ShipmentPickUpRequest = Azure::DataBox::Mgmt::V2018_01_01::Models::ShipmentPickUpRequest
      NotificationPreference = Azure::DataBox::Mgmt::V2018_01_01::Models::NotificationPreference
      JobResourceList = Azure::DataBox::Mgmt::V2018_01_01::Models::JobResourceList
      AvailableSkuRequest = Azure::DataBox::Mgmt::V2018_01_01::Models::AvailableSkuRequest
      UpdateJobDetails = Azure::DataBox::Mgmt::V2018_01_01::Models::UpdateJobDetails
      DataBoxAccountCopyLogDetails = Azure::DataBox::Mgmt::V2018_01_01::Models::DataBoxAccountCopyLogDetails
      DataBoxDiskCopyLogDetails = Azure::DataBox::Mgmt::V2018_01_01::Models::DataBoxDiskCopyLogDetails
      DataBoxDiskJobDetails = Azure::DataBox::Mgmt::V2018_01_01::Models::DataBoxDiskJobDetails
      DataBoxDiskJobSecrets = Azure::DataBox::Mgmt::V2018_01_01::Models::DataBoxDiskJobSecrets
      DataBoxHeavyAccountCopyLogDetails = Azure::DataBox::Mgmt::V2018_01_01::Models::DataBoxHeavyAccountCopyLogDetails
      DataBoxHeavyJobDetails = Azure::DataBox::Mgmt::V2018_01_01::Models::DataBoxHeavyJobDetails
      DataBoxHeavyJobSecrets = Azure::DataBox::Mgmt::V2018_01_01::Models::DataBoxHeavyJobSecrets
      DataBoxJobDetails = Azure::DataBox::Mgmt::V2018_01_01::Models::DataBoxJobDetails
      DataboxJobSecrets = Azure::DataBox::Mgmt::V2018_01_01::Models::DataboxJobSecrets
      DestinationManagedDiskDetails = Azure::DataBox::Mgmt::V2018_01_01::Models::DestinationManagedDiskDetails
      DestinationStorageAccountDetails = Azure::DataBox::Mgmt::V2018_01_01::Models::DestinationStorageAccountDetails
      JobResource = Azure::DataBox::Mgmt::V2018_01_01::Models::JobResource
      ShareDestinationFormatType = Azure::DataBox::Mgmt::V2018_01_01::Models::ShareDestinationFormatType
      AccessProtocol = Azure::DataBox::Mgmt::V2018_01_01::Models::AccessProtocol
      AddressValidationStatus = Azure::DataBox::Mgmt::V2018_01_01::Models::AddressValidationStatus
      AddressType = Azure::DataBox::Mgmt::V2018_01_01::Models::AddressType
      SkuName = Azure::DataBox::Mgmt::V2018_01_01::Models::SkuName
      SkuDisabledReason = Azure::DataBox::Mgmt::V2018_01_01::Models::SkuDisabledReason
      NotificationStageName = Azure::DataBox::Mgmt::V2018_01_01::Models::NotificationStageName
      CopyStatus = Azure::DataBox::Mgmt::V2018_01_01::Models::CopyStatus
      StageName = Azure::DataBox::Mgmt::V2018_01_01::Models::StageName
      StageStatus = Azure::DataBox::Mgmt::V2018_01_01::Models::StageStatus
    end

    #
    # DataBoxManagementClass
    #
    class DataBoxManagementClass
      attr_reader :operations, :jobs, :service, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_default_options
        else
          @options = options
        end

        reset!(options)

        @configurable = self
        @base_url = options[:base_url].nil? ? nil:options[:base_url]
        @options = options[:options].nil? ? nil:options[:options]

        @client_0 = Azure::DataBox::Mgmt::V2018_01_01::DataBoxManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @operations = @client_0.operations
        @jobs = @client_0.jobs
        @service = @client_0.service

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/DataBox/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
      end

    end

    class ModelClasses
      def disk_secret
        Azure::DataBox::Mgmt::V2018_01_01::Models::DiskSecret
      end
      def operation
        Azure::DataBox::Mgmt::V2018_01_01::Models::Operation
      end
      def account_credential_details
        Azure::DataBox::Mgmt::V2018_01_01::Models::AccountCredentialDetails
      end
      def resource
        Azure::DataBox::Mgmt::V2018_01_01::Models::Resource
      end
      def address_validation_output
        Azure::DataBox::Mgmt::V2018_01_01::Models::AddressValidationOutput
      end
      def operation_list
        Azure::DataBox::Mgmt::V2018_01_01::Models::OperationList
      end
      def arm_base_object
        Azure::DataBox::Mgmt::V2018_01_01::Models::ArmBaseObject
      end
      def data_box_heavy_secret
        Azure::DataBox::Mgmt::V2018_01_01::Models::DataBoxHeavySecret
      end
      def sku
        Azure::DataBox::Mgmt::V2018_01_01::Models::Sku
      end
      def sku_capacity
        Azure::DataBox::Mgmt::V2018_01_01::Models::SkuCapacity
      end
      def validate_address
        Azure::DataBox::Mgmt::V2018_01_01::Models::ValidateAddress
      end
      def sku_information
        Azure::DataBox::Mgmt::V2018_01_01::Models::SkuInformation
      end
      def data_box_secret
        Azure::DataBox::Mgmt::V2018_01_01::Models::DataBoxSecret
      end
      def cancellation_reason
        Azure::DataBox::Mgmt::V2018_01_01::Models::CancellationReason
      end
      def unencrypted_credentials_list
        Azure::DataBox::Mgmt::V2018_01_01::Models::UnencryptedCredentialsList
      end
      def contact_details
        Azure::DataBox::Mgmt::V2018_01_01::Models::ContactDetails
      end
      def destination_account_details
        Azure::DataBox::Mgmt::V2018_01_01::Models::DestinationAccountDetails
      end
      def copy_progress
        Azure::DataBox::Mgmt::V2018_01_01::Models::CopyProgress
      end
      def unencrypted_credentials
        Azure::DataBox::Mgmt::V2018_01_01::Models::UnencryptedCredentials
      end
      def job_resource_update_parameter
        Azure::DataBox::Mgmt::V2018_01_01::Models::JobResourceUpdateParameter
      end
      def data_box_disk_copy_progress
        Azure::DataBox::Mgmt::V2018_01_01::Models::DataBoxDiskCopyProgress
      end
      def job_secrets
        Azure::DataBox::Mgmt::V2018_01_01::Models::JobSecrets
      end
      def share_credential_details
        Azure::DataBox::Mgmt::V2018_01_01::Models::ShareCredentialDetails
      end
      def shipment_pick_up_response
        Azure::DataBox::Mgmt::V2018_01_01::Models::ShipmentPickUpResponse
      end
      def appliance_network_configuration
        Azure::DataBox::Mgmt::V2018_01_01::Models::ApplianceNetworkConfiguration
      end
      def error
        Azure::DataBox::Mgmt::V2018_01_01::Models::Error
      end
      def destination_to_service_location_map
        Azure::DataBox::Mgmt::V2018_01_01::Models::DestinationToServiceLocationMap
      end
      def job_error_details
        Azure::DataBox::Mgmt::V2018_01_01::Models::JobErrorDetails
      end
      def available_skus_result
        Azure::DataBox::Mgmt::V2018_01_01::Models::AvailableSkusResult
      end
      def job_stages
        Azure::DataBox::Mgmt::V2018_01_01::Models::JobStages
      end
      def copy_log_details
        Azure::DataBox::Mgmt::V2018_01_01::Models::CopyLogDetails
      end
      def package_shipping_details
        Azure::DataBox::Mgmt::V2018_01_01::Models::PackageShippingDetails
      end
      def shipping_address
        Azure::DataBox::Mgmt::V2018_01_01::Models::ShippingAddress
      end
      def preferences
        Azure::DataBox::Mgmt::V2018_01_01::Models::Preferences
      end
      def sku_cost
        Azure::DataBox::Mgmt::V2018_01_01::Models::SkuCost
      end
      def job_details
        Azure::DataBox::Mgmt::V2018_01_01::Models::JobDetails
      end
      def operation_display
        Azure::DataBox::Mgmt::V2018_01_01::Models::OperationDisplay
      end
      def shipment_pick_up_request
        Azure::DataBox::Mgmt::V2018_01_01::Models::ShipmentPickUpRequest
      end
      def notification_preference
        Azure::DataBox::Mgmt::V2018_01_01::Models::NotificationPreference
      end
      def job_resource_list
        Azure::DataBox::Mgmt::V2018_01_01::Models::JobResourceList
      end
      def available_sku_request
        Azure::DataBox::Mgmt::V2018_01_01::Models::AvailableSkuRequest
      end
      def update_job_details
        Azure::DataBox::Mgmt::V2018_01_01::Models::UpdateJobDetails
      end
      def data_box_account_copy_log_details
        Azure::DataBox::Mgmt::V2018_01_01::Models::DataBoxAccountCopyLogDetails
      end
      def data_box_disk_copy_log_details
        Azure::DataBox::Mgmt::V2018_01_01::Models::DataBoxDiskCopyLogDetails
      end
      def data_box_disk_job_details
        Azure::DataBox::Mgmt::V2018_01_01::Models::DataBoxDiskJobDetails
      end
      def data_box_disk_job_secrets
        Azure::DataBox::Mgmt::V2018_01_01::Models::DataBoxDiskJobSecrets
      end
      def data_box_heavy_account_copy_log_details
        Azure::DataBox::Mgmt::V2018_01_01::Models::DataBoxHeavyAccountCopyLogDetails
      end
      def data_box_heavy_job_details
        Azure::DataBox::Mgmt::V2018_01_01::Models::DataBoxHeavyJobDetails
      end
      def data_box_heavy_job_secrets
        Azure::DataBox::Mgmt::V2018_01_01::Models::DataBoxHeavyJobSecrets
      end
      def data_box_job_details
        Azure::DataBox::Mgmt::V2018_01_01::Models::DataBoxJobDetails
      end
      def databox_job_secrets
        Azure::DataBox::Mgmt::V2018_01_01::Models::DataboxJobSecrets
      end
      def destination_managed_disk_details
        Azure::DataBox::Mgmt::V2018_01_01::Models::DestinationManagedDiskDetails
      end
      def destination_storage_account_details
        Azure::DataBox::Mgmt::V2018_01_01::Models::DestinationStorageAccountDetails
      end
      def job_resource
        Azure::DataBox::Mgmt::V2018_01_01::Models::JobResource
      end
      def share_destination_format_type
        Azure::DataBox::Mgmt::V2018_01_01::Models::ShareDestinationFormatType
      end
      def access_protocol
        Azure::DataBox::Mgmt::V2018_01_01::Models::AccessProtocol
      end
      def address_validation_status
        Azure::DataBox::Mgmt::V2018_01_01::Models::AddressValidationStatus
      end
      def address_type
        Azure::DataBox::Mgmt::V2018_01_01::Models::AddressType
      end
      def sku_name
        Azure::DataBox::Mgmt::V2018_01_01::Models::SkuName
      end
      def sku_disabled_reason
        Azure::DataBox::Mgmt::V2018_01_01::Models::SkuDisabledReason
      end
      def notification_stage_name
        Azure::DataBox::Mgmt::V2018_01_01::Models::NotificationStageName
      end
      def copy_status
        Azure::DataBox::Mgmt::V2018_01_01::Models::CopyStatus
      end
      def stage_name
        Azure::DataBox::Mgmt::V2018_01_01::Models::StageName
      end
      def stage_status
        Azure::DataBox::Mgmt::V2018_01_01::Models::StageStatus
      end
    end
  end
end
