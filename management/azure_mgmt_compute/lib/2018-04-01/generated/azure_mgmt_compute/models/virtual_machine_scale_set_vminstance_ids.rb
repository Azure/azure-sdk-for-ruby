# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2018_04_01
  module Models
    #
    # Specifies a list of virtual machine instance IDs from the VM scale set.
    #
    class VirtualMachineScaleSetVMInstanceIDs

      include MsRestAzure

      # @return [Array<String>] The virtual machine scale set instance ids.
      # Omitting the virtual machine scale set instance ids will result in the
      # operation being performed on all virtual machines in the virtual
      # machine scale set.
      attr_accessor :instance_ids


      #
      # Mapper for VirtualMachineScaleSetVMInstanceIDs class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualMachineScaleSetVMInstanceIDs',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetVMInstanceIDs',
            model_properties: {
              instance_ids: {
                client_side_validation: true,
                required: false,
                serialized_name: 'instanceIds',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
