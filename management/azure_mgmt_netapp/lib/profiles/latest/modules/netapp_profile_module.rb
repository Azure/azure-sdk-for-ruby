# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_netapp'

module Azure::NetApp::Profiles::Latest
  module Mgmt
    Operations = Azure::NetApp::Mgmt::V2020_06_01::Operations
    NetAppResource = Azure::NetApp::Mgmt::V2020_06_01::NetAppResource
    Accounts = Azure::NetApp::Mgmt::V2020_06_01::Accounts
    Pools = Azure::NetApp::Mgmt::V2020_06_01::Pools
    Volumes = Azure::NetApp::Mgmt::V2020_06_01::Volumes
    Snapshots = Azure::NetApp::Mgmt::V2020_06_01::Snapshots
    SnapshotPolicies = Azure::NetApp::Mgmt::V2020_06_01::SnapshotPolicies
    AccountBackups = Azure::NetApp::Mgmt::V2020_06_01::AccountBackups
    Backups = Azure::NetApp::Mgmt::V2020_06_01::Backups
    BackupPolicies = Azure::NetApp::Mgmt::V2020_06_01::BackupPolicies
    Vaults = Azure::NetApp::Mgmt::V2020_06_01::Vaults

    module Models
      VolumePatchPropertiesDataProtection = Azure::NetApp::Mgmt::V2020_06_01::Models::VolumePatchPropertiesDataProtection
      VolumePatch = Azure::NetApp::Mgmt::V2020_06_01::Models::VolumePatch
      Dimension = Azure::NetApp::Mgmt::V2020_06_01::Models::Dimension
      MountTarget = Azure::NetApp::Mgmt::V2020_06_01::Models::MountTarget
      ServiceSpecification = Azure::NetApp::Mgmt::V2020_06_01::Models::ServiceSpecification
      Snapshot = Azure::NetApp::Mgmt::V2020_06_01::Models::Snapshot
      OperationListResult = Azure::NetApp::Mgmt::V2020_06_01::Models::OperationListResult
      SnapshotsList = Azure::NetApp::Mgmt::V2020_06_01::Models::SnapshotsList
      ResourceNameAvailabilityRequest = Azure::NetApp::Mgmt::V2020_06_01::Models::ResourceNameAvailabilityRequest
      SnapshotPolicy = Azure::NetApp::Mgmt::V2020_06_01::Models::SnapshotPolicy
      ActiveDirectory = Azure::NetApp::Mgmt::V2020_06_01::Models::ActiveDirectory
      SnapshotPoliciesList = Azure::NetApp::Mgmt::V2020_06_01::Models::SnapshotPoliciesList
      NetAppAccountList = Azure::NetApp::Mgmt::V2020_06_01::Models::NetAppAccountList
      SnapshotPolicyDetails = Azure::NetApp::Mgmt::V2020_06_01::Models::SnapshotPolicyDetails
      CapacityPool = Azure::NetApp::Mgmt::V2020_06_01::Models::CapacityPool
      SnapshotPolicyPatch = Azure::NetApp::Mgmt::V2020_06_01::Models::SnapshotPolicyPatch
      CapacityPoolPatch = Azure::NetApp::Mgmt::V2020_06_01::Models::CapacityPoolPatch
      SnapshotPolicyVolumeList = Azure::NetApp::Mgmt::V2020_06_01::Models::SnapshotPolicyVolumeList
      VolumePropertiesExportPolicy = Azure::NetApp::Mgmt::V2020_06_01::Models::VolumePropertiesExportPolicy
      HourlySchedule = Azure::NetApp::Mgmt::V2020_06_01::Models::HourlySchedule
      VolumeBackupProperties = Azure::NetApp::Mgmt::V2020_06_01::Models::VolumeBackupProperties
      DailySchedule = Azure::NetApp::Mgmt::V2020_06_01::Models::DailySchedule
      VolumeSnapshotProperties = Azure::NetApp::Mgmt::V2020_06_01::Models::VolumeSnapshotProperties
      WeeklySchedule = Azure::NetApp::Mgmt::V2020_06_01::Models::WeeklySchedule
      Volume = Azure::NetApp::Mgmt::V2020_06_01::Models::Volume
      MonthlySchedule = Azure::NetApp::Mgmt::V2020_06_01::Models::MonthlySchedule
      ReplicationStatus = Azure::NetApp::Mgmt::V2020_06_01::Models::ReplicationStatus
      VolumeRevert = Azure::NetApp::Mgmt::V2020_06_01::Models::VolumeRevert
      OperationDisplay = Azure::NetApp::Mgmt::V2020_06_01::Models::OperationDisplay
      AuthorizeRequest = Azure::NetApp::Mgmt::V2020_06_01::Models::AuthorizeRequest
      Operation = Azure::NetApp::Mgmt::V2020_06_01::Models::Operation
      BreakReplicationRequest = Azure::NetApp::Mgmt::V2020_06_01::Models::BreakReplicationRequest
      QuotaAvailabilityRequest = Azure::NetApp::Mgmt::V2020_06_01::Models::QuotaAvailabilityRequest
      PoolChangeRequest = Azure::NetApp::Mgmt::V2020_06_01::Models::PoolChangeRequest
      NetAppAccountPatch = Azure::NetApp::Mgmt::V2020_06_01::Models::NetAppAccountPatch
      Backup = Azure::NetApp::Mgmt::V2020_06_01::Models::Backup
      ExportPolicyRule = Azure::NetApp::Mgmt::V2020_06_01::Models::ExportPolicyRule
      BackupsList = Azure::NetApp::Mgmt::V2020_06_01::Models::BackupsList
      ReplicationObject = Azure::NetApp::Mgmt::V2020_06_01::Models::ReplicationObject
      BackupPatch = Azure::NetApp::Mgmt::V2020_06_01::Models::BackupPatch
      VolumeList = Azure::NetApp::Mgmt::V2020_06_01::Models::VolumeList
      VolumeBackups = Azure::NetApp::Mgmt::V2020_06_01::Models::VolumeBackups
      MetricSpecification = Azure::NetApp::Mgmt::V2020_06_01::Models::MetricSpecification
      BackupPolicy = Azure::NetApp::Mgmt::V2020_06_01::Models::BackupPolicy
      NetAppAccount = Azure::NetApp::Mgmt::V2020_06_01::Models::NetAppAccount
      BackupPoliciesList = Azure::NetApp::Mgmt::V2020_06_01::Models::BackupPoliciesList
      MountTargetProperties = Azure::NetApp::Mgmt::V2020_06_01::Models::MountTargetProperties
      BackupPolicyDetails = Azure::NetApp::Mgmt::V2020_06_01::Models::BackupPolicyDetails
      VolumePatchPropertiesExportPolicy = Azure::NetApp::Mgmt::V2020_06_01::Models::VolumePatchPropertiesExportPolicy
      BackupPolicyPatch = Azure::NetApp::Mgmt::V2020_06_01::Models::BackupPolicyPatch
      CapacityPoolList = Azure::NetApp::Mgmt::V2020_06_01::Models::CapacityPoolList
      Vault = Azure::NetApp::Mgmt::V2020_06_01::Models::Vault
      CheckAvailabilityResponse = Azure::NetApp::Mgmt::V2020_06_01::Models::CheckAvailabilityResponse
      VaultList = Azure::NetApp::Mgmt::V2020_06_01::Models::VaultList
      VolumePropertiesDataProtection = Azure::NetApp::Mgmt::V2020_06_01::Models::VolumePropertiesDataProtection
      InAvailabilityReasonType = Azure::NetApp::Mgmt::V2020_06_01::Models::InAvailabilityReasonType
      CheckNameResourceTypes = Azure::NetApp::Mgmt::V2020_06_01::Models::CheckNameResourceTypes
      CheckQuotaNameResourceTypes = Azure::NetApp::Mgmt::V2020_06_01::Models::CheckQuotaNameResourceTypes
      ActiveDirectoryStatus = Azure::NetApp::Mgmt::V2020_06_01::Models::ActiveDirectoryStatus
      ServiceLevel = Azure::NetApp::Mgmt::V2020_06_01::Models::ServiceLevel
      QosType = Azure::NetApp::Mgmt::V2020_06_01::Models::QosType
      EndpointType = Azure::NetApp::Mgmt::V2020_06_01::Models::EndpointType
      ReplicationSchedule = Azure::NetApp::Mgmt::V2020_06_01::Models::ReplicationSchedule
      SecurityStyle = Azure::NetApp::Mgmt::V2020_06_01::Models::SecurityStyle
      RelationshipStatus = Azure::NetApp::Mgmt::V2020_06_01::Models::RelationshipStatus
      MirrorState = Azure::NetApp::Mgmt::V2020_06_01::Models::MirrorState
    end

    #
    # NetAppManagementClass
    #
    class NetAppManagementClass
      attr_reader :operations, :net_app_resource, :accounts, :pools, :volumes, :snapshots, :snapshot_policies, :account_backups, :backups, :backup_policies, :vaults, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::NetApp::Mgmt::V2020_06_01::AzureNetAppFilesManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @operations = @client_0.operations
        @net_app_resource = @client_0.net_app_resource
        @accounts = @client_0.accounts
        @pools = @client_0.pools
        @volumes = @client_0.volumes
        @snapshots = @client_0.snapshots
        @snapshot_policies = @client_0.snapshot_policies
        @account_backups = @client_0.account_backups
        @backups = @client_0.backups
        @backup_policies = @client_0.backup_policies
        @vaults = @client_0.vaults

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/NetApp/Mgmt'
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
      def volume_patch_properties_data_protection
        Azure::NetApp::Mgmt::V2020_06_01::Models::VolumePatchPropertiesDataProtection
      end
      def volume_patch
        Azure::NetApp::Mgmt::V2020_06_01::Models::VolumePatch
      end
      def dimension
        Azure::NetApp::Mgmt::V2020_06_01::Models::Dimension
      end
      def mount_target
        Azure::NetApp::Mgmt::V2020_06_01::Models::MountTarget
      end
      def service_specification
        Azure::NetApp::Mgmt::V2020_06_01::Models::ServiceSpecification
      end
      def snapshot
        Azure::NetApp::Mgmt::V2020_06_01::Models::Snapshot
      end
      def operation_list_result
        Azure::NetApp::Mgmt::V2020_06_01::Models::OperationListResult
      end
      def snapshots_list
        Azure::NetApp::Mgmt::V2020_06_01::Models::SnapshotsList
      end
      def resource_name_availability_request
        Azure::NetApp::Mgmt::V2020_06_01::Models::ResourceNameAvailabilityRequest
      end
      def snapshot_policy
        Azure::NetApp::Mgmt::V2020_06_01::Models::SnapshotPolicy
      end
      def active_directory
        Azure::NetApp::Mgmt::V2020_06_01::Models::ActiveDirectory
      end
      def snapshot_policies_list
        Azure::NetApp::Mgmt::V2020_06_01::Models::SnapshotPoliciesList
      end
      def net_app_account_list
        Azure::NetApp::Mgmt::V2020_06_01::Models::NetAppAccountList
      end
      def snapshot_policy_details
        Azure::NetApp::Mgmt::V2020_06_01::Models::SnapshotPolicyDetails
      end
      def capacity_pool
        Azure::NetApp::Mgmt::V2020_06_01::Models::CapacityPool
      end
      def snapshot_policy_patch
        Azure::NetApp::Mgmt::V2020_06_01::Models::SnapshotPolicyPatch
      end
      def capacity_pool_patch
        Azure::NetApp::Mgmt::V2020_06_01::Models::CapacityPoolPatch
      end
      def snapshot_policy_volume_list
        Azure::NetApp::Mgmt::V2020_06_01::Models::SnapshotPolicyVolumeList
      end
      def volume_properties_export_policy
        Azure::NetApp::Mgmt::V2020_06_01::Models::VolumePropertiesExportPolicy
      end
      def hourly_schedule
        Azure::NetApp::Mgmt::V2020_06_01::Models::HourlySchedule
      end
      def volume_backup_properties
        Azure::NetApp::Mgmt::V2020_06_01::Models::VolumeBackupProperties
      end
      def daily_schedule
        Azure::NetApp::Mgmt::V2020_06_01::Models::DailySchedule
      end
      def volume_snapshot_properties
        Azure::NetApp::Mgmt::V2020_06_01::Models::VolumeSnapshotProperties
      end
      def weekly_schedule
        Azure::NetApp::Mgmt::V2020_06_01::Models::WeeklySchedule
      end
      def volume
        Azure::NetApp::Mgmt::V2020_06_01::Models::Volume
      end
      def monthly_schedule
        Azure::NetApp::Mgmt::V2020_06_01::Models::MonthlySchedule
      end
      def replication_status
        Azure::NetApp::Mgmt::V2020_06_01::Models::ReplicationStatus
      end
      def volume_revert
        Azure::NetApp::Mgmt::V2020_06_01::Models::VolumeRevert
      end
      def operation_display
        Azure::NetApp::Mgmt::V2020_06_01::Models::OperationDisplay
      end
      def authorize_request
        Azure::NetApp::Mgmt::V2020_06_01::Models::AuthorizeRequest
      end
      def operation
        Azure::NetApp::Mgmt::V2020_06_01::Models::Operation
      end
      def break_replication_request
        Azure::NetApp::Mgmt::V2020_06_01::Models::BreakReplicationRequest
      end
      def quota_availability_request
        Azure::NetApp::Mgmt::V2020_06_01::Models::QuotaAvailabilityRequest
      end
      def pool_change_request
        Azure::NetApp::Mgmt::V2020_06_01::Models::PoolChangeRequest
      end
      def net_app_account_patch
        Azure::NetApp::Mgmt::V2020_06_01::Models::NetAppAccountPatch
      end
      def backup
        Azure::NetApp::Mgmt::V2020_06_01::Models::Backup
      end
      def export_policy_rule
        Azure::NetApp::Mgmt::V2020_06_01::Models::ExportPolicyRule
      end
      def backups_list
        Azure::NetApp::Mgmt::V2020_06_01::Models::BackupsList
      end
      def replication_object
        Azure::NetApp::Mgmt::V2020_06_01::Models::ReplicationObject
      end
      def backup_patch
        Azure::NetApp::Mgmt::V2020_06_01::Models::BackupPatch
      end
      def volume_list
        Azure::NetApp::Mgmt::V2020_06_01::Models::VolumeList
      end
      def volume_backups
        Azure::NetApp::Mgmt::V2020_06_01::Models::VolumeBackups
      end
      def metric_specification
        Azure::NetApp::Mgmt::V2020_06_01::Models::MetricSpecification
      end
      def backup_policy
        Azure::NetApp::Mgmt::V2020_06_01::Models::BackupPolicy
      end
      def net_app_account
        Azure::NetApp::Mgmt::V2020_06_01::Models::NetAppAccount
      end
      def backup_policies_list
        Azure::NetApp::Mgmt::V2020_06_01::Models::BackupPoliciesList
      end
      def mount_target_properties
        Azure::NetApp::Mgmt::V2020_06_01::Models::MountTargetProperties
      end
      def backup_policy_details
        Azure::NetApp::Mgmt::V2020_06_01::Models::BackupPolicyDetails
      end
      def volume_patch_properties_export_policy
        Azure::NetApp::Mgmt::V2020_06_01::Models::VolumePatchPropertiesExportPolicy
      end
      def backup_policy_patch
        Azure::NetApp::Mgmt::V2020_06_01::Models::BackupPolicyPatch
      end
      def capacity_pool_list
        Azure::NetApp::Mgmt::V2020_06_01::Models::CapacityPoolList
      end
      def vault
        Azure::NetApp::Mgmt::V2020_06_01::Models::Vault
      end
      def check_availability_response
        Azure::NetApp::Mgmt::V2020_06_01::Models::CheckAvailabilityResponse
      end
      def vault_list
        Azure::NetApp::Mgmt::V2020_06_01::Models::VaultList
      end
      def volume_properties_data_protection
        Azure::NetApp::Mgmt::V2020_06_01::Models::VolumePropertiesDataProtection
      end
      def in_availability_reason_type
        Azure::NetApp::Mgmt::V2020_06_01::Models::InAvailabilityReasonType
      end
      def check_name_resource_types
        Azure::NetApp::Mgmt::V2020_06_01::Models::CheckNameResourceTypes
      end
      def check_quota_name_resource_types
        Azure::NetApp::Mgmt::V2020_06_01::Models::CheckQuotaNameResourceTypes
      end
      def active_directory_status
        Azure::NetApp::Mgmt::V2020_06_01::Models::ActiveDirectoryStatus
      end
      def service_level
        Azure::NetApp::Mgmt::V2020_06_01::Models::ServiceLevel
      end
      def qos_type
        Azure::NetApp::Mgmt::V2020_06_01::Models::QosType
      end
      def endpoint_type
        Azure::NetApp::Mgmt::V2020_06_01::Models::EndpointType
      end
      def replication_schedule
        Azure::NetApp::Mgmt::V2020_06_01::Models::ReplicationSchedule
      end
      def security_style
        Azure::NetApp::Mgmt::V2020_06_01::Models::SecurityStyle
      end
      def relationship_status
        Azure::NetApp::Mgmt::V2020_06_01::Models::RelationshipStatus
      end
      def mirror_state
        Azure::NetApp::Mgmt::V2020_06_01::Models::MirrorState
      end
    end
  end
end
