# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_netapp'

module Azure::NetApp::Profiles::Latest
  module Mgmt
    Operations = Azure::NetApp::Mgmt::V2019_08_01::Operations
    NetAppResource = Azure::NetApp::Mgmt::V2019_08_01::NetAppResource
    Accounts = Azure::NetApp::Mgmt::V2019_08_01::Accounts
    Pools = Azure::NetApp::Mgmt::V2019_08_01::Pools
    Volumes = Azure::NetApp::Mgmt::V2019_08_01::Volumes
    MountTargets = Azure::NetApp::Mgmt::V2019_08_01::MountTargets
    Snapshots = Azure::NetApp::Mgmt::V2019_08_01::Snapshots

    module Models
      CapacityPoolPatch = Azure::NetApp::Mgmt::V2019_08_01::Models::CapacityPoolPatch
      OperationDisplay = Azure::NetApp::Mgmt::V2019_08_01::Models::OperationDisplay
      ExportPolicyRule = Azure::NetApp::Mgmt::V2019_08_01::Models::ExportPolicyRule
      MetricSpecification = Azure::NetApp::Mgmt::V2019_08_01::Models::MetricSpecification
      VolumePropertiesExportPolicy = Azure::NetApp::Mgmt::V2019_08_01::Models::VolumePropertiesExportPolicy
      Operation = Azure::NetApp::Mgmt::V2019_08_01::Models::Operation
      ReplicationObject = Azure::NetApp::Mgmt::V2019_08_01::Models::ReplicationObject
      ResourceNameAvailability = Azure::NetApp::Mgmt::V2019_08_01::Models::ResourceNameAvailability
      VolumePropertiesDataProtection = Azure::NetApp::Mgmt::V2019_08_01::Models::VolumePropertiesDataProtection
      ActiveDirectory = Azure::NetApp::Mgmt::V2019_08_01::Models::ActiveDirectory
      Volume = Azure::NetApp::Mgmt::V2019_08_01::Models::Volume
      NetAppAccountList = Azure::NetApp::Mgmt::V2019_08_01::Models::NetAppAccountList
      VolumeList = Azure::NetApp::Mgmt::V2019_08_01::Models::VolumeList
      CapacityPool = Azure::NetApp::Mgmt::V2019_08_01::Models::CapacityPool
      VolumePatchPropertiesExportPolicy = Azure::NetApp::Mgmt::V2019_08_01::Models::VolumePatchPropertiesExportPolicy
      Dimension = Azure::NetApp::Mgmt::V2019_08_01::Models::Dimension
      VolumePatch = Azure::NetApp::Mgmt::V2019_08_01::Models::VolumePatch
      OperationListResult = Azure::NetApp::Mgmt::V2019_08_01::Models::OperationListResult
      MountTarget = Azure::NetApp::Mgmt::V2019_08_01::Models::MountTarget
      NetAppAccount = Azure::NetApp::Mgmt::V2019_08_01::Models::NetAppAccount
      MountTargetList = Azure::NetApp::Mgmt::V2019_08_01::Models::MountTargetList
      CapacityPoolList = Azure::NetApp::Mgmt::V2019_08_01::Models::CapacityPoolList
      Snapshot = Azure::NetApp::Mgmt::V2019_08_01::Models::Snapshot
      ResourceNameAvailabilityRequest = Azure::NetApp::Mgmt::V2019_08_01::Models::ResourceNameAvailabilityRequest
      SnapshotsList = Azure::NetApp::Mgmt::V2019_08_01::Models::SnapshotsList
      ServiceSpecification = Azure::NetApp::Mgmt::V2019_08_01::Models::ServiceSpecification
      SnapshotPatch = Azure::NetApp::Mgmt::V2019_08_01::Models::SnapshotPatch
      NetAppAccountPatch = Azure::NetApp::Mgmt::V2019_08_01::Models::NetAppAccountPatch
      InAvailabilityReasonType = Azure::NetApp::Mgmt::V2019_08_01::Models::InAvailabilityReasonType
      CheckNameResourceTypes = Azure::NetApp::Mgmt::V2019_08_01::Models::CheckNameResourceTypes
      ServiceLevel = Azure::NetApp::Mgmt::V2019_08_01::Models::ServiceLevel
    end

    #
    # NetAppManagementClass
    #
    class NetAppManagementClass
      attr_reader :operations, :net_app_resource, :accounts, :pools, :volumes, :mount_targets, :snapshots, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::NetApp::Mgmt::V2019_08_01::AzureNetAppFilesManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @operations = @client_0.operations
        @net_app_resource = @client_0.net_app_resource
        @accounts = @client_0.accounts
        @pools = @client_0.pools
        @volumes = @client_0.volumes
        @mount_targets = @client_0.mount_targets
        @snapshots = @client_0.snapshots

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
      def capacity_pool_patch
        Azure::NetApp::Mgmt::V2019_08_01::Models::CapacityPoolPatch
      end
      def operation_display
        Azure::NetApp::Mgmt::V2019_08_01::Models::OperationDisplay
      end
      def export_policy_rule
        Azure::NetApp::Mgmt::V2019_08_01::Models::ExportPolicyRule
      end
      def metric_specification
        Azure::NetApp::Mgmt::V2019_08_01::Models::MetricSpecification
      end
      def volume_properties_export_policy
        Azure::NetApp::Mgmt::V2019_08_01::Models::VolumePropertiesExportPolicy
      end
      def operation
        Azure::NetApp::Mgmt::V2019_08_01::Models::Operation
      end
      def replication_object
        Azure::NetApp::Mgmt::V2019_08_01::Models::ReplicationObject
      end
      def resource_name_availability
        Azure::NetApp::Mgmt::V2019_08_01::Models::ResourceNameAvailability
      end
      def volume_properties_data_protection
        Azure::NetApp::Mgmt::V2019_08_01::Models::VolumePropertiesDataProtection
      end
      def active_directory
        Azure::NetApp::Mgmt::V2019_08_01::Models::ActiveDirectory
      end
      def volume
        Azure::NetApp::Mgmt::V2019_08_01::Models::Volume
      end
      def net_app_account_list
        Azure::NetApp::Mgmt::V2019_08_01::Models::NetAppAccountList
      end
      def volume_list
        Azure::NetApp::Mgmt::V2019_08_01::Models::VolumeList
      end
      def capacity_pool
        Azure::NetApp::Mgmt::V2019_08_01::Models::CapacityPool
      end
      def volume_patch_properties_export_policy
        Azure::NetApp::Mgmt::V2019_08_01::Models::VolumePatchPropertiesExportPolicy
      end
      def dimension
        Azure::NetApp::Mgmt::V2019_08_01::Models::Dimension
      end
      def volume_patch
        Azure::NetApp::Mgmt::V2019_08_01::Models::VolumePatch
      end
      def operation_list_result
        Azure::NetApp::Mgmt::V2019_08_01::Models::OperationListResult
      end
      def mount_target
        Azure::NetApp::Mgmt::V2019_08_01::Models::MountTarget
      end
      def net_app_account
        Azure::NetApp::Mgmt::V2019_08_01::Models::NetAppAccount
      end
      def mount_target_list
        Azure::NetApp::Mgmt::V2019_08_01::Models::MountTargetList
      end
      def capacity_pool_list
        Azure::NetApp::Mgmt::V2019_08_01::Models::CapacityPoolList
      end
      def snapshot
        Azure::NetApp::Mgmt::V2019_08_01::Models::Snapshot
      end
      def resource_name_availability_request
        Azure::NetApp::Mgmt::V2019_08_01::Models::ResourceNameAvailabilityRequest
      end
      def snapshots_list
        Azure::NetApp::Mgmt::V2019_08_01::Models::SnapshotsList
      end
      def service_specification
        Azure::NetApp::Mgmt::V2019_08_01::Models::ServiceSpecification
      end
      def snapshot_patch
        Azure::NetApp::Mgmt::V2019_08_01::Models::SnapshotPatch
      end
      def net_app_account_patch
        Azure::NetApp::Mgmt::V2019_08_01::Models::NetAppAccountPatch
      end
      def in_availability_reason_type
        Azure::NetApp::Mgmt::V2019_08_01::Models::InAvailabilityReasonType
      end
      def check_name_resource_types
        Azure::NetApp::Mgmt::V2019_08_01::Models::CheckNameResourceTypes
      end
      def service_level
        Azure::NetApp::Mgmt::V2019_08_01::Models::ServiceLevel
      end
    end
  end
end
