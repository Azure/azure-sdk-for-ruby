# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Describes a virtual machine scale set storage profile.
    #
    class VirtualMachineScaleSetStorageProfile

      include MsRestAzure

      include MsRest::JSONable
      # @return [ImageReference] The image reference.
      attr_accessor :image_reference

      # @return [VirtualMachineScaleSetOSDisk] The OS disk.
      attr_accessor :os_disk

      # @return [Array<VirtualMachineScaleSetDataDisk>] The data disks.
      attr_accessor :data_disks


      #
      # Mapper for VirtualMachineScaleSetStorageProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineScaleSetStorageProfile',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetStorageProfile',
            model_properties: {
              image_reference: {
                required: false,
                serialized_name: 'imageReference',
                type: {
                  name: 'Composite',
                  class_name: 'ImageReference'
                }
              },
              os_disk: {
                required: false,
                serialized_name: 'osDisk',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineScaleSetOSDisk'
                }
              },
              data_disks: {
                required: false,
                serialized_name: 'dataDisks',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VirtualMachineScaleSetDataDiskElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualMachineScaleSetDataDisk'
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
