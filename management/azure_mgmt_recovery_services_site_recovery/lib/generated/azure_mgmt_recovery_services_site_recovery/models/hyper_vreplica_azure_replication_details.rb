# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # Hyper V Replica Azure provider specific settings.
    #
    class HyperVReplicaAzureReplicationDetails < ReplicationProviderSpecificSettings

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @instanceType = "HyperVReplicaAzure"
      end

      attr_accessor :instanceType

      # @return [Array<AzureVmDiskDetails>] Azure VM Disk details.
      attr_accessor :azure_vmdisk_details

      # @return [String] Recovery Azure given name.
      attr_accessor :recovery_azure_vmname

      # @return [String] The Recovery Azure VM size.
      attr_accessor :recovery_azure_vmsize

      # @return [String] The recovery Azure storage account.
      attr_accessor :recovery_azure_storage_account

      # @return [String] The ARM id of the log storage account used for
      # replication. This will be set to null if no log storage account was
      # provided during enable protection.
      attr_accessor :recovery_azure_log_storage_account_id

      # @return [DateTime] The Last replication time.
      attr_accessor :last_replicated_time

      # @return [String] The virtual machine Id.
      attr_accessor :vm_id

      # @return [String] The protection state for the vm.
      attr_accessor :vm_protection_state

      # @return [String] The protection state description for the vm.
      attr_accessor :vm_protection_state_description

      # @return [InitialReplicationDetails] Initial replication details.
      attr_accessor :initial_replication_details

      # @return [Array<VMNicDetails>] The PE Network details.
      attr_accessor :vm_nics

      # @return [String] The selected recovery azure network Id.
      attr_accessor :selected_recovery_azure_network_id

      # @return [String] The encryption info.
      attr_accessor :encryption

      # @return [OSDetails] The operating system info.
      attr_accessor :o_sdetails

      # @return [Integer] The RAM size of the VM on the primary side.
      attr_accessor :source_vm_ramsize_in_mb

      # @return [Integer] The CPU count of the VM on the primary side.
      attr_accessor :source_vm_cpucount

      # @return [String] The selected option to enable RDP\SSH on target vm
      # after failover. String value of
      # {SrsDataContract.EnableRDPOnTargetOption} enum.
      attr_accessor :enable_rdpon_target_option

      # @return [String] The target resource group Id.
      attr_accessor :recovery_azure_resource_group_id

      # @return [String] The recovery availability set Id.
      attr_accessor :recovery_availability_set_id

      # @return [String] A value indicating whether managed disks should be
      # used during failover.
      attr_accessor :use_managed_disks

      # @return [String] License Type of the VM to be used.
      attr_accessor :license_type


      #
      # Mapper for HyperVReplicaAzureReplicationDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'HyperVReplicaAzure',
          type: {
            name: 'Composite',
            class_name: 'HyperVReplicaAzureReplicationDetails',
            model_properties: {
              instanceType: {
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              azure_vmdisk_details: {
                required: false,
                serialized_name: 'azureVMDiskDetails',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'AzureVmDiskDetailsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AzureVmDiskDetails'
                      }
                  }
                }
              },
              recovery_azure_vmname: {
                required: false,
                serialized_name: 'recoveryAzureVMName',
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
              recovery_azure_storage_account: {
                required: false,
                serialized_name: 'recoveryAzureStorageAccount',
                type: {
                  name: 'String'
                }
              },
              recovery_azure_log_storage_account_id: {
                required: false,
                serialized_name: 'recoveryAzureLogStorageAccountId',
                type: {
                  name: 'String'
                }
              },
              last_replicated_time: {
                required: false,
                serialized_name: 'lastReplicatedTime',
                type: {
                  name: 'DateTime'
                }
              },
              vm_id: {
                required: false,
                serialized_name: 'vmId',
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
              initial_replication_details: {
                required: false,
                serialized_name: 'initialReplicationDetails',
                type: {
                  name: 'Composite',
                  class_name: 'InitialReplicationDetails'
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
              selected_recovery_azure_network_id: {
                required: false,
                serialized_name: 'selectedRecoveryAzureNetworkId',
                type: {
                  name: 'String'
                }
              },
              encryption: {
                required: false,
                serialized_name: 'encryption',
                type: {
                  name: 'String'
                }
              },
              o_sdetails: {
                required: false,
                serialized_name: 'oSDetails',
                type: {
                  name: 'Composite',
                  class_name: 'OSDetails'
                }
              },
              source_vm_ramsize_in_mb: {
                required: false,
                serialized_name: 'sourceVmRAMSizeInMB',
                type: {
                  name: 'Number'
                }
              },
              source_vm_cpucount: {
                required: false,
                serialized_name: 'sourceVmCPUCount',
                type: {
                  name: 'Number'
                }
              },
              enable_rdpon_target_option: {
                required: false,
                serialized_name: 'enableRDPOnTargetOption',
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
              recovery_availability_set_id: {
                required: false,
                serialized_name: 'recoveryAvailabilitySetId',
                type: {
                  name: 'String'
                }
              },
              use_managed_disks: {
                required: false,
                serialized_name: 'useManagedDisks',
                type: {
                  name: 'String'
                }
              },
              license_type: {
                required: false,
                serialized_name: 'licenseType',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
