# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_netapp'

module Azure::NetApp::Profiles::Latest
  module Mgmt
    Operations = Azure::NetApp::Mgmt::V2019_07_01::Operations
    Accounts = Azure::NetApp::Mgmt::V2019_07_01::Accounts
    Pools = Azure::NetApp::Mgmt::V2019_07_01::Pools
    Volumes = Azure::NetApp::Mgmt::V2019_07_01::Volumes
    MountTargets = Azure::NetApp::Mgmt::V2019_07_01::MountTargets
    Snapshots = Azure::NetApp::Mgmt::V2019_07_01::Snapshots

    module Models
      CapacityPoolList = Azure::NetApp::Mgmt::V2019_07_01::Models::CapacityPoolList
      OperationDisplay = Azure::NetApp::Mgmt::V2019_07_01::Models::OperationDisplay
      CapacityPoolPatch = Azure::NetApp::Mgmt::V2019_07_01::Models::CapacityPoolPatch
      MetricSpecification = Azure::NetApp::Mgmt::V2019_07_01::Models::MetricSpecification
      ExportPolicyRule = Azure::NetApp::Mgmt::V2019_07_01::Models::ExportPolicyRule
      Operation = Azure::NetApp::Mgmt::V2019_07_01::Models::Operation
      VolumePropertiesExportPolicy = Azure::NetApp::Mgmt::V2019_07_01::Models::VolumePropertiesExportPolicy
      ResourceNameAvailability = Azure::NetApp::Mgmt::V2019_07_01::Models::ResourceNameAvailability
      Volume = Azure::NetApp::Mgmt::V2019_07_01::Models::Volume
      ActiveDirectory = Azure::NetApp::Mgmt::V2019_07_01::Models::ActiveDirectory
      VolumeList = Azure::NetApp::Mgmt::V2019_07_01::Models::VolumeList
      NetAppAccountList = Azure::NetApp::Mgmt::V2019_07_01::Models::NetAppAccountList
      VolumePatchPropertiesExportPolicy = Azure::NetApp::Mgmt::V2019_07_01::Models::VolumePatchPropertiesExportPolicy
      CapacityPool = Azure::NetApp::Mgmt::V2019_07_01::Models::CapacityPool
      VolumePatch = Azure::NetApp::Mgmt::V2019_07_01::Models::VolumePatch
      ServiceSpecification = Azure::NetApp::Mgmt::V2019_07_01::Models::ServiceSpecification
      MountTarget = Azure::NetApp::Mgmt::V2019_07_01::Models::MountTarget
      ResourceNameAvailabilityRequest = Azure::NetApp::Mgmt::V2019_07_01::Models::ResourceNameAvailabilityRequest
      MountTargetList = Azure::NetApp::Mgmt::V2019_07_01::Models::MountTargetList
      NetAppAccountPatch = Azure::NetApp::Mgmt::V2019_07_01::Models::NetAppAccountPatch
      Snapshot = Azure::NetApp::Mgmt::V2019_07_01::Models::Snapshot
      OperationListResult = Azure::NetApp::Mgmt::V2019_07_01::Models::OperationListResult
      SnapshotsList = Azure::NetApp::Mgmt::V2019_07_01::Models::SnapshotsList
      Dimension = Azure::NetApp::Mgmt::V2019_07_01::Models::Dimension
      SnapshotPatch = Azure::NetApp::Mgmt::V2019_07_01::Models::SnapshotPatch
      NetAppAccount = Azure::NetApp::Mgmt::V2019_07_01::Models::NetAppAccount
      InAvailabilityReasonType = Azure::NetApp::Mgmt::V2019_07_01::Models::InAvailabilityReasonType
      CheckNameResourceTypes = Azure::NetApp::Mgmt::V2019_07_01::Models::CheckNameResourceTypes
      ServiceLevel = Azure::NetApp::Mgmt::V2019_07_01::Models::ServiceLevel
    end

    #
    # NetAppManagementClass
    #
    class NetAppManagementClass
      attr_reader :operations, :accounts, :pools, :volumes, :mount_targets, :snapshots, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::NetApp::Mgmt::V2019_07_01::AzureNetAppFilesManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @operations = @client_0.operations
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
      def capacity_pool_list
        Azure::NetApp::Mgmt::V2019_07_01::Models::CapacityPoolList
      end
      def operation_display
        Azure::NetApp::Mgmt::V2019_07_01::Models::OperationDisplay
      end
      def capacity_pool_patch
        Azure::NetApp::Mgmt::V2019_07_01::Models::CapacityPoolPatch
      end
      def metric_specification
        Azure::NetApp::Mgmt::V2019_07_01::Models::MetricSpecification
      end
      def export_policy_rule
        Azure::NetApp::Mgmt::V2019_07_01::Models::ExportPolicyRule
      end
      def operation
        Azure::NetApp::Mgmt::V2019_07_01::Models::Operation
      end
      def volume_properties_export_policy
        Azure::NetApp::Mgmt::V2019_07_01::Models::VolumePropertiesExportPolicy
      end
      def resource_name_availability
        Azure::NetApp::Mgmt::V2019_07_01::Models::ResourceNameAvailability
      end
      def volume
        Azure::NetApp::Mgmt::V2019_07_01::Models::Volume
      end
      def active_directory
        Azure::NetApp::Mgmt::V2019_07_01::Models::ActiveDirectory
      end
      def volume_list
        Azure::NetApp::Mgmt::V2019_07_01::Models::VolumeList
      end
      def net_app_account_list
        Azure::NetApp::Mgmt::V2019_07_01::Models::NetAppAccountList
      end
      def volume_patch_properties_export_policy
        Azure::NetApp::Mgmt::V2019_07_01::Models::VolumePatchPropertiesExportPolicy
      end
      def capacity_pool
        Azure::NetApp::Mgmt::V2019_07_01::Models::CapacityPool
      end
      def volume_patch
        Azure::NetApp::Mgmt::V2019_07_01::Models::VolumePatch
      end
      def service_specification
        Azure::NetApp::Mgmt::V2019_07_01::Models::ServiceSpecification
      end
      def mount_target
        Azure::NetApp::Mgmt::V2019_07_01::Models::MountTarget
      end
      def resource_name_availability_request
        Azure::NetApp::Mgmt::V2019_07_01::Models::ResourceNameAvailabilityRequest
      end
      def mount_target_list
        Azure::NetApp::Mgmt::V2019_07_01::Models::MountTargetList
      end
      def net_app_account_patch
        Azure::NetApp::Mgmt::V2019_07_01::Models::NetAppAccountPatch
      end
      def snapshot
        Azure::NetApp::Mgmt::V2019_07_01::Models::Snapshot
      end
      def operation_list_result
        Azure::NetApp::Mgmt::V2019_07_01::Models::OperationListResult
      end
      def snapshots_list
        Azure::NetApp::Mgmt::V2019_07_01::Models::SnapshotsList
      end
      def dimension
        Azure::NetApp::Mgmt::V2019_07_01::Models::Dimension
      end
      def snapshot_patch
        Azure::NetApp::Mgmt::V2019_07_01::Models::SnapshotPatch
      end
      def net_app_account
        Azure::NetApp::Mgmt::V2019_07_01::Models::NetAppAccount
      end
      def in_availability_reason_type
        Azure::NetApp::Mgmt::V2019_07_01::Models::InAvailabilityReasonType
      end
      def check_name_resource_types
        Azure::NetApp::Mgmt::V2019_07_01::Models::CheckNameResourceTypes
      end
      def service_level
        Azure::NetApp::Mgmt::V2019_07_01::Models::ServiceLevel
      end
    end
  end
end
