# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Describes a virtual machine scale set virtual machine.
    #
    class VirtualMachineScaleSetVM < MsRestAzure::Resource

      include MsRestAzure

      # @return [String] The virtual machine instance ID.
      attr_accessor :instance_id

      # @return [Sku] The virtual machine SKU.
      attr_accessor :sku

      # @return [Boolean] Specifies whether the latest model has been applied
      # to the virtual machine.
      attr_accessor :latest_model_applied

      # @return [String] Azure VM unique ID.
      attr_accessor :vm_id

      # @return [VirtualMachineInstanceView] The virtual machine instance view.
      attr_accessor :instance_view

      # @return [HardwareProfile] The hardware profile.
      attr_accessor :hardware_profile

      # @return [StorageProfile] The storage profile.
      attr_accessor :storage_profile

      # @return [OSProfile] The OS profile.
      attr_accessor :os_profile

      # @return [NetworkProfile] The network profile.
      attr_accessor :network_profile

      # @return [DiagnosticsProfile] The diagnostics profile.
      attr_accessor :diagnostics_profile

      # @return [SubResource] The reference Id of the availability set to which
      # this virtual machine belongs.
      attr_accessor :availability_set

      # @return [String] The provisioning state, which only appears in the
      # response.
      attr_accessor :provisioning_state

      # @return [String] The license type, which is for bring your own license
      # scenario.
      attr_accessor :license_type

      # @return [Plan] The purchase plan when deploying virtual machine from VM
      # Marketplace images.
      attr_accessor :plan

      # @return [Array<VirtualMachineExtension>] The virtual machine child
      # extension resources.
      attr_accessor :resources


      #
      # Mapper for VirtualMachineScaleSetVM class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineScaleSetVM',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetVM',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              instance_id: {
                required: false,
                read_only: true,
                serialized_name: 'instanceId',
                type: {
                  name: 'String'
                }
              },
              sku: {
                required: false,
                read_only: true,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              latest_model_applied: {
                required: false,
                read_only: true,
                serialized_name: 'properties.latestModelApplied',
                type: {
                  name: 'Boolean'
                }
              },
              vm_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.vmId',
                type: {
                  name: 'String'
                }
              },
              instance_view: {
                required: false,
                read_only: true,
                serialized_name: 'properties.instanceView',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineInstanceView'
                }
              },
              hardware_profile: {
                required: false,
                serialized_name: 'properties.hardwareProfile',
                type: {
                  name: 'Composite',
                  class_name: 'HardwareProfile'
                }
              },
              storage_profile: {
                required: false,
                serialized_name: 'properties.storageProfile',
                type: {
                  name: 'Composite',
                  class_name: 'StorageProfile'
                }
              },
              os_profile: {
                required: false,
                serialized_name: 'properties.osProfile',
                type: {
                  name: 'Composite',
                  class_name: 'OSProfile'
                }
              },
              network_profile: {
                required: false,
                serialized_name: 'properties.networkProfile',
                type: {
                  name: 'Composite',
                  class_name: 'NetworkProfile'
                }
              },
              diagnostics_profile: {
                required: false,
                serialized_name: 'properties.diagnosticsProfile',
                type: {
                  name: 'Composite',
                  class_name: 'DiagnosticsProfile'
                }
              },
              availability_set: {
                required: false,
                serialized_name: 'properties.availabilitySet',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              license_type: {
                required: false,
                serialized_name: 'properties.licenseType',
                type: {
                  name: 'String'
                }
              },
              plan: {
                required: false,
                serialized_name: 'plan',
                type: {
                  name: 'Composite',
                  class_name: 'Plan'
                }
              },
              resources: {
                required: false,
                read_only: true,
                serialized_name: 'resources',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VirtualMachineExtensionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualMachineExtension'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
