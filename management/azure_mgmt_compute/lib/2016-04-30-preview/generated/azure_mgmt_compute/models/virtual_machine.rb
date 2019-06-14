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

      # @return [Plan] Specifies information about the marketplace image used
      # to create the virtual machine. This element is only used for
      # marketplace images. Before you can use a marketplace image from an API,
      # you must enable the image for programmatic use.  In the Azure portal,
      # find the marketplace image that you want to use and then click **Want
      # to deploy programmatically, Get Started ->**. Enter any required
      # information and then click **Save**.
      attr_accessor :plan

      # @return [HardwareProfile] Specifies the hardware settings for the
      # virtual machine.
      attr_accessor :hardware_profile

      # @return [StorageProfile] Specifies the storage settings for the virtual
      # machine disks.
      attr_accessor :storage_profile

      # @return [OSProfile] Specifies the operating system settings for the
      # virtual machine.
      attr_accessor :os_profile

      # @return [NetworkProfile] Specifies the network interfaces of the
      # virtual machine.
      attr_accessor :network_profile

      # @return [DiagnosticsProfile] Specifies the boot diagnostic settings
      # state. <br><br>Minimum api-version: 2015-06-15.
      attr_accessor :diagnostics_profile

      # @return [SubResource] Specifies information about the availability set
      # that the virtual machine should be assigned to. Virtual machines
      # specified in the same availability set are allocated to different nodes
      # to maximize availability. For more information about availability sets,
      # see [Manage the availability of virtual
      # machines](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-manage-availability?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json).
      # <br><br> For more information on Azure planned maintenance, see
      # [Planned maintenance for virtual machines in
      # Azure](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-planned-maintenance?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json)
      # <br><br> Currently, a VM can only be added to availability set at
      # creation time. An existing VM cannot be added to an availability set.
      attr_accessor :availability_set

      # @return [String] The provisioning state, which only appears in the
      # response.
      attr_accessor :provisioning_state

      # @return [VirtualMachineInstanceView] The virtual machine instance view.
      attr_accessor :instance_view

      # @return [String] Specifies that the image or disk that is being used
      # was licensed on-premises. This element is only used for images that
      # contain the Windows Server operating system. <br><br> Possible values
      # are: <br><br> Windows_Client <br><br> Windows_Server <br><br> If this
      # element is included in a request for an update, the value must match
      # the initial value. This value cannot be updated. <br><br> For more
      # information, see [Azure Hybrid Use Benefit for Windows
      # Server](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-hybrid-use-benefit-licensing?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json)
      # <br><br> Minimum api-version: 2015-06-15
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
