# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2015_06_15
  module Models
    #
    # The instance view of a virtual machine scale set VM.
    #
    class VirtualMachineScaleSetVMInstanceView

      include MsRestAzure

      include MsRest::JSONable
      # @return [Integer] The Update Domain count.
      attr_accessor :platform_update_domain

      # @return [Integer] The Fault Domain count.
      attr_accessor :platform_fault_domain

      # @return [String] The Remote desktop certificate thumbprint.
      attr_accessor :rdp_thumb_print

      # @return [VirtualMachineAgentInstanceView] The VM Agent running on the
      # virtual machine.
      attr_accessor :vm_agent

      # @return [Array<DiskInstanceView>] The disks information.
      attr_accessor :disks

      # @return [Array<VirtualMachineExtensionInstanceView>] The extensions
      # information.
      attr_accessor :extensions

      # @return [BootDiagnosticsInstanceView] The boot diagnostics.
      attr_accessor :boot_diagnostics

      # @return [Array<InstanceViewStatus>] The resource status information.
      attr_accessor :statuses


      #
      # Mapper for VirtualMachineScaleSetVMInstanceView class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualMachineScaleSetVMInstanceView',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetVMInstanceView',
            model_properties: {
              platform_update_domain: {
                client_side_validation: true,
                required: false,
                serialized_name: 'platformUpdateDomain',
                type: {
                  name: 'Number'
                }
              },
              platform_fault_domain: {
                client_side_validation: true,
                required: false,
                serialized_name: 'platformFaultDomain',
                type: {
                  name: 'Number'
                }
              },
              rdp_thumb_print: {
                client_side_validation: true,
                required: false,
                serialized_name: 'rdpThumbPrint',
                type: {
                  name: 'String'
                }
              },
              vm_agent: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vmAgent',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineAgentInstanceView'
                }
              },
              disks: {
                client_side_validation: true,
                required: false,
                serialized_name: 'disks',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DiskInstanceViewElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DiskInstanceView'
                      }
                  }
                }
              },
              extensions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'extensions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VirtualMachineExtensionInstanceViewElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualMachineExtensionInstanceView'
                      }
                  }
                }
              },
              boot_diagnostics: {
                client_side_validation: true,
                required: false,
                serialized_name: 'bootDiagnostics',
                type: {
                  name: 'Composite',
                  class_name: 'BootDiagnosticsInstanceView'
                }
              },
              statuses: {
                client_side_validation: true,
                required: false,
                serialized_name: 'statuses',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'InstanceViewStatusElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'InstanceViewStatus'
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
