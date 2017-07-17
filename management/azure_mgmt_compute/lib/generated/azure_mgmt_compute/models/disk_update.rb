# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Disk update resource.
    #
    class DiskUpdate < MsRestAzure::ResourceUpdate

      include MsRestAzure

      # @return [OperatingSystemTypes] the Operating System type. Possible
      # values include: 'Windows', 'Linux'
      attr_accessor :os_type

      # @return [Integer] If creationData.createOption is Empty, this field is
      # mandatory and it indicates the size of the VHD to create. If this field
      # is present for updates or creation with other options, it indicates a
      # resize. Resizes are only allowed if the disk is not attached to a
      # running VM, and can only increase the disk's size.
      attr_accessor :disk_size_gb

      # @return [EncryptionSettings] Encryption settings for disk or snapshot
      attr_accessor :encryption_settings


      #
      # Mapper for DiskUpdate class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DiskUpdate',
          type: {
            name: 'Composite',
            class_name: 'DiskUpdate',
            model_properties: {
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
              sku: {
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'DiskSku'
                }
              },
              os_type: {
                required: false,
                serialized_name: 'properties.osType',
                type: {
                  name: 'Enum',
                  module: 'OperatingSystemTypes'
                }
              },
              disk_size_gb: {
                required: false,
                serialized_name: 'properties.diskSizeGB',
                type: {
                  name: 'Number'
                }
              },
              encryption_settings: {
                required: false,
                serialized_name: 'properties.encryptionSettings',
                type: {
                  name: 'Composite',
                  class_name: 'EncryptionSettings'
                }
              }
            }
          }
        }
      end
    end
  end
end
