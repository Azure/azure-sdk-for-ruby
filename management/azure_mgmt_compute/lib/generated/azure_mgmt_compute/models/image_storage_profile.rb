# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Describes a storage profile.
    #
    class ImageStorageProfile

      include MsRestAzure

      # @return [ImageOSDisk] The OS disk.
      attr_accessor :os_disk

      # @return [Array<ImageDataDisk>] The data disks.
      attr_accessor :data_disks


      #
      # Mapper for ImageStorageProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ImageStorageProfile',
          type: {
            name: 'Composite',
            class_name: 'ImageStorageProfile',
            model_properties: {
              os_disk: {
                required: true,
                serialized_name: 'osDisk',
                type: {
                  name: 'Composite',
                  class_name: 'ImageOSDisk'
                }
              },
              data_disks: {
                required: false,
                serialized_name: 'dataDisks',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ImageDataDiskElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ImageDataDisk'
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
