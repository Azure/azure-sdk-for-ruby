# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2016_04_30_preview
  module Models
    #
    # Describes a Virtual Machine.
    #
    class VirtualMachine < Resource

      include MsRestAzure

      # @return [Plan] The purchase plan when deploying virtual machine from VM
      # Marketplace images.
      attr_accessor :plan

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
      # the virtual machine belongs.
      attr_accessor :availability_set

      # @return [String] The provisioning state, which only appears in the
      # response.
      attr_accessor :provisioning_state

      # @return [VirtualMachineInstanceView] The virtual machine instance view.
      attr_accessor :instance_view

      # @return [String] Specifies that the image or disk that is being used
      # was licensed on-premises. This element is only used for images that
      # contain the Windows Server operating system.
      attr_accessor :license_type

      # @return [String] Specifies the VM unique ID which is a 128-bits
      # identifier that is encoded and stored in all Azure IaaS VMs SMBIOS and
      # can be read using platform BIOS commands.
      attr_accessor :vm_id

      # @return [Array<VirtualMachineExtension>] The virtual machine child
      # extension resources.
      attr_accessor :resources

      # @return [VirtualMachineIdentity] The identity of the virtual machine,
      # if configured.
      attr_accessor :identity


      #
      # Mapper for VirtualMachine class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachine',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachine',
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
              plan: {
                required: false,
                serialized_name: 'plan',
                type: {
                  name: 'Composite',
                  class_name: 'Plan'
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
              instance_view: {
                required: false,
                read_only: true,
                serialized_name: 'properties.instanceView',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineInstanceView'
                }
              },
              license_type: {
                required: false,
                serialized_name: 'properties.licenseType',
                type: {
                  name: 'String'
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
              },
              identity: {
                required: false,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineIdentity'
                }
              }
            }
          }
        }
      end
    end
  end
end
