# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_netapp'

module Azure::Profiles::Latest
  module NetApp
    module Mgmt
      Operations = Azure::NetApp::Mgmt::V2017_08_15_preview::Operations
      Accounts = Azure::NetApp::Mgmt::V2017_08_15_preview::Accounts
      Pools = Azure::NetApp::Mgmt::V2017_08_15_preview::Pools
      Volumes = Azure::NetApp::Mgmt::V2017_08_15_preview::Volumes
      MountTargets = Azure::NetApp::Mgmt::V2017_08_15_preview::MountTargets
      Snapshots = Azure::NetApp::Mgmt::V2017_08_15_preview::Snapshots

      module Models
        CapacityPoolList = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::CapacityPoolList
        CapacityPoolPatch = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::CapacityPoolPatch
        Dimension = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::Dimension
        Volume = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::Volume
        ServiceSpecification = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::ServiceSpecification
        VolumeList = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::VolumeList
        OperationListResult = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::OperationListResult
        VolumePatch = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::VolumePatch
        NetAppAccountList = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::NetAppAccountList
        MountTarget = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::MountTarget
        CapacityPool = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::CapacityPool
        MountTargetList = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::MountTargetList
        MetricSpecification = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::MetricSpecification
        Snapshot = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::Snapshot
        NetAppAccount = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::NetAppAccount
        SnapshotsList = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::SnapshotsList
        OperationDisplay = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::OperationDisplay
        SnapshotPatch = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::SnapshotPatch
        NetAppAccountPatch = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::NetAppAccountPatch
        Error = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::Error
        Operation = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::Operation
        ServiceLevel = Azure::NetApp::Mgmt::V2017_08_15_preview::Models::ServiceLevel
      end

      class NetAppManagementClass
        attr_reader :operations, :accounts, :pools, :volumes, :mount_targets, :snapshots, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

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
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/NetApp/Mgmt"
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
          def capacity_pool_list
            Azure::NetApp::Mgmt::V2017_08_15_preview::Models::CapacityPoolList
          end
          def capacity_pool_patch
            Azure::NetApp::Mgmt::V2017_08_15_preview::Models::CapacityPoolPatch
          end
          def dimension
            Azure::NetApp::Mgmt::V2017_08_15_preview::Models::Dimension
          end
          def volume
            Azure::NetApp::Mgmt::V2017_08_15_preview::Models::Volume
          end
          def service_specification
            Azure::NetApp::Mgmt::V2017_08_15_preview::Models::ServiceSpecification
          end
          def volume_list
            Azure::NetApp::Mgmt::V2017_08_15_preview::Models::VolumeList
          end
          def operation_list_result
            Azure::NetApp::Mgmt::V2017_08_15_preview::Models::OperationListResult
          end
          def volume_patch
            Azure::NetApp::Mgmt::V2017_08_15_preview::Models::VolumePatch
          end
          def net_app_account_list
            Azure::NetApp::Mgmt::V2017_08_15_preview::Models::NetAppAccountList
          end
          def mount_target
            Azure::NetApp::Mgmt::V2017_08_15_preview::Models::MountTarget
          end
          def capacity_pool
            Azure::NetApp::Mgmt::V2017_08_15_preview::Models::CapacityPool
          end
          def mount_target_list
            Azure::NetApp::Mgmt::V2017_08_15_preview::Models::MountTargetList
          end
          def metric_specification
            Azure::NetApp::Mgmt::V2017_08_15_preview::Models::MetricSpecification
          end
          def snapshot
            Azure::NetApp::Mgmt::V2017_08_15_preview::Models::Snapshot
          end
          def net_app_account
            Azure::NetApp::Mgmt::V2017_08_15_preview::Models::NetAppAccount
          end
          def snapshots_list
            Azure::NetApp::Mgmt::V2017_08_15_preview::Models::SnapshotsList
          end
          def operation_display
            Azure::NetApp::Mgmt::V2017_08_15_preview::Models::OperationDisplay
          end
          def snapshot_patch
            Azure::NetApp::Mgmt::V2017_08_15_preview::Models::SnapshotPatch
          end
          def net_app_account_patch
            Azure::NetApp::Mgmt::V2017_08_15_preview::Models::NetAppAccountPatch
          end
          def error
            Azure::NetApp::Mgmt::V2017_08_15_preview::Models::Error
          end
          def operation
            Azure::NetApp::Mgmt::V2017_08_15_preview::Models::Operation
          end
          def service_level
            Azure::NetApp::Mgmt::V2017_08_15_preview::Models::ServiceLevel
          end
        end
      end
    end
  end
end
