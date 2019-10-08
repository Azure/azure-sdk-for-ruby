# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_vmware_cloudsimple'

module Azure::Profiles::Latest
  module VMwareCloudSimple
    module Mgmt
      Operations = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Operations
      DedicatedCloudNodes = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::DedicatedCloudNodes
      DedicatedCloudServices = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::DedicatedCloudServices
      SkusAvailability = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::SkusAvailability
      PrivateClouds = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::PrivateClouds
      ResourcePools = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::ResourcePools
      VirtualMachineTemplates = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::VirtualMachineTemplates
      VirtualNetworks = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::VirtualNetworks
      Usages = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Usages
      VirtualMachines = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::VirtualMachines

      module Models
        VirtualDisk = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::VirtualDisk
        AvailableOperationDisplay = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::AvailableOperationDisplay
        VirtualNetwork = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::VirtualNetwork
        AvailableOperationDisplayPropertyServiceSpecificationMetricsList = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::AvailableOperationDisplayPropertyServiceSpecificationMetricsList
        VirtualNic = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::VirtualNic
        AvailableOperationsListResponse = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::AvailableOperationsListResponse
        VirtualMachineTemplate = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::VirtualMachineTemplate
        CSRPError = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::CSRPError
        PrivateCloud = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::PrivateCloud
        DedicatedCloudNode = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::DedicatedCloudNode
        PrivateCloudList = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::PrivateCloudList
        DedicatedCloudService = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::DedicatedCloudService
        ResourcePoolsListResponse = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::ResourcePoolsListResponse
        OperationError = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::OperationError
        SkuAvailability = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::SkuAvailability
        PatchPayload = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::PatchPayload
        SkuAvailabilityListResponse = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::SkuAvailabilityListResponse
        VirtualDiskController = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::VirtualDiskController
        UsageName = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::UsageName
        AvailableOperation = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::AvailableOperation
        Usage = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::Usage
        Sku = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::Sku
        UsageListResponse = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::UsageListResponse
        DedicatedCloudServiceListResponse = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::DedicatedCloudServiceListResponse
        VirtualMachine = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::VirtualMachine
        ResourcePool = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::ResourcePool
        VirtualMachineListResponse = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::VirtualMachineListResponse
        CSRPErrorBody = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::CSRPErrorBody
        VirtualMachineStopMode = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::VirtualMachineStopMode
        OperationResource = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::OperationResource
        VirtualMachineTemplateListResponse = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::VirtualMachineTemplateListResponse
        DedicatedCloudNodeListResponse = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::DedicatedCloudNodeListResponse
        VirtualNetworkListResponse = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::VirtualNetworkListResponse
        AvailableOperationDisplayPropertyServiceSpecificationMetricsItem = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::AvailableOperationDisplayPropertyServiceSpecificationMetricsItem
        OperationOrigin = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::OperationOrigin
        AggregationType = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::AggregationType
        NodeStatus = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::NodeStatus
        OnboardingStatus = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::OnboardingStatus
        DiskIndependenceMode = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::DiskIndependenceMode
        NICType = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::NICType
        PrivateCloudResourceType = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::PrivateCloudResourceType
        UsageCount = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::UsageCount
        GuestOSType = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::GuestOSType
        VirtualMachineStatus = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::VirtualMachineStatus
        StopMode = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::StopMode
      end

      class VMwareCloudSimpleManagementClass
        attr_reader :operations, :dedicated_cloud_nodes, :dedicated_cloud_services, :skus_availability, :private_clouds, :resource_pools, :virtual_machine_templates, :virtual_networks, :usages, :virtual_machines, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::VMwareCloudSimple::Mgmt::V2019_04_01::VMwareCloudSimpleClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @dedicated_cloud_nodes = @client_0.dedicated_cloud_nodes
          @dedicated_cloud_services = @client_0.dedicated_cloud_services
          @skus_availability = @client_0.skus_availability
          @private_clouds = @client_0.private_clouds
          @resource_pools = @client_0.resource_pools
          @virtual_machine_templates = @client_0.virtual_machine_templates
          @virtual_networks = @client_0.virtual_networks
          @usages = @client_0.usages
          @virtual_machines = @client_0.virtual_machines

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/VMwareCloudSimple/Mgmt"
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
          def virtual_disk
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::VirtualDisk
          end
          def available_operation_display
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::AvailableOperationDisplay
          end
          def virtual_network
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::VirtualNetwork
          end
          def available_operation_display_property_service_specification_metrics_list
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::AvailableOperationDisplayPropertyServiceSpecificationMetricsList
          end
          def virtual_nic
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::VirtualNic
          end
          def available_operations_list_response
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::AvailableOperationsListResponse
          end
          def virtual_machine_template
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::VirtualMachineTemplate
          end
          def csrperror
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::CSRPError
          end
          def private_cloud
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::PrivateCloud
          end
          def dedicated_cloud_node
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::DedicatedCloudNode
          end
          def private_cloud_list
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::PrivateCloudList
          end
          def dedicated_cloud_service
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::DedicatedCloudService
          end
          def resource_pools_list_response
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::ResourcePoolsListResponse
          end
          def operation_error
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::OperationError
          end
          def sku_availability
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::SkuAvailability
          end
          def patch_payload
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::PatchPayload
          end
          def sku_availability_list_response
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::SkuAvailabilityListResponse
          end
          def virtual_disk_controller
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::VirtualDiskController
          end
          def usage_name
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::UsageName
          end
          def available_operation
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::AvailableOperation
          end
          def usage
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::Usage
          end
          def sku
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::Sku
          end
          def usage_list_response
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::UsageListResponse
          end
          def dedicated_cloud_service_list_response
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::DedicatedCloudServiceListResponse
          end
          def virtual_machine
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::VirtualMachine
          end
          def resource_pool
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::ResourcePool
          end
          def virtual_machine_list_response
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::VirtualMachineListResponse
          end
          def csrperror_body
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::CSRPErrorBody
          end
          def virtual_machine_stop_mode
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::VirtualMachineStopMode
          end
          def operation_resource
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::OperationResource
          end
          def virtual_machine_template_list_response
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::VirtualMachineTemplateListResponse
          end
          def dedicated_cloud_node_list_response
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::DedicatedCloudNodeListResponse
          end
          def virtual_network_list_response
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::VirtualNetworkListResponse
          end
          def available_operation_display_property_service_specification_metrics_item
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::AvailableOperationDisplayPropertyServiceSpecificationMetricsItem
          end
          def operation_origin
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::OperationOrigin
          end
          def aggregation_type
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::AggregationType
          end
          def node_status
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::NodeStatus
          end
          def onboarding_status
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::OnboardingStatus
          end
          def disk_independence_mode
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::DiskIndependenceMode
          end
          def nictype
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::NICType
          end
          def private_cloud_resource_type
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::PrivateCloudResourceType
          end
          def usage_count
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::UsageCount
          end
          def guest_ostype
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::GuestOSType
          end
          def virtual_machine_status
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::VirtualMachineStatus
          end
          def stop_mode
            Azure::VMwareCloudSimple::Mgmt::V2019_04_01::Models::StopMode
          end
        end
      end
    end
  end
end
