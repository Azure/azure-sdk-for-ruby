# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_stor_simple8000_series'

module Azure::StorSimple8000Series::Profiles::Latest
  module Mgmt
    Operations = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Operations
    Managers = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Managers
    AccessControlRecords = Azure::StorSimple8000Series::Mgmt::V2017_06_01::AccessControlRecords
    Alerts = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Alerts
    BandwidthSettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::BandwidthSettings
    CloudAppliances = Azure::StorSimple8000Series::Mgmt::V2017_06_01::CloudAppliances
    Devices = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Devices
    DeviceSettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::DeviceSettings
    BackupPolicies = Azure::StorSimple8000Series::Mgmt::V2017_06_01::BackupPolicies
    BackupSchedules = Azure::StorSimple8000Series::Mgmt::V2017_06_01::BackupSchedules
    Backups = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Backups
    HardwareComponentGroups = Azure::StorSimple8000Series::Mgmt::V2017_06_01::HardwareComponentGroups
    Jobs = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Jobs
    VolumeContainers = Azure::StorSimple8000Series::Mgmt::V2017_06_01::VolumeContainers
    Volumes = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Volumes
    StorageAccountCredentials = Azure::StorSimple8000Series::Mgmt::V2017_06_01::StorageAccountCredentials

    module Models
      TargetEligibilityResult = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::TargetEligibilityResult
      FailoverTarget = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FailoverTarget
      AccessControlRecordList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AccessControlRecordList
      FailoverTargetsList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FailoverTargetsList
      AlertSource = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertSource
      Feature = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Feature
      RemoteManagementSettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::RemoteManagementSettings
      FailoverRequest = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FailoverRequest
      AlertList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertList
      VolumeFailoverMetadata = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VolumeFailoverMetadata
      AsymmetricEncryptedSecret = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AsymmetricEncryptedSecret
      VolumeContainerFailoverMetadata = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VolumeContainerFailoverMetadata
      AvailableProviderOperation = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AvailableProviderOperation
      FailoverSetEligibilityResult = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FailoverSetEligibilityResult
      BackupElement = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupElement
      FailoverSet = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FailoverSet
      BackupFilter = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupFilter
      FailoverSetsList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FailoverSetsList
      VolumeContainerList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VolumeContainerList
      TargetEligibilityErrorMessage = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::TargetEligibilityErrorMessage
      ScheduleRecurrence = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ScheduleRecurrence
      SymmetricEncryptedSecret = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::SymmetricEncryptedSecret
      NicIPv6 = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NicIPv6
      AcsConfiguration = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AcsConfiguration
      StorageAccountCredentialList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::StorageAccountCredentialList
      AlertErrorDetails = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertErrorDetails
      BaseModel = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BaseModel
      PublicKey = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::PublicKey
      ClearAlertRequest = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ClearAlertRequest
      FeatureFilter = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FeatureFilter
      CloudAppliance = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::CloudAppliance
      FeatureList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FeatureList
      SendTestAlertEmailRequest = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::SendTestAlertEmailRequest
      HardwareComponent = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::HardwareComponent
      CloudApplianceSettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::CloudApplianceSettings
      NetworkSettingsPatch = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetworkSettingsPatch
      NetworkInterfaceData0Settings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetworkInterfaceData0Settings
      HardwareComponentGroupList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::HardwareComponentGroupList
      Resource = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Resource
      JobErrorItem = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobErrorItem
      DeviceDetails = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DeviceDetails
      JobErrorDetails = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobErrorDetails
      RemoteManagementSettingsPatch = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::RemoteManagementSettingsPatch
      JobStage = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobStage
      DevicePatch = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DevicePatch
      WebproxySettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::WebproxySettings
      DNSSettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DNSSettings
      JobFilter = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobFilter
      JobList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobList
      AvailableProviderOperationList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AvailableProviderOperationList
      Key = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Key
      BackupList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupList
      ListFailoverTargetsRequest = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ListFailoverTargetsRequest
      BackupScheduleList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupScheduleList
      ManagerIntrinsicSettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ManagerIntrinsicSettings
      BandwidthSettingList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BandwidthSettingList
      ManagerSku = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ManagerSku
      CloneRequest = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::CloneRequest
      NetworkAdapterList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetworkAdapterList
      CloudApplianceConfigurationList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::CloudApplianceConfigurationList
      NetworkAdapters = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetworkAdapters
      SecuritySettingsPatch = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::SecuritySettingsPatch
      ManagerList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ManagerList
      DeviceRolloverDetails = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DeviceRolloverDetails
      ManagerPatch = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ManagerPatch
      DimensionFilter = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DimensionFilter
      MetricAvailablity = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricAvailablity
      AvailableProviderOperationDisplay = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AvailableProviderOperationDisplay
      MetricData = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricData
      BackupPolicyList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupPolicyList
      MetricName = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricName
      ChapSettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ChapSettings
      MetricDimension = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricDimension
      SecondaryDNSSettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::SecondaryDNSSettings
      MetricDefinition = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricDefinition
      DeviceList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DeviceList
      MetricDefinitionList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricDefinitionList
      VolumeList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VolumeList
      MetricNameFilter = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricNameFilter
      VmImage = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VmImage
      MetricFilter = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricFilter
      AlertFilter = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertFilter
      Metrics = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Metrics
      DataStatistics = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DataStatistics
      MetricList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricList
      BandwidthSchedule = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BandwidthSchedule
      NicIPv4 = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NicIPv4
      AccessControlRecord = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AccessControlRecord
      Alert = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Alert
      AlertSettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertSettings
      Backup = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Backup
      BackupPolicy = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupPolicy
      BackupSchedule = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupSchedule
      BandwidthSetting = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BandwidthSetting
      CloudApplianceConfiguration = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::CloudApplianceConfiguration
      ConfigureDeviceRequest = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ConfigureDeviceRequest
      ControllerPowerStateChangeRequest = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ControllerPowerStateChangeRequest
      Device = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Device
      EncryptionSettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::EncryptionSettings
      HardwareComponentGroup = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::HardwareComponentGroup
      Job = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Job
      Manager = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Manager
      ManagerExtendedInfo = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ManagerExtendedInfo
      NetworkSettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetworkSettings
      SecuritySettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::SecuritySettings
      StorageAccountCredential = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::StorageAccountCredential
      TimeSettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::TimeSettings
      Updates = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Updates
      Volume = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Volume
      VolumeContainer = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VolumeContainer
      AlertScope = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertScope
      AlertSourceType = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertSourceType
      AlertSeverity = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertSeverity
      AlertStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertStatus
      AlertEmailNotificationStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertEmailNotificationStatus
      EncryptionAlgorithm = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::EncryptionAlgorithm
      BackupType = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupType
      BackupJobCreationType = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupJobCreationType
      Time = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Time
      VolumeType = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VolumeType
      ScheduledBackupStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ScheduledBackupStatus
      BackupPolicyCreationType = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupPolicyCreationType
      RecurrenceType = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::RecurrenceType
      DayOfWeek = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DayOfWeek
      ScheduleStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ScheduleStatus
      Kind = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Kind
      ControllerPowerStateAction = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ControllerPowerStateAction
      ControllerId = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ControllerId
      ControllerStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ControllerStatus
      DeviceConfigurationStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DeviceConfigurationStatus
      DeviceStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DeviceStatus
      DeviceType = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DeviceType
      VirtualMachineApiType = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VirtualMachineApiType
      AuthorizationEligibility = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AuthorizationEligibility
      AuthorizationStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AuthorizationStatus
      InEligibilityCategory = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::InEligibilityCategory
      EncryptionStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::EncryptionStatus
      KeyRolloverStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::KeyRolloverStatus
      TargetEligibilityStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::TargetEligibilityStatus
      TargetEligibilityResultCode = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::TargetEligibilityResultCode
      FeatureSupportStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FeatureSupportStatus
      HardwareComponentStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::HardwareComponentStatus
      JobStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobStatus
      JobType = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobType
      ManagerType = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ManagerType
      MetricUnit = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricUnit
      MetricAggregationType = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricAggregationType
      NetInterfaceId = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetInterfaceId
      NetInterfaceStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetInterfaceStatus
      ISCSIAndCloudStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ISCSIAndCloudStatus
      NetworkMode = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetworkMode
      AuthenticationType = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AuthenticationType
      RemoteManagementModeConfiguration = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::RemoteManagementModeConfiguration
      SslStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::SslStatus
      VolumeStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VolumeStatus
      OperationStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::OperationStatus
      BackupStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupStatus
      MonitoringStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MonitoringStatus
      OwnerShipStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::OwnerShipStatus
    end

    #
    # StorSimple8000SeriesManagementClass
    #
    class StorSimple8000SeriesManagementClass
      attr_reader :operations, :managers, :access_control_records, :alerts, :bandwidth_settings, :cloud_appliances, :devices, :device_settings, :backup_policies, :backup_schedules, :backups, :hardware_component_groups, :jobs, :volume_containers, :volumes, :storage_account_credentials, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::StorSimple8000Series::Mgmt::V2017_06_01::StorSimple8000SeriesManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @operations = @client_0.operations
        @managers = @client_0.managers
        @access_control_records = @client_0.access_control_records
        @alerts = @client_0.alerts
        @bandwidth_settings = @client_0.bandwidth_settings
        @cloud_appliances = @client_0.cloud_appliances
        @devices = @client_0.devices
        @device_settings = @client_0.device_settings
        @backup_policies = @client_0.backup_policies
        @backup_schedules = @client_0.backup_schedules
        @backups = @client_0.backups
        @hardware_component_groups = @client_0.hardware_component_groups
        @jobs = @client_0.jobs
        @volume_containers = @client_0.volume_containers
        @volumes = @client_0.volumes
        @storage_account_credentials = @client_0.storage_account_credentials

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/StorSimple8000Series/Mgmt'
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
      def target_eligibility_result
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::TargetEligibilityResult
      end
      def failover_target
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FailoverTarget
      end
      def access_control_record_list
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AccessControlRecordList
      end
      def failover_targets_list
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FailoverTargetsList
      end
      def alert_source
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertSource
      end
      def feature
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Feature
      end
      def remote_management_settings
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::RemoteManagementSettings
      end
      def failover_request
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FailoverRequest
      end
      def alert_list
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertList
      end
      def volume_failover_metadata
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VolumeFailoverMetadata
      end
      def asymmetric_encrypted_secret
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AsymmetricEncryptedSecret
      end
      def volume_container_failover_metadata
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VolumeContainerFailoverMetadata
      end
      def available_provider_operation
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AvailableProviderOperation
      end
      def failover_set_eligibility_result
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FailoverSetEligibilityResult
      end
      def backup_element
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupElement
      end
      def failover_set
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FailoverSet
      end
      def backup_filter
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupFilter
      end
      def failover_sets_list
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FailoverSetsList
      end
      def volume_container_list
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VolumeContainerList
      end
      def target_eligibility_error_message
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::TargetEligibilityErrorMessage
      end
      def schedule_recurrence
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ScheduleRecurrence
      end
      def symmetric_encrypted_secret
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::SymmetricEncryptedSecret
      end
      def nic_ipv6
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NicIPv6
      end
      def acs_configuration
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AcsConfiguration
      end
      def storage_account_credential_list
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::StorageAccountCredentialList
      end
      def alert_error_details
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertErrorDetails
      end
      def base_model
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BaseModel
      end
      def public_key
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::PublicKey
      end
      def clear_alert_request
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ClearAlertRequest
      end
      def feature_filter
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FeatureFilter
      end
      def cloud_appliance
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::CloudAppliance
      end
      def feature_list
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FeatureList
      end
      def send_test_alert_email_request
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::SendTestAlertEmailRequest
      end
      def hardware_component
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::HardwareComponent
      end
      def cloud_appliance_settings
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::CloudApplianceSettings
      end
      def network_settings_patch
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetworkSettingsPatch
      end
      def network_interface_data0_settings
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetworkInterfaceData0Settings
      end
      def hardware_component_group_list
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::HardwareComponentGroupList
      end
      def resource
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Resource
      end
      def job_error_item
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobErrorItem
      end
      def device_details
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DeviceDetails
      end
      def job_error_details
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobErrorDetails
      end
      def remote_management_settings_patch
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::RemoteManagementSettingsPatch
      end
      def job_stage
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobStage
      end
      def device_patch
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DevicePatch
      end
      def webproxy_settings
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::WebproxySettings
      end
      def dnssettings
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DNSSettings
      end
      def job_filter
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobFilter
      end
      def job_list
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobList
      end
      def available_provider_operation_list
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AvailableProviderOperationList
      end
      def key
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Key
      end
      def backup_list
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupList
      end
      def list_failover_targets_request
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ListFailoverTargetsRequest
      end
      def backup_schedule_list
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupScheduleList
      end
      def manager_intrinsic_settings
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ManagerIntrinsicSettings
      end
      def bandwidth_setting_list
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BandwidthSettingList
      end
      def manager_sku
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ManagerSku
      end
      def clone_request
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::CloneRequest
      end
      def network_adapter_list
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetworkAdapterList
      end
      def cloud_appliance_configuration_list
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::CloudApplianceConfigurationList
      end
      def network_adapters
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetworkAdapters
      end
      def security_settings_patch
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::SecuritySettingsPatch
      end
      def manager_list
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ManagerList
      end
      def device_rollover_details
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DeviceRolloverDetails
      end
      def manager_patch
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ManagerPatch
      end
      def dimension_filter
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DimensionFilter
      end
      def metric_availablity
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricAvailablity
      end
      def available_provider_operation_display
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AvailableProviderOperationDisplay
      end
      def metric_data
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricData
      end
      def backup_policy_list
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupPolicyList
      end
      def metric_name
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricName
      end
      def chap_settings
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ChapSettings
      end
      def metric_dimension
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricDimension
      end
      def secondary_dnssettings
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::SecondaryDNSSettings
      end
      def metric_definition
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricDefinition
      end
      def device_list
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DeviceList
      end
      def metric_definition_list
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricDefinitionList
      end
      def volume_list
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VolumeList
      end
      def metric_name_filter
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricNameFilter
      end
      def vm_image
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VmImage
      end
      def metric_filter
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricFilter
      end
      def alert_filter
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertFilter
      end
      def metrics
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Metrics
      end
      def data_statistics
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DataStatistics
      end
      def metric_list
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricList
      end
      def bandwidth_schedule
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BandwidthSchedule
      end
      def nic_ipv4
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NicIPv4
      end
      def access_control_record
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AccessControlRecord
      end
      def alert
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Alert
      end
      def alert_settings
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertSettings
      end
      def backup
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Backup
      end
      def backup_policy
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupPolicy
      end
      def backup_schedule
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupSchedule
      end
      def bandwidth_setting
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BandwidthSetting
      end
      def cloud_appliance_configuration
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::CloudApplianceConfiguration
      end
      def configure_device_request
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ConfigureDeviceRequest
      end
      def controller_power_state_change_request
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ControllerPowerStateChangeRequest
      end
      def device
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Device
      end
      def encryption_settings
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::EncryptionSettings
      end
      def hardware_component_group
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::HardwareComponentGroup
      end
      def job
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Job
      end
      def manager
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Manager
      end
      def manager_extended_info
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ManagerExtendedInfo
      end
      def network_settings
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetworkSettings
      end
      def security_settings
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::SecuritySettings
      end
      def storage_account_credential
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::StorageAccountCredential
      end
      def time_settings
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::TimeSettings
      end
      def updates
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Updates
      end
      def volume
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Volume
      end
      def volume_container
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VolumeContainer
      end
      def alert_scope
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertScope
      end
      def alert_source_type
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertSourceType
      end
      def alert_severity
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertSeverity
      end
      def alert_status
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertStatus
      end
      def alert_email_notification_status
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertEmailNotificationStatus
      end
      def encryption_algorithm
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::EncryptionAlgorithm
      end
      def backup_type
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupType
      end
      def backup_job_creation_type
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupJobCreationType
      end
      def time
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Time
      end
      def volume_type
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VolumeType
      end
      def scheduled_backup_status
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ScheduledBackupStatus
      end
      def backup_policy_creation_type
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupPolicyCreationType
      end
      def recurrence_type
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::RecurrenceType
      end
      def day_of_week
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DayOfWeek
      end
      def schedule_status
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ScheduleStatus
      end
      def kind
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Kind
      end
      def controller_power_state_action
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ControllerPowerStateAction
      end
      def controller_id
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ControllerId
      end
      def controller_status
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ControllerStatus
      end
      def device_configuration_status
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DeviceConfigurationStatus
      end
      def device_status
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DeviceStatus
      end
      def device_type
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DeviceType
      end
      def virtual_machine_api_type
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VirtualMachineApiType
      end
      def authorization_eligibility
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AuthorizationEligibility
      end
      def authorization_status
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AuthorizationStatus
      end
      def in_eligibility_category
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::InEligibilityCategory
      end
      def encryption_status
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::EncryptionStatus
      end
      def key_rollover_status
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::KeyRolloverStatus
      end
      def target_eligibility_status
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::TargetEligibilityStatus
      end
      def target_eligibility_result_code
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::TargetEligibilityResultCode
      end
      def feature_support_status
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FeatureSupportStatus
      end
      def hardware_component_status
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::HardwareComponentStatus
      end
      def job_status
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobStatus
      end
      def job_type
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobType
      end
      def manager_type
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ManagerType
      end
      def metric_unit
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricUnit
      end
      def metric_aggregation_type
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricAggregationType
      end
      def net_interface_id
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetInterfaceId
      end
      def net_interface_status
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetInterfaceStatus
      end
      def iscsiand_cloud_status
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ISCSIAndCloudStatus
      end
      def network_mode
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetworkMode
      end
      def authentication_type
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AuthenticationType
      end
      def remote_management_mode_configuration
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::RemoteManagementModeConfiguration
      end
      def ssl_status
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::SslStatus
      end
      def volume_status
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VolumeStatus
      end
      def operation_status
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::OperationStatus
      end
      def backup_status
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupStatus
      end
      def monitoring_status
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MonitoringStatus
      end
      def owner_ship_status
        Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::OwnerShipStatus
      end
    end
  end
end
