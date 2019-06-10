# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_hanaonazure'

module Azure::Profiles::Latest
  module Hanaonazure
    module Mgmt
      Operations = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Operations
      HanaInstances = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::HanaInstances

      module Models
        Resource = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::Resource
        HanaInstancesListResult = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::HanaInstancesListResult
        Disk = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::Disk
        Display = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::Display
        OSProfile = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::OSProfile
        Operation = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::Operation
        NetworkProfile = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::NetworkProfile
        OperationList = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::OperationList
        StorageProfile = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::StorageProfile
        ErrorResponse = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::ErrorResponse
        HardwareProfile = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::HardwareProfile
        Tags = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::Tags
        IpAddress = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::IpAddress
        MonitoringDetails = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::MonitoringDetails
        HanaInstance = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::HanaInstance
        HanaHardwareTypeNamesEnum = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::HanaHardwareTypeNamesEnum
        HanaInstanceSizeNamesEnum = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::HanaInstanceSizeNamesEnum
        HanaInstancePowerStateEnum = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::HanaInstancePowerStateEnum
      end

      class HanaonazureManagementClass
        attr_reader :operations, :hana_instances, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::HanaManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @hana_instances = @client_0.hana_instances

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Hanaonazure/Mgmt"
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
          def resource
            Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::Resource
          end
          def hana_instances_list_result
            Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::HanaInstancesListResult
          end
          def disk
            Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::Disk
          end
          def display
            Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::Display
          end
          def osprofile
            Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::OSProfile
          end
          def operation
            Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::Operation
          end
          def network_profile
            Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::NetworkProfile
          end
          def operation_list
            Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::OperationList
          end
          def storage_profile
            Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::StorageProfile
          end
          def error_response
            Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::ErrorResponse
          end
          def hardware_profile
            Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::HardwareProfile
          end
          def tags
            Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::Tags
          end
          def ip_address
            Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::IpAddress
          end
          def monitoring_details
            Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::MonitoringDetails
          end
          def hana_instance
            Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::HanaInstance
          end
          def hana_hardware_type_names_enum
            Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::HanaHardwareTypeNamesEnum
          end
          def hana_instance_size_names_enum
            Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::HanaInstanceSizeNamesEnum
          end
          def hana_instance_power_state_enum
            Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::HanaInstancePowerStateEnum
          end
        end
      end
    end
  end
end
