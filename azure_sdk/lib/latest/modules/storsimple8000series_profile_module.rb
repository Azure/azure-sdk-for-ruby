# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_stor_simple8000_series'

module Azure::Profiles::Latest
  module StorSimple8000Series
    module Mgmt
      Jobs = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Jobs
      Devices = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Devices
      Operations = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Operations
      Managers = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Managers
      AccessControlRecords = Azure::StorSimple8000Series::Mgmt::V2017_06_01::AccessControlRecords
      Alerts = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Alerts
      BandwidthSettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::BandwidthSettings
      BackupPolicies = Azure::StorSimple8000Series::Mgmt::V2017_06_01::BackupPolicies
      DeviceSettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::DeviceSettings
      BackupSchedules = Azure::StorSimple8000Series::Mgmt::V2017_06_01::BackupSchedules
      CloudAppliances = Azure::StorSimple8000Series::Mgmt::V2017_06_01::CloudAppliances
      HardwareComponentGroups = Azure::StorSimple8000Series::Mgmt::V2017_06_01::HardwareComponentGroups
      VolumeContainers = Azure::StorSimple8000Series::Mgmt::V2017_06_01::VolumeContainers
      Volumes = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Volumes
      StorageAccountCredentials = Azure::StorSimple8000Series::Mgmt::V2017_06_01::StorageAccountCredentials
      Backups = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Backups

      module Models
        MetricNameFilter = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricNameFilter
        VmImage = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VmImage
        MetricFilter = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricFilter
        AlertFilter = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertFilter
        Metrics = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Metrics
        DataStatistics = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DataStatistics
        MetricList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricList
        BandwidthSchedule = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BandwidthSchedule
        NicIPv4 = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NicIPv4
        ManagerPatch = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ManagerPatch
        AccessControlRecord = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AccessControlRecord
        SecondaryDNSSettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::SecondaryDNSSettings
        AvailableProviderOperationDisplay = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AvailableProviderOperationDisplay
        AlertSettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertSettings
        Backup = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Backup
        BackupPolicy = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupPolicy
        BackupSchedule = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupSchedule
        Alert = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Alert
        CloudApplianceConfiguration = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::CloudApplianceConfiguration
        ConfigureDeviceRequest = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ConfigureDeviceRequest
        BandwidthSetting = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BandwidthSetting
        HardwareComponentGroup = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::HardwareComponentGroup
        Manager = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Manager
        ControllerPowerStateChangeRequest = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ControllerPowerStateChangeRequest
        NetworkSettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetworkSettings
        SecuritySettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::SecuritySettings
        ManagerExtendedInfo = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ManagerExtendedInfo
        TimeSettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::TimeSettings
        Updates = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Updates
        StorageAccountCredential = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::StorageAccountCredential
        AlertScope = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertScope
        AlertSourceType = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertSourceType
        EncryptionSettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::EncryptionSettings
        AlertStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertStatus
        AlertEmailNotificationStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertEmailNotificationStatus
        AlertSeverity = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertSeverity
        VolumeContainer = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VolumeContainer
        ScheduledBackupStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ScheduledBackupStatus
        BackupJobCreationType = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupJobCreationType
        VolumeType = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VolumeType
        ScheduleStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ScheduleStatus
        BackupPolicyCreationType = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupPolicyCreationType
        RecurrenceType = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::RecurrenceType
        EncryptionAlgorithm = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::EncryptionAlgorithm
        ControllerPowerStateAction = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ControllerPowerStateAction
        MetricDefinition = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricDefinition
        ControllerStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ControllerStatus
        DeviceConfigurationStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DeviceConfigurationStatus
        DeviceStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DeviceStatus
        DayOfWeek = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DayOfWeek
        VirtualMachineApiType = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VirtualMachineApiType
        AuthorizationEligibility = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AuthorizationEligibility
        AuthorizationStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AuthorizationStatus
        DeviceType = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DeviceType
        ControllerId = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ControllerId
        KeyRolloverStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::KeyRolloverStatus
        TargetEligibilityStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::TargetEligibilityStatus
        InEligibilityCategory = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::InEligibilityCategory
        EncryptionStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::EncryptionStatus
        HardwareComponentStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::HardwareComponentStatus
        ManagerType = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ManagerType
        TargetEligibilityResultCode = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::TargetEligibilityResultCode
        FeatureSupportStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FeatureSupportStatus
        NetInterfaceId = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetInterfaceId
        JobStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobStatus
        MetricUnit = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricUnit
        MetricAggregationType = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricAggregationType
        Job = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Job
        NetInterfaceStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetInterfaceStatus
        ISCSIAndCloudStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ISCSIAndCloudStatus
        NetworkMode = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetworkMode
        Volume = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Volume
        SslStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::SslStatus
        VolumeStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VolumeStatus
        JobErrorDetails = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobErrorDetails
        OwnerShipStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::OwnerShipStatus
        RemoteManagementModeConfiguration = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::RemoteManagementModeConfiguration
        JobType = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobType
        OperationStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::OperationStatus
        BackupStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupStatus
        MonitoringStatus = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MonitoringStatus
        Resource = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Resource
        Kind = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Kind
        BackupType = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupType
        AuthenticationType = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AuthenticationType
        Device = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Device
        TargetEligibilityResult = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::TargetEligibilityResult
        FailoverTarget = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FailoverTarget
        AccessControlRecordList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AccessControlRecordList
        FailoverTargetsList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FailoverTargetsList
        AlertSource = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertSource
        Feature = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Feature
        RemoteManagementSettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::RemoteManagementSettings
        MetricName = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricName
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
        Time = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Time
        PublicKey = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::PublicKey
        BaseModel = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BaseModel
        FeatureFilter = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FeatureFilter
        ClearAlertRequest = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ClearAlertRequest
        FeatureList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FeatureList
        CloudAppliance = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::CloudAppliance
        HardwareComponent = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::HardwareComponent
        SendTestAlertEmailRequest = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::SendTestAlertEmailRequest
        NetworkSettingsPatch = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetworkSettingsPatch
        CloudApplianceSettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::CloudApplianceSettings
        HardwareComponentGroupList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::HardwareComponentGroupList
        NetworkInterfaceData0Settings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetworkInterfaceData0Settings
        RemoteManagementSettingsPatch = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::RemoteManagementSettingsPatch
        JobErrorItem = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobErrorItem
        DeviceDetails = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DeviceDetails
        DevicePatch = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DevicePatch
        JobStage = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobStage
        DNSSettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DNSSettings
        WebproxySettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::WebproxySettings
        JobList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobList
        JobFilter = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobFilter
        BackupList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupList
        AvailableProviderOperationList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AvailableProviderOperationList
        BackupScheduleList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupScheduleList
        Key = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Key
        ManagerSku = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ManagerSku
        ManagerIntrinsicSettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ManagerIntrinsicSettings
        ListFailoverTargetsRequest = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ListFailoverTargetsRequest
        CloudApplianceConfigurationList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::CloudApplianceConfigurationList
        CloneRequest = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::CloneRequest
        BandwidthSettingList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BandwidthSettingList
        ManagerList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ManagerList
        NetworkAdapters = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetworkAdapters
        NetworkAdapterList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetworkAdapterList
        DimensionFilter = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DimensionFilter
        DeviceRolloverDetails = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DeviceRolloverDetails
        SecuritySettingsPatch = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::SecuritySettingsPatch
        MetricData = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricData
        MetricAvailablity = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricAvailablity
        ChapSettings = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ChapSettings
        MetricDimension = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricDimension
        BackupPolicyList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupPolicyList
        DeviceList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DeviceList
        MetricDefinitionList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricDefinitionList
        VolumeList = Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VolumeList
      end

      class StorSimple8000SeriesManagementClass
        attr_reader :jobs, :devices, :operations, :managers, :access_control_records, :alerts, :bandwidth_settings, :backup_policies, :device_settings, :backup_schedules, :cloud_appliances, :hardware_component_groups, :volume_containers, :volumes, :storage_account_credentials, :backups, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::StorSimple8000Series::Mgmt::V2017_06_01::StorSimple8000SeriesManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @jobs = @client_0.jobs
          @devices = @client_0.devices
          @operations = @client_0.operations
          @managers = @client_0.managers
          @access_control_records = @client_0.access_control_records
          @alerts = @client_0.alerts
          @bandwidth_settings = @client_0.bandwidth_settings
          @backup_policies = @client_0.backup_policies
          @device_settings = @client_0.device_settings
          @backup_schedules = @client_0.backup_schedules
          @cloud_appliances = @client_0.cloud_appliances
          @hardware_component_groups = @client_0.hardware_component_groups
          @volume_containers = @client_0.volume_containers
          @volumes = @client_0.volumes
          @storage_account_credentials = @client_0.storage_account_credentials
          @backups = @client_0.backups

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/StorSimple8000Series/Mgmt"
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
          def manager_patch
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ManagerPatch
          end
          def access_control_record
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AccessControlRecord
          end
          def secondary_dnssettings
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::SecondaryDNSSettings
          end
          def available_provider_operation_display
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AvailableProviderOperationDisplay
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
          def alert
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Alert
          end
          def cloud_appliance_configuration
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::CloudApplianceConfiguration
          end
          def configure_device_request
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ConfigureDeviceRequest
          end
          def bandwidth_setting
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BandwidthSetting
          end
          def hardware_component_group
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::HardwareComponentGroup
          end
          def manager
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Manager
          end
          def controller_power_state_change_request
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ControllerPowerStateChangeRequest
          end
          def network_settings
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetworkSettings
          end
          def security_settings
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::SecuritySettings
          end
          def manager_extended_info
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ManagerExtendedInfo
          end
          def time_settings
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::TimeSettings
          end
          def updates
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Updates
          end
          def storage_account_credential
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::StorageAccountCredential
          end
          def alert_scope
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertScope
          end
          def alert_source_type
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertSourceType
          end
          def encryption_settings
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::EncryptionSettings
          end
          def alert_status
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertStatus
          end
          def alert_email_notification_status
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertEmailNotificationStatus
          end
          def alert_severity
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AlertSeverity
          end
          def volume_container
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VolumeContainer
          end
          def scheduled_backup_status
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ScheduledBackupStatus
          end
          def backup_job_creation_type
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupJobCreationType
          end
          def volume_type
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VolumeType
          end
          def schedule_status
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ScheduleStatus
          end
          def backup_policy_creation_type
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupPolicyCreationType
          end
          def recurrence_type
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::RecurrenceType
          end
          def encryption_algorithm
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::EncryptionAlgorithm
          end
          def controller_power_state_action
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ControllerPowerStateAction
          end
          def metric_definition
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricDefinition
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
          def day_of_week
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DayOfWeek
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
          def device_type
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DeviceType
          end
          def controller_id
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ControllerId
          end
          def key_rollover_status
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::KeyRolloverStatus
          end
          def target_eligibility_status
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::TargetEligibilityStatus
          end
          def in_eligibility_category
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::InEligibilityCategory
          end
          def encryption_status
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::EncryptionStatus
          end
          def hardware_component_status
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::HardwareComponentStatus
          end
          def manager_type
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ManagerType
          end
          def target_eligibility_result_code
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::TargetEligibilityResultCode
          end
          def feature_support_status
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FeatureSupportStatus
          end
          def net_interface_id
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetInterfaceId
          end
          def job_status
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobStatus
          end
          def metric_unit
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricUnit
          end
          def metric_aggregation_type
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricAggregationType
          end
          def job
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Job
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
          def volume
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Volume
          end
          def ssl_status
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::SslStatus
          end
          def volume_status
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::VolumeStatus
          end
          def job_error_details
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobErrorDetails
          end
          def owner_ship_status
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::OwnerShipStatus
          end
          def remote_management_mode_configuration
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::RemoteManagementModeConfiguration
          end
          def job_type
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobType
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
          def resource
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Resource
          end
          def kind
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Kind
          end
          def backup_type
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupType
          end
          def authentication_type
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AuthenticationType
          end
          def device
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Device
          end
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
          def metric_name
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricName
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
          def time
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Time
          end
          def public_key
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::PublicKey
          end
          def base_model
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BaseModel
          end
          def feature_filter
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FeatureFilter
          end
          def clear_alert_request
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ClearAlertRequest
          end
          def feature_list
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::FeatureList
          end
          def cloud_appliance
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::CloudAppliance
          end
          def hardware_component
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::HardwareComponent
          end
          def send_test_alert_email_request
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::SendTestAlertEmailRequest
          end
          def network_settings_patch
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetworkSettingsPatch
          end
          def cloud_appliance_settings
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::CloudApplianceSettings
          end
          def hardware_component_group_list
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::HardwareComponentGroupList
          end
          def network_interface_data0_settings
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetworkInterfaceData0Settings
          end
          def remote_management_settings_patch
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::RemoteManagementSettingsPatch
          end
          def job_error_item
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobErrorItem
          end
          def device_details
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DeviceDetails
          end
          def device_patch
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DevicePatch
          end
          def job_stage
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobStage
          end
          def dnssettings
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DNSSettings
          end
          def webproxy_settings
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::WebproxySettings
          end
          def job_list
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobList
          end
          def job_filter
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::JobFilter
          end
          def backup_list
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupList
          end
          def available_provider_operation_list
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::AvailableProviderOperationList
          end
          def backup_schedule_list
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupScheduleList
          end
          def key
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::Key
          end
          def manager_sku
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ManagerSku
          end
          def manager_intrinsic_settings
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ManagerIntrinsicSettings
          end
          def list_failover_targets_request
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ListFailoverTargetsRequest
          end
          def cloud_appliance_configuration_list
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::CloudApplianceConfigurationList
          end
          def clone_request
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::CloneRequest
          end
          def bandwidth_setting_list
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BandwidthSettingList
          end
          def manager_list
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ManagerList
          end
          def network_adapters
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetworkAdapters
          end
          def network_adapter_list
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::NetworkAdapterList
          end
          def dimension_filter
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DimensionFilter
          end
          def device_rollover_details
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::DeviceRolloverDetails
          end
          def security_settings_patch
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::SecuritySettingsPatch
          end
          def metric_data
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricData
          end
          def metric_availablity
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricAvailablity
          end
          def chap_settings
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::ChapSettings
          end
          def metric_dimension
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::MetricDimension
          end
          def backup_policy_list
            Azure::StorSimple8000Series::Mgmt::V2017_06_01::Models::BackupPolicyList
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
        end
      end
    end
  end
end
