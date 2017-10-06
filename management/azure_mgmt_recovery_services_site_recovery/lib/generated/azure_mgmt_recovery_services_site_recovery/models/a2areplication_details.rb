# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # A2A provider specific settings.
    #
    class A2AReplicationDetails < ReplicationProviderSpecificSettings

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @instanceType = "A2A"
      end

      attr_accessor :instanceType

      # @return [String] The fabric specific object Id of the virtual machine.
      attr_accessor :fabric_object_id

      # @return [String] The multi vm group Id.
      attr_accessor :multi_vm_group_id

      # @return [String] The multi vm group name.
      attr_accessor :multi_vm_group_name

      # @return [String] The management Id.
      attr_accessor :management_id

      # @return [Array<A2AProtectedDiskDetails>] The list of protected disks.
      attr_accessor :protected_disks

      # @return [Array<A2AProtectedManagedDiskDetails>] The list of protected
      # managed disks.
      attr_accessor :protected_managed_disks

      # @return [String] Primary fabric location.
      attr_accessor :primary_fabric_location

      # @return [String] The recovery fabric location.
      attr_accessor :recovery_fabric_location

      # @return [String] The type of operating system.
      attr_accessor :os_type

      # @return [String] The size of recovery virtual machine.
      attr_accessor :recovery_azure_vmsize

      # @return [String] The name of recovery virtual machine.
      attr_accessor :recovery_azure_vmname

      # @return [String] The recovery resource group.
      attr_accessor :recovery_azure_resource_group_id

      # @return [String] The recovery cloud service.
      attr_accessor :recovery_cloud_service

      # @return [String] The recovery availability set.
      attr_accessor :recovery_availability_set

      # @return [String] The recovery virtual network.
      attr_accessor :selected_recovery_azure_network_id

      # @return [Array<VMNicDetails>] The virtual machine nic details.
      attr_accessor :vm_nics

      # @return [AzureToAzureVmSyncedConfigDetails] The synced configuration
      # details.
      attr_accessor :vm_synced_config_details

      # @return [Integer] The percentage of the monitoring job. The type of the
      # monitoring job is defined by MonitoringJobType property.
      attr_accessor :monitoring_percentage_completion

      # @return [String] The type of the monitoring job. The progress is
      # contained in MonitoringPercentageCompletion property.
      attr_accessor :monitoring_job_type

      # @return [DateTime] The last heartbeat received from the source server.
      attr_accessor :last_heartbeat

      # @return [String] The agent version.
      attr_accessor :agent_version

      # @return [Boolean] A value indicating whether replication agent update
      # is required.
      attr_accessor :is_replication_agent_update_required

      # @return [String] The recovery fabric object Id.
      attr_accessor :recovery_fabric_object_id

      # @return [String] The protection state for the vm.
      attr_accessor :vm_protection_state

      # @return [String] The protection state description for the vm.
      attr_accessor :vm_protection_state_description

      # @return [String] An id associated with the PE that survives actions
      # like switch protection which change the backing PE/CPE objects
      # internally.The lifecycle id gets carried forward to have a
      # link/continuity in being able to have an Id that denotes the "same"
      # protected item even though other internal Ids/ARM Id might be changing.
      attr_accessor :lifecycle_id

      # @return [String] The test failover fabric object Id.
      attr_accessor :test_failover_recovery_fabric_object_id

      # @return [Integer] The last RPO value in seconds.
      attr_accessor :rpo_in_seconds

      # @return [DateTime] The time (in UTC) when the last RPO value was
      # calculated by Protection Service.
      attr_accessor :last_rpo_calculated_time


      #
      # Mapper for A2AReplicationDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'A2A',
          type: {
            name: 'Composite',
            class_name: 'A2AReplicationDetails',
            model_properties: {
              instanceType: {
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              fabric_object_id: {
                required: false,
                serialized_name: 'fabricObjectId',
                type: {
                  name: 'String'
                }
              },
              multi_vm_group_id: {
                required: false,
                serialized_name: 'multiVmGroupId',
                type: {
                  name: 'String'
                }
              },
              multi_vm_group_name: {
                required: false,
                serialized_name: 'multiVmGroupName',
                type: {
                  name: 'String'
                }
              },
              management_id: {
                required: false,
                serialized_name: 'managementId',
                type: {
                  name: 'String'
                }
              },
              protected_disks: {
                required: false,
                serialized_name: 'protectedDisks',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'A2AProtectedDiskDetailsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'A2AProtectedDiskDetails'
                      }
                  }
                }
              },
              protected_managed_disks: {
                required: false,
                serialized_name: 'protectedManagedDisks',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'A2AProtectedManagedDiskDetailsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'A2AProtectedManagedDiskDetails'
                      }
                  }
                }
              },
              primary_fabric_location: {
                required: false,
                serialized_name: 'primaryFabricLocation',
                type: {
                  name: 'String'
                }
              },
              recovery_fabric_location: {
                required: false,
                serialized_name: 'recoveryFabricLocation',
                type: {
                  name: 'String'
                }
              },
              os_type: {
                required: false,
                serialized_name: 'osType',
                type: {
                  name: 'String'
                }
              },
              recovery_azure_vmsize: {
                required: false,
                serialized_name: 'recoveryAzureVMSize',
                type: {
                  name: 'String'
                }
              },
              recovery_azure_vmname: {
                required: false,
                serialized_name: 'recoveryAzureVMName',
                type: {
                  name: 'String'
                }
              },
              recovery_azure_resource_group_id: {
                required: false,
                serialized_name: 'recoveryAzureResourceGroupId',
                type: {
                  name: 'String'
                }
              },
              recovery_cloud_service: {
                required: false,
                serialized_name: 'recoveryCloudService',
                type: {
                  name: 'String'
                }
              },
              recovery_availability_set: {
                required: false,
                serialized_name: 'recoveryAvailabilitySet',
                type: {
                  name: 'String'
                }
              },
              selected_recovery_azure_network_id: {
                required: false,
                serialized_name: 'selectedRecoveryAzureNetworkId',
                type: {
                  name: 'String'
                }
              },
              vm_nics: {
                required: false,
                serialized_name: 'vmNics',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VMNicDetailsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VMNicDetails'
                      }
                  }
                }
              },
              vm_synced_config_details: {
                required: false,
                serialized_name: 'vmSyncedConfigDetails',
                type: {
                  name: 'Composite',
                  class_name: 'AzureToAzureVmSyncedConfigDetails'
                }
              },
              monitoring_percentage_completion: {
                required: false,
                serialized_name: 'monitoringPercentageCompletion',
                type: {
                  name: 'Number'
                }
              },
              monitoring_job_type: {
                required: false,
                serialized_name: 'monitoringJobType',
                type: {
                  name: 'String'
                }
              },
              last_heartbeat: {
                required: false,
                serialized_name: 'lastHeartbeat',
                type: {
                  name: 'DateTime'
                }
              },
              agent_version: {
                required: false,
                serialized_name: 'agentVersion',
                type: {
                  name: 'String'
                }
              },
              is_replication_agent_update_required: {
                required: false,
                serialized_name: 'isReplicationAgentUpdateRequired',
                type: {
                  name: 'Boolean'
                }
              },
              recovery_fabric_object_id: {
                required: false,
                serialized_name: 'recoveryFabricObjectId',
                type: {
                  name: 'String'
                }
              },
              vm_protection_state: {
                required: false,
                serialized_name: 'vmProtectionState',
                type: {
                  name: 'String'
                }
              },
              vm_protection_state_description: {
                required: false,
                serialized_name: 'vmProtectionStateDescription',
                type: {
                  name: 'String'
                }
              },
              lifecycle_id: {
                required: false,
                serialized_name: 'lifecycleId',
                type: {
                  name: 'String'
                }
              },
              test_failover_recovery_fabric_object_id: {
                required: false,
                serialized_name: 'testFailoverRecoveryFabricObjectId',
                type: {
                  name: 'String'
                }
              },
              rpo_in_seconds: {
                required: false,
                serialized_name: 'rpoInSeconds',
                type: {
                  name: 'Number'
                }
              },
              last_rpo_calculated_time: {
                required: false,
                serialized_name: 'lastRpoCalculatedTime',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
