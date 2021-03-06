# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2020_06_01
  module Models
    #
    # The List VMSS VM Extension operation response
    #
    class VirtualMachineScaleSetVMExtensionsListResult

      include MsRestAzure

      # @return [Array<VirtualMachineScaleSetVMExtension>] The list of VMSS VM
      # extensions
      attr_accessor :value


      #
      # Mapper for VirtualMachineScaleSetVMExtensionsListResult class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualMachineScaleSetVMExtensionsListResult',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetVMExtensionsListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VirtualMachineScaleSetVMExtensionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualMachineScaleSetVMExtension'
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
