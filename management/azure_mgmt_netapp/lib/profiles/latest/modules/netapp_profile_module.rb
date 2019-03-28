# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_netapp'

module Azure::NetApp::Profiles::Latest
  module Mgmt
    Operations = Azure::NetApp::Mgmt::V2017_08_15_preview::Operations
    Accounts = Azure::NetApp::Mgmt::V2017_08_15_preview::Accounts
    Pools = Azure::NetApp::Mgmt::V2017_08_15_preview::Pools
    Volumes = Azure::NetApp::Mgmt::V2017_08_15_preview::Volumes
    MountTargets = Azure::NetApp::Mgmt::V2017_08_15_preview::MountTargets
    Snapshots = Azure::NetApp::Mgmt::V2017_08_15_preview::Snapshots

    module Models
      CapacityPoolPatch = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::CapacityPoolPatch
      ExportPolicyRule = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::ExportPolicyRule
      Dimension = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::Dimension
      VolumePropertiesExportPolicy = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::VolumePropertiesExportPolicy
      ServiceSpecification = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::ServiceSpecification
      Volume = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::Volume
      OperationListResult = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::OperationListResult
      VolumeList = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::VolumeList
      NetAppAccount = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::NetAppAccount
      VolumePatchPropertiesExportPolicy = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::VolumePatchPropertiesExportPolicy
      NetAppAccountPatch = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::NetAppAccountPatch
      VolumePatch = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::VolumePatch
      CapacityPoolList = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::CapacityPoolList
      MountTarget = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::MountTarget
      MetricSpecification = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::MetricSpecification
      MountTargetList = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::MountTargetList
      ActiveDirectory = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::ActiveDirectory
      Snapshot = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::Snapshot
      CapacityPool = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::CapacityPool
      SnapshotsList = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::SnapshotsList
      Operation = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::Operation
      SnapshotPatch = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::SnapshotPatch
      OperationDisplay = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::OperationDisplay
      Error = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::Error
      NetAppAccountList = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::NetAppAccountList
      ServiceLevel = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::ServiceLevel
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

        @client_0 = Azure::NetApp::Mgmt::V2017_08_15_preview::AzureNetAppFilesManagementClient.new(configurable.credentials, base_url, options)
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
      def capacity_pool_patch
        Azure::NetApp::Mgmt::V2017_08_15_preview::Models::CapacityPoolPatch
      end
      def export_policy_rule
        Azure::NetApp::Mgmt::V2017_08_15_preview::Models::ExportPolicyRule
      end
      def dimension
        Azure::NetApp::Mgmt::V2017_08_15_preview::Models::Dimension
      end
      def volume_properties_export_policy
        Azure::NetApp::Mgmt::V2017_08_15_preview::Models::VolumePropertiesExportPolicy
      end
      def service_specification
        Azure::NetApp::Mgmt::V2017_08_15_preview::Models::ServiceSpecification
      end
      def volume
        Azure::NetApp::Mgmt::V2017_08_15_preview::Models::Volume
      end
      def operation_list_result
        Azure::NetApp::Mgmt::V2017_08_15_preview::Models::OperationListResult
      end
      def volume_list
        Azure::NetApp::Mgmt::V2017_08_15_preview::Models::VolumeList
      end
      def net_app_account
        Azure::NetApp::Mgmt::V2017_08_15_preview::Models::NetAppAccount
      end
      def volume_patch_properties_export_policy
        Azure::NetApp::Mgmt::V2017_08_15_preview::Models::VolumePatchPropertiesExportPolicy
      end
      def net_app_account_patch
        Azure::NetApp::Mgmt::V2017_08_15_preview::Models::NetAppAccountPatch
      end
      def volume_patch
        Azure::NetApp::Mgmt::V2017_08_15_preview::Models::VolumePatch
      end
      def capacity_pool_list
        Azure::NetApp::Mgmt::V2017_08_15_preview::Models::CapacityPoolList
      end
      def mount_target
        Azure::NetApp::Mgmt::V2017_08_15_preview::Models::MountTarget
      end
      def metric_specification
        Azure::NetApp::Mgmt::V2017_08_15_preview::Models::MetricSpecification
      end
      def mount_target_list
        Azure::NetApp::Mgmt::V2017_08_15_preview::Models::MountTargetList
      end
      def active_directory
        Azure::NetApp::Mgmt::V2017_08_15_preview::Models::ActiveDirectory
      end
      def snapshot
        Azure::NetApp::Mgmt::V2017_08_15_preview::Models::Snapshot
      end
      def capacity_pool
        Azure::NetApp::Mgmt::V2017_08_15_preview::Models::CapacityPool
      end
      def snapshots_list
        Azure::NetApp::Mgmt::V2017_08_15_preview::Models::SnapshotsList
      end
      def operation
        Azure::NetApp::Mgmt::V2017_08_15_preview::Models::Operation
      end
      def snapshot_patch
        Azure::NetApp::Mgmt::V2017_08_15_preview::Models::SnapshotPatch
      end
      def operation_display
        Azure::NetApp::Mgmt::V2017_08_15_preview::Models::OperationDisplay
      end
      def error
        Azure::NetApp::Mgmt::V2017_08_15_preview::Models::Error
      end
      def net_app_account_list
        Azure::NetApp::Mgmt::V2017_08_15_preview::Models::NetAppAccountList
      end
      def service_level
        Azure::NetApp::Mgmt::V2017_08_15_preview::Models::ServiceLevel
      end
    end
  end
end
