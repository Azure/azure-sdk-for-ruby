# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # InMage provider specific settings
    #
    class InMageReplicationDetails < ReplicationProviderSpecificSettings

      include MsRestAzure


      def initialize
        @instanceType = "InMage"
      end

      attr_accessor :instanceType

      # @return [String] The active location of the VM. If the VM is being
      # protected from Azure, this field will take values from { Azure, OnPrem
      # }. If the VM is being protected between two data-centers, this field
      # will be OnPrem always.
      attr_accessor :active_site_type

      # @return [Integer] The CPU count of the VM on the primary side.
      attr_accessor :source_vm_cpucount

      # @return [Integer] The RAM size of the VM on the primary side.
      attr_accessor :source_vm_ramsize_in_mb

      # @return [OSDiskDetails] The OS details.
      attr_accessor :os_details

      # @return [String] The protection stage.
      attr_accessor :protection_stage

      # @return [String] The virtual machine Id.
      attr_accessor :vm_id

      # @return [String] The protection state for the vm.
      attr_accessor :vm_protection_state

      # @return [String] The protection state description for the vm.
      attr_accessor :vm_protection_state_description

      # @return [InitialReplicationDetails] The resync details of the machine
      attr_accessor :resync_details

      # @return [DateTime] The retention window start time.
      attr_accessor :retention_window_start

      # @return [DateTime] The retention window end time.
      attr_accessor :retention_window_end

      # @return [Float] The compressed data change rate in MB.
      attr_accessor :compressed_data_rate_in_mb

      # @return [Float] The uncompressed data change rate in MB.
      attr_accessor :uncompressed_data_rate_in_mb

      # @return [Integer] The RPO in seconds.
      attr_accessor :rpo_in_seconds

      # @return [Array<InMageProtectedDiskDetails>] The list of protected
      # disks.
      attr_accessor :protected_disks

      # @return [String] The source IP address.
      attr_accessor :ip_address

      # @return [DateTime] The last heartbeat received from the source server.
      attr_accessor :last_heartbeat

      # @return [String] The process server Id.
      attr_accessor :process_server_id

      # @return [String] The master target Id.
      attr_accessor :master_target_id

      # @return [Hash{String => DateTime}] The collection of Consistency
      # points.
      attr_accessor :consistency_points

      # @return [String] A value indicating whether any disk is resized for
      # this VM.
      attr_accessor :disk_resized

      # @return [String] A value indicating whether the source server requires
      # a restart after update.
      attr_accessor :reboot_after_update_status

      # @return [String] The multi vm group Id, if any.
      attr_accessor :multi_vm_group_id

      # @return [String] The multi vm group name, if any.
      attr_accessor :multi_vm_group_name

      # @return [String] A value indicating whether the multi vm sync is
      # enabled or disabled.
      attr_accessor :multi_vm_sync_status

      # @return [InMageAgentDetails] The agent details.
      attr_accessor :agent_details

      # @return [String] The vCenter infrastructure Id.
      attr_accessor :v_center_infrastructure_id

      # @return [String] The infrastructure VM Id.
      attr_accessor :infrastructure_vm_id

      # @return [Array<VMNicDetails>] The PE Network details.
      attr_accessor :vm_nics

      # @return [String] A value indicating the discovery type of the machine.
      attr_accessor :discovery_type

      # @return [String] A value indicating the underlying Azure storage
      # account. If the VM is not running in Azure, this value shall be set to
      # null.
      attr_accessor :azure_storage_account_id

      # @return [Array<String>] The datastores of the on-premise machine Value
      # can be list of strings that contain datastore names
      attr_accessor :datastores

      # @return [Array<HealthError>] The validation errors of the on-premise
      # machine Value can be list of validation errors
      attr_accessor :validation_errors

      # @return [DateTime] The last RPO calculated time.
      attr_accessor :last_rpo_calculated_time

      # @return [DateTime] The last update time received from on-prem
      # components.
      attr_accessor :last_update_received_time

      # @return [String] The replica id of the protected item.
      attr_accessor :replica_id

      # @return [String] The OS Version of the protected item.
      attr_accessor :os_version


      #
      # Mapper for InMageReplicationDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'InMage',
          type: {
            name: 'Composite',
            class_name: 'InMageReplicationDetails',
            model_properties: {
              instanceType: {
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              active_site_type: {
                required: false,
                serialized_name: 'activeSiteType',
                type: {
                  name: 'String'
                }
              },
              source_vm_cpucount: {
                required: false,
                serialized_name: 'sourceVmCPUCount',
                type: {
                  name: 'Number'
                }
              },
              source_vm_ramsize_in_mb: {
                required: false,
                serialized_name: 'sourceVmRAMSizeInMB',
                type: {
                  name: 'Number'
                }
              },
              os_details: {
                required: false,
                serialized_name: 'osDetails',
                type: {
                  name: 'Composite',
                  class_name: 'OSDiskDetails'
                }
              },
              protection_stage: {
                required: false,
                serialized_name: 'protectionStage',
                type: {
                  name: 'String'
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
              resync_details: {
                required: false,
                serialized_name: 'resyncDetails',
                type: {
                  name: 'Composite',
                  class_name: 'InitialReplicationDetails'
                }
              },
              retention_window_start: {
                required: false,
                serialized_name: 'retentionWindowStart',
                type: {
                  name: 'DateTime'
                }
              },
              retention_window_end: {
                required: false,
                serialized_name: 'retentionWindowEnd',
                type: {
                  name: 'DateTime'
                }
              },
              compressed_data_rate_in_mb: {
                required: false,
                serialized_name: 'compressedDataRateInMB',
                type: {
                  name: 'Double'
                }
              },
              uncompressed_data_rate_in_mb: {
                required: false,
                serialized_name: 'uncompressedDataRateInMB',
                type: {
                  name: 'Double'
                }
              },
              rpo_in_seconds: {
                required: false,
                serialized_name: 'rpoInSeconds',
                type: {
                  name: 'Number'
                }
              },
              protected_disks: {
                required: false,
                serialized_name: 'protectedDisks',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'InMageProtectedDiskDetailsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'InMageProtectedDiskDetails'
                      }
                  }
                }
              },
              ip_address: {
                required: false,
                serialized_name: 'ipAddress',
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
              process_server_id: {
                required: false,
                serialized_name: 'processServerId',
                type: {
                  name: 'String'
                }
              },
              master_target_id: {
                required: false,
                serialized_name: 'masterTargetId',
                type: {
                  name: 'String'
                }
              },
              consistency_points: {
                required: false,
                serialized_name: 'consistencyPoints',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'DateTimeElementType',
                      type: {
                        name: 'DateTime'
                      }
                  }
                }
              },
              disk_resized: {
                required: false,
                serialized_name: 'diskResized',
                type: {
                  name: 'String'
                }
              },
              reboot_after_update_status: {
                required: false,
                serialized_name: 'rebootAfterUpdateStatus',
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
              multi_vm_sync_status: {
                required: false,
                serialized_name: 'multiVmSyncStatus',
                type: {
                  name: 'String'
                }
              },
              agent_details: {
                required: false,
                serialized_name: 'agentDetails',
                type: {
                  name: 'Composite',
                  class_name: 'InMageAgentDetails'
                }
              },
              v_center_infrastructure_id: {
                required: false,
                serialized_name: 'vCenterInfrastructureId',
                type: {
                  name: 'String'
                }
              },
              infrastructure_vm_id: {
                required: false,
                serialized_name: 'infrastructureVmId',
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
              discovery_type: {
                required: false,
                serialized_name: 'discoveryType',
                type: {
                  name: 'String'
                }
              },
              azure_storage_account_id: {
                required: false,
                serialized_name: 'azureStorageAccountId',
                type: {
                  name: 'String'
                }
              },
              datastores: {
                required: false,
                serialized_name: 'datastores',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              validation_errors: {
                required: false,
                serialized_name: 'validationErrors',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'HealthErrorElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HealthError'
                      }
                  }
                }
              },
              last_rpo_calculated_time: {
                required: false,
                serialized_name: 'lastRpoCalculatedTime',
                type: {
                  name: 'DateTime'
                }
              },
              last_update_received_time: {
                required: false,
                serialized_name: 'lastUpdateReceivedTime',
                type: {
                  name: 'DateTime'
                }
              },
              replica_id: {
                required: false,
                serialized_name: 'replicaId',
                type: {
                  name: 'String'
                }
              },
              os_version: {
                required: false,
                serialized_name: 'osVersion',
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
