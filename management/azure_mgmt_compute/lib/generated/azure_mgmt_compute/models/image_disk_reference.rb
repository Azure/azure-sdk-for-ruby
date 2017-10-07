# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # The source image used for creating the disk.
    #
    class ImageDiskReference

      include MsRestAzure

      # @return [String] A relative uri containing either a Platform Imgage
      # Repository or user image reference.
      attr_accessor :id

      # @return [Integer] If the disk is created from an image's data disk,
      # this is an index that indicates which of the data disks in the image to
      # use. For OS disks, this field is null.
      attr_accessor :lun


      #
      # Mapper for ImageDiskReference class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ImageDiskReference',
          type: {
            name: 'Composite',
            class_name: 'ImageDiskReference',
            model_properties: {
              id: {
                required: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              lun: {
                required: false,
                serialized_name: 'lun',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
