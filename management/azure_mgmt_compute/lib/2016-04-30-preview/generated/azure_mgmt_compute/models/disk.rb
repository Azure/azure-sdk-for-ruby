# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute::Api_2016_04_30_preview
  module Models
    #
    # Disk resource.
    #
    class Disk < Resource

      include MsRestAzure

      # @return [StorageAccountTypes] the storage account type of the disk.
      # Possible values include: 'Standard_LRS', 'Premium_LRS'
      attr_accessor :account_type

      # @return [DateTime] The time when the disk was created.
      attr_accessor :time_created

      # @return [OperatingSystemTypes] The Operating System type. Possible
      # values include: 'Windows', 'Linux'
      attr_accessor :os_type

      # @return [CreationData] Disk source information. CreationData
      # information cannot be changed after the disk has been created.
      attr_accessor :creation_data

      # @return [Integer] If creationData.createOption is Empty, this field is
      # mandatory and it indicates the size of the VHD to create. If this field
      # is present for updates or creation with other options, it indicates a
      # resize. Resizes are only allowed if the disk is not attached to a
      # running VM, and can only increase the disk's size.
      attr_accessor :disk_size_gb

      # @return [EncryptionSettings] Encryption settings for disk or snapshot
      attr_accessor :encryption_settings

      # @return [String] A relative URI containing the VM id that has the disk
      # attached.
      attr_accessor :owner_id

      # @return [String] The disk provisioning state.
      attr_accessor :provisioning_state


      #
      # Mapper for Disk class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Disk',
          type: {
            name: 'Composite',
            class_name: 'Disk',
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
              account_type: {
                required: false,
                serialized_name: 'properties.accountType',
                type: {
                  name: 'Enum',
                  module: 'StorageAccountTypes'
                }
              },
              time_created: {
                required: false,
                read_only: true,
                serialized_name: 'properties.timeCreated',
                type: {
                  name: 'DateTime'
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
              creation_data: {
                required: true,
                serialized_name: 'properties.creationData',
                type: {
                  name: 'Composite',
                  class_name: 'CreationData'
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
              },
              owner_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.ownerId',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
