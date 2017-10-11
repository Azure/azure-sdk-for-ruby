# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute::Api_2017_03_30
  module Models
    #
    # Describes the properties of a Run Command metadata.
    #
    class RunCommandDocumentBase

      include MsRestAzure

      # @return [String] The VM run command schema.
      attr_accessor :schema

      # @return [String] The VM run command id.
      attr_accessor :id

      # @return [OperatingSystemTypes] The Operating System type. Possible
      # values include: 'Windows', 'Linux'
      attr_accessor :os_type

      # @return [String] The VM run command label.
      attr_accessor :label

      # @return [String] The VM run command description.
      attr_accessor :description


      #
      # Mapper for RunCommandDocumentBase class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RunCommandDocumentBase',
          type: {
            name: 'Composite',
            class_name: 'RunCommandDocumentBase',
            model_properties: {
              schema: {
                required: true,
                serialized_name: '$schema',
                type: {
                  name: 'String'
                }
              },
              id: {
                required: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              os_type: {
                required: true,
                serialized_name: 'osType',
                type: {
                  name: 'Enum',
                  module: 'OperatingSystemTypes'
                }
              },
              label: {
                required: true,
                serialized_name: 'label',
                type: {
                  name: 'String'
                }
              },
              description: {
                required: true,
                serialized_name: 'description',
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
