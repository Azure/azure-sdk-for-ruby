# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2019_07_01
  module Models
    #
    # Describes a virtual machine scale set storage profile.
    #
    class VirtualMachineScaleSetStorageProfile

      include MsRestAzure

      # @return [ImageReference] Specifies information about the image to use.
      # You can specify information about platform images, marketplace images,
      # or virtual machine images. This element is required when you want to
      # use a platform image, marketplace image, or virtual machine image, but
      # is not used in other creation operations.
      attr_accessor :image_reference

      # @return [VirtualMachineScaleSetOSDisk] Specifies information about the
      # operating system disk used by the virtual machines in the scale set.
      # <br><br> For more information about disks, see [About disks and VHDs
      # for Azure virtual
      # machines](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-about-disks-vhds?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json).
      attr_accessor :os_disk

      # @return [Array<VirtualMachineScaleSetDataDisk>] Specifies the
      # parameters that are used to add data disks to the virtual machines in
      # the scale set. <br><br> For more information about disks, see [About
      # disks and VHDs for Azure virtual
      # machines](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-about-disks-vhds?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json).
      attr_accessor :data_disks


      #
      # Mapper for VirtualMachineScaleSetStorageProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualMachineScaleSetStorageProfile',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetStorageProfile',
            model_properties: {
              image_reference: {
                client_side_validation: true,
                required: false,
                serialized_name: 'imageReference',
                type: {
                  name: 'Composite',
                  class_name: 'ImageReference'
                }
              },
              os_disk: {
                client_side_validation: true,
                required: false,
                serialized_name: 'osDisk',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineScaleSetOSDisk'
                }
              },
              data_disks: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dataDisks',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
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
