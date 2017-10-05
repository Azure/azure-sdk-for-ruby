# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_stor_simple8000_series'


module Azure::Profiles::StorSimple8000SeriesModule::Management::Profile_2017_06_01
  module StorSimple8000Series
    Operations = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Operations
    Managers = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Managers
    AccessControlRecords = Azure::ARM::StorSimple8000Series::Api_2017_06_01::AccessControlRecords
    Alerts = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Alerts
    BandwidthSettings = Azure::ARM::StorSimple8000Series::Api_2017_06_01::BandwidthSettings
    CloudAppliances = Azure::ARM::StorSimple8000Series::Api_2017_06_01::CloudAppliances
    Devices = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Devices
    DeviceSettings = Azure::ARM::StorSimple8000Series::Api_2017_06_01::DeviceSettings
    BackupPolicies = Azure::ARM::StorSimple8000Series::Api_2017_06_01::BackupPolicies
    BackupSchedules = Azure::ARM::StorSimple8000Series::Api_2017_06_01::BackupSchedules
    Backups = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Backups
    HardwareComponentGroups = Azure::ARM::StorSimple8000Series::Api_2017_06_01::HardwareComponentGroups
    Jobs = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Jobs
    VolumeContainers = Azure::ARM::StorSimple8000Series::Api_2017_06_01::VolumeContainers
    Volumes = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Volumes
    StorageAccountCredentials = Azure::ARM::StorSimple8000Series::Api_2017_06_01::StorageAccountCredentials

    module Models
      TargetEligibilityResult = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::TargetEligibilityResult
      FailoverTarget = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::FailoverTarget
      AccessControlRecordList = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AccessControlRecordList
      FailoverTargetsList = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::FailoverTargetsList
      AlertSource = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AlertSource
      Feature = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::Feature
      RemoteManagementSettings = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::RemoteManagementSettings
      FailoverRequest = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::FailoverRequest
      AlertList = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AlertList
      VolumeFailoverMetadata = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::VolumeFailoverMetadata
      AsymmetricEncryptedSecret = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AsymmetricEncryptedSecret
      VolumeContainerFailoverMetadata = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::VolumeContainerFailoverMetadata
      AvailableProviderOperation = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AvailableProviderOperation
      FailoverSetEligibilityResult = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::FailoverSetEligibilityResult
      BackupElement = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::BackupElement
      FailoverSet = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::FailoverSet
      BackupFilter = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::BackupFilter
      FailoverSetsList = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::FailoverSetsList
      VolumeContainerList = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::VolumeContainerList
      TargetEligibilityErrorMessage = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::TargetEligibilityErrorMessage
      ScheduleRecurrence = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::ScheduleRecurrence
      SymmetricEncryptedSecret = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::SymmetricEncryptedSecret
      NicIPv6 = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::NicIPv6
      Time = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::Time
      AcsConfiguration = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AcsConfiguration
      StorageAccountCredentialList = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::StorageAccountCredentialList
      AlertErrorDetails = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AlertErrorDetails
      BaseModel = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::BaseModel
      PublicKey = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::PublicKey
      ClearAlertRequest = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::ClearAlertRequest
      FeatureFilter = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::FeatureFilter
      CloudAppliance = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::CloudAppliance
      FeatureList = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::FeatureList
      SendTestAlertEmailRequest = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::SendTestAlertEmailRequest
      HardwareComponent = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::HardwareComponent
      CloudApplianceSettings = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::CloudApplianceSettings
      NetworkSettingsPatch = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::NetworkSettingsPatch
      NetworkInterfaceData0Settings = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::NetworkInterfaceData0Settings
      HardwareComponentGroupList = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::HardwareComponentGroupList
      JobErrorItem = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::JobErrorItem
      DeviceDetails = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::DeviceDetails
      JobErrorDetails = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::JobErrorDetails
      RemoteManagementSettingsPatch = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::RemoteManagementSettingsPatch
      JobStage = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::JobStage
      DevicePatch = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::DevicePatch
      WebproxySettings = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::WebproxySettings
      DNSSettings = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::DNSSettings
      JobFilter = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::JobFilter
      JobList = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::JobList
      AvailableProviderOperationList = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AvailableProviderOperationList
      Key = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::Key
      BackupList = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::BackupList
      ListFailoverTargetsRequest = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::ListFailoverTargetsRequest
      BackupScheduleList = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::BackupScheduleList
      ManagerIntrinsicSettings = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::ManagerIntrinsicSettings
      BandwidthSettingList = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::BandwidthSettingList
      ManagerSku = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::ManagerSku
      CloneRequest = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::CloneRequest
      NetworkAdapterList = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::NetworkAdapterList
      CloudApplianceConfigurationList = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::CloudApplianceConfigurationList
      NetworkAdapters = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::NetworkAdapters
      SecuritySettingsPatch = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::SecuritySettingsPatch
      ManagerList = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::ManagerList
      DeviceRolloverDetails = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::DeviceRolloverDetails
      ManagerPatch = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::ManagerPatch
      DimensionFilter = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::DimensionFilter
      MetricAvailablity = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::MetricAvailablity
      AvailableProviderOperationDisplay = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AvailableProviderOperationDisplay
      MetricData = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::MetricData
      BackupPolicyList = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::BackupPolicyList
      MetricName = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::MetricName
      ChapSettings = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::ChapSettings
      MetricDimension = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::MetricDimension
      SecondaryDNSSettings = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::SecondaryDNSSettings
      MetricDefinition = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::MetricDefinition
      DeviceList = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::DeviceList
      MetricDefinitionList = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::MetricDefinitionList
      VolumeList = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::VolumeList
      MetricNameFilter = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::MetricNameFilter
      VmImage = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::VmImage
      MetricFilter = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::MetricFilter
      AlertFilter = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AlertFilter
      Metrics = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::Metrics
      DataStatistics = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::DataStatistics
      MetricList = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::MetricList
      BandwidthSchedule = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::BandwidthSchedule
      NicIPv4 = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::NicIPv4
      AccessControlRecord = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AccessControlRecord
      Alert = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::Alert
      AlertSettings = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AlertSettings
      Backup = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::Backup
      BackupPolicy = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::BackupPolicy
      BackupSchedule = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::BackupSchedule
      BandwidthSetting = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::BandwidthSetting
      CloudApplianceConfiguration = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::CloudApplianceConfiguration
      ConfigureDeviceRequest = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::ConfigureDeviceRequest
      ControllerPowerStateChangeRequest = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::ControllerPowerStateChangeRequest
      Device = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::Device
      EncryptionSettings = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::EncryptionSettings
      HardwareComponentGroup = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::HardwareComponentGroup
      Job = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::Job
      Manager = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::Manager
      ManagerExtendedInfo = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::ManagerExtendedInfo
      NetworkSettings = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::NetworkSettings
      SecuritySettings = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::SecuritySettings
      StorageAccountCredential = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::StorageAccountCredential
      TimeSettings = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::TimeSettings
      Updates = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::Updates
      Volume = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::Volume
      VolumeContainer = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::VolumeContainer
      AlertScope = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AlertScope
      AlertSourceType = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AlertSourceType
      AlertSeverity = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AlertSeverity
      AlertStatus = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AlertStatus
      AlertEmailNotificationStatus = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AlertEmailNotificationStatus
      EncryptionAlgorithm = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::EncryptionAlgorithm
      BackupType = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::BackupType
      BackupJobCreationType = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::BackupJobCreationType
      VolumeType = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::VolumeType
      ScheduledBackupStatus = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::ScheduledBackupStatus
      BackupPolicyCreationType = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::BackupPolicyCreationType
      RecurrenceType = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::RecurrenceType
      DayOfWeek = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::DayOfWeek
      ScheduleStatus = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::ScheduleStatus
      Kind = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::Kind
      ControllerPowerStateAction = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::ControllerPowerStateAction
      ControllerId = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::ControllerId
      ControllerStatus = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::ControllerStatus
      DeviceConfigurationStatus = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::DeviceConfigurationStatus
      DeviceStatus = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::DeviceStatus
      DeviceType = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::DeviceType
      VirtualMachineApiType = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::VirtualMachineApiType
      AuthorizationEligibility = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AuthorizationEligibility
      AuthorizationStatus = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AuthorizationStatus
      InEligibilityCategory = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::InEligibilityCategory
      EncryptionStatus = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::EncryptionStatus
      KeyRolloverStatus = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::KeyRolloverStatus
      TargetEligibilityStatus = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::TargetEligibilityStatus
      TargetEligibilityResultCode = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::TargetEligibilityResultCode
      FeatureSupportStatus = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::FeatureSupportStatus
      HardwareComponentStatus = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::HardwareComponentStatus
      JobStatus = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::JobStatus
      JobType = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::JobType
      ManagerType = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::ManagerType
      MetricUnit = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::MetricUnit
      MetricAggregationType = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::MetricAggregationType
      NetInterfaceId = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::NetInterfaceId
      NetInterfaceStatus = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::NetInterfaceStatus
      ISCSIAndCloudStatus = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::ISCSIAndCloudStatus
      NetworkMode = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::NetworkMode
      AuthenticationType = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AuthenticationType
      RemoteManagementModeConfiguration = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::RemoteManagementModeConfiguration
      SslStatus = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::SslStatus
      VolumeStatus = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::VolumeStatus
      OperationStatus = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::OperationStatus
      BackupStatus = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::BackupStatus
      MonitoringStatus = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::MonitoringStatus
      OwnerShipStatus = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::OwnerShipStatus
    end

    #
    # StorSimple8000Series
    #
    class StorSimple8000SeriesClass
      attr_accessor :operations, :managers, :access_control_records, :alerts, :bandwidth_settings, :cloud_appliances, :devices, :device_settings, :backup_policies, :backup_schedules, :backups, :hardware_component_groups, :jobs, :volume_containers, :volumes, :storage_account_credentials, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::StorSimple8000Series::Api_2017_06_01::StorSimple8000SeriesManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.operations = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Operations.new(client)
        self.managers = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Managers.new(client)
        self.access_control_records = Azure::ARM::StorSimple8000Series::Api_2017_06_01::AccessControlRecords.new(client)
        self.alerts = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Alerts.new(client)
        self.bandwidth_settings = Azure::ARM::StorSimple8000Series::Api_2017_06_01::BandwidthSettings.new(client)
        self.cloud_appliances = Azure::ARM::StorSimple8000Series::Api_2017_06_01::CloudAppliances.new(client)
        self.devices = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Devices.new(client)
        self.device_settings = Azure::ARM::StorSimple8000Series::Api_2017_06_01::DeviceSettings.new(client)
        self.backup_policies = Azure::ARM::StorSimple8000Series::Api_2017_06_01::BackupPolicies.new(client)
        self.backup_schedules = Azure::ARM::StorSimple8000Series::Api_2017_06_01::BackupSchedules.new(client)
        self.backups = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Backups.new(client)
        self.hardware_component_groups = Azure::ARM::StorSimple8000Series::Api_2017_06_01::HardwareComponentGroups.new(client)
        self.jobs = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Jobs.new(client)
        self.volume_containers = Azure::ARM::StorSimple8000Series::Api_2017_06_01::VolumeContainers.new(client)
        self.volumes = Azure::ARM::StorSimple8000Series::Api_2017_06_01::Volumes.new(client)
        self.storage_account_credentials = Azure::ARM::StorSimple8000Series::Api_2017_06_01::StorageAccountCredentials.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2017-06-01'
            client = Azure::ARM::StorSimple8000Series::Api_2017_06_01::StorSimple8000SeriesManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def target_eligibility_result
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::TargetEligibilityResult
        end
        def failover_target
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::FailoverTarget
        end
        def access_control_record_list
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AccessControlRecordList
        end
        def failover_targets_list
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::FailoverTargetsList
        end
        def alert_source
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AlertSource
        end
        def feature
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::Feature
        end
        def remote_management_settings
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::RemoteManagementSettings
        end
        def failover_request
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::FailoverRequest
        end
        def alert_list
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AlertList
        end
        def volume_failover_metadata
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::VolumeFailoverMetadata
        end
        def asymmetric_encrypted_secret
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AsymmetricEncryptedSecret
        end
        def volume_container_failover_metadata
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::VolumeContainerFailoverMetadata
        end
        def available_provider_operation
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AvailableProviderOperation
        end
        def failover_set_eligibility_result
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::FailoverSetEligibilityResult
        end
        def backup_element
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::BackupElement
        end
        def failover_set
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::FailoverSet
        end
        def backup_filter
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::BackupFilter
        end
        def failover_sets_list
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::FailoverSetsList
        end
        def volume_container_list
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::VolumeContainerList
        end
        def target_eligibility_error_message
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::TargetEligibilityErrorMessage
        end
        def schedule_recurrence
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::ScheduleRecurrence
        end
        def symmetric_encrypted_secret
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::SymmetricEncryptedSecret
        end
        def nic_ipv6
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::NicIPv6
        end
        def time
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::Time
        end
        def acs_configuration
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AcsConfiguration
        end
        def storage_account_credential_list
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::StorageAccountCredentialList
        end
        def alert_error_details
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AlertErrorDetails
        end
        def base_model
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::BaseModel
        end
        def public_key
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::PublicKey
        end
        def clear_alert_request
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::ClearAlertRequest
        end
        def feature_filter
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::FeatureFilter
        end
        def cloud_appliance
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::CloudAppliance
        end
        def feature_list
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::FeatureList
        end
        def send_test_alert_email_request
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::SendTestAlertEmailRequest
        end
        def hardware_component
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::HardwareComponent
        end
        def cloud_appliance_settings
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::CloudApplianceSettings
        end
        def network_settings_patch
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::NetworkSettingsPatch
        end
        def network_interface_data0_settings
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::NetworkInterfaceData0Settings
        end
        def hardware_component_group_list
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::HardwareComponentGroupList
        end
        def job_error_item
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::JobErrorItem
        end
        def device_details
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::DeviceDetails
        end
        def job_error_details
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::JobErrorDetails
        end
        def remote_management_settings_patch
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::RemoteManagementSettingsPatch
        end
        def job_stage
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::JobStage
        end
        def device_patch
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::DevicePatch
        end
        def webproxy_settings
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::WebproxySettings
        end
        def dnssettings
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::DNSSettings
        end
        def job_filter
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::JobFilter
        end
        def job_list
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::JobList
        end
        def available_provider_operation_list
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AvailableProviderOperationList
        end
        def key
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::Key
        end
        def backup_list
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::BackupList
        end
        def list_failover_targets_request
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::ListFailoverTargetsRequest
        end
        def backup_schedule_list
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::BackupScheduleList
        end
        def manager_intrinsic_settings
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::ManagerIntrinsicSettings
        end
        def bandwidth_setting_list
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::BandwidthSettingList
        end
        def manager_sku
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::ManagerSku
        end
        def clone_request
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::CloneRequest
        end
        def network_adapter_list
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::NetworkAdapterList
        end
        def cloud_appliance_configuration_list
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::CloudApplianceConfigurationList
        end
        def network_adapters
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::NetworkAdapters
        end
        def security_settings_patch
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::SecuritySettingsPatch
        end
        def manager_list
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::ManagerList
        end
        def device_rollover_details
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::DeviceRolloverDetails
        end
        def manager_patch
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::ManagerPatch
        end
        def dimension_filter
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::DimensionFilter
        end
        def metric_availablity
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::MetricAvailablity
        end
        def available_provider_operation_display
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AvailableProviderOperationDisplay
        end
        def metric_data
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::MetricData
        end
        def backup_policy_list
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::BackupPolicyList
        end
        def metric_name
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::MetricName
        end
        def chap_settings
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::ChapSettings
        end
        def metric_dimension
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::MetricDimension
        end
        def secondary_dnssettings
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::SecondaryDNSSettings
        end
        def metric_definition
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::MetricDefinition
        end
        def device_list
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::DeviceList
        end
        def metric_definition_list
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::MetricDefinitionList
        end
        def volume_list
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::VolumeList
        end
        def metric_name_filter
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::MetricNameFilter
        end
        def vm_image
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::VmImage
        end
        def metric_filter
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::MetricFilter
        end
        def alert_filter
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AlertFilter
        end
        def metrics
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::Metrics
        end
        def data_statistics
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::DataStatistics
        end
        def metric_list
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::MetricList
        end
        def bandwidth_schedule
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::BandwidthSchedule
        end
        def nic_ipv4
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::NicIPv4
        end
        def access_control_record
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AccessControlRecord
        end
        def alert
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::Alert
        end
        def alert_settings
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AlertSettings
        end
        def backup
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::Backup
        end
        def backup_policy
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::BackupPolicy
        end
        def backup_schedule
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::BackupSchedule
        end
        def bandwidth_setting
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::BandwidthSetting
        end
        def cloud_appliance_configuration
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::CloudApplianceConfiguration
        end
        def configure_device_request
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::ConfigureDeviceRequest
        end
        def controller_power_state_change_request
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::ControllerPowerStateChangeRequest
        end
        def device
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::Device
        end
        def encryption_settings
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::EncryptionSettings
        end
        def hardware_component_group
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::HardwareComponentGroup
        end
        def job
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::Job
        end
        def manager
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::Manager
        end
        def manager_extended_info
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::ManagerExtendedInfo
        end
        def network_settings
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::NetworkSettings
        end
        def security_settings
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::SecuritySettings
        end
        def storage_account_credential
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::StorageAccountCredential
        end
        def time_settings
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::TimeSettings
        end
        def updates
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::Updates
        end
        def volume
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::Volume
        end
        def volume_container
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::VolumeContainer
        end
        def alert_scope
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AlertScope
        end
        def alert_source_type
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AlertSourceType
        end
        def alert_severity
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AlertSeverity
        end
        def alert_status
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AlertStatus
        end
        def alert_email_notification_status
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AlertEmailNotificationStatus
        end
        def encryption_algorithm
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::EncryptionAlgorithm
        end
        def backup_type
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::BackupType
        end
        def backup_job_creation_type
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::BackupJobCreationType
        end
        def volume_type
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::VolumeType
        end
        def scheduled_backup_status
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::ScheduledBackupStatus
        end
        def backup_policy_creation_type
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::BackupPolicyCreationType
        end
        def recurrence_type
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::RecurrenceType
        end
        def day_of_week
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::DayOfWeek
        end
        def schedule_status
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::ScheduleStatus
        end
        def kind
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::Kind
        end
        def controller_power_state_action
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::ControllerPowerStateAction
        end
        def controller_id
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::ControllerId
        end
        def controller_status
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::ControllerStatus
        end
        def device_configuration_status
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::DeviceConfigurationStatus
        end
        def device_status
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::DeviceStatus
        end
        def device_type
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::DeviceType
        end
        def virtual_machine_api_type
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::VirtualMachineApiType
        end
        def authorization_eligibility
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AuthorizationEligibility
        end
        def authorization_status
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AuthorizationStatus
        end
        def in_eligibility_category
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::InEligibilityCategory
        end
        def encryption_status
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::EncryptionStatus
        end
        def key_rollover_status
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::KeyRolloverStatus
        end
        def target_eligibility_status
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::TargetEligibilityStatus
        end
        def target_eligibility_result_code
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::TargetEligibilityResultCode
        end
        def feature_support_status
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::FeatureSupportStatus
        end
        def hardware_component_status
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::HardwareComponentStatus
        end
        def job_status
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::JobStatus
        end
        def job_type
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::JobType
        end
        def manager_type
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::ManagerType
        end
        def metric_unit
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::MetricUnit
        end
        def metric_aggregation_type
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::MetricAggregationType
        end
        def net_interface_id
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::NetInterfaceId
        end
        def net_interface_status
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::NetInterfaceStatus
        end
        def iscsiand_cloud_status
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::ISCSIAndCloudStatus
        end
        def network_mode
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::NetworkMode
        end
        def authentication_type
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::AuthenticationType
        end
        def remote_management_mode_configuration
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::RemoteManagementModeConfiguration
        end
        def ssl_status
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::SslStatus
        end
        def volume_status
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::VolumeStatus
        end
        def operation_status
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::OperationStatus
        end
        def backup_status
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::BackupStatus
        end
        def monitoring_status
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::MonitoringStatus
        end
        def owner_ship_status
          Azure::ARM::StorSimple8000Series::Api_2017_06_01::Models::OwnerShipStatus
        end
      end
    end
  end
end
