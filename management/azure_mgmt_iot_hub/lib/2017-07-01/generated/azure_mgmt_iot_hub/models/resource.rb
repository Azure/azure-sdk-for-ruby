# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotHub::Mgmt::V2017_07_01
  module Models
    #
    # The common properties of an Azure resource.
    #
    class Resource

      include MsRestAzure

      # @return [String] The resource identifier.
      attr_accessor :id

      # @return [String] The resource name.
      attr_accessor :name

      # @return [String] The resource type.
      attr_accessor :type

      # @return [String] The resource location.
      attr_accessor :location

      # @return [Hash{String => String}] The resource tags.
      attr_accessor :tags


      #
      # Mapper for Resource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Resource',
          type: {
            name: 'Composite',
            class_name: 'Resource',
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
                constraints: {
                  Pattern: '^(?![0-9]+$)(?!-)[a-zA-Z0-9-]{2,49}[a-zA-Z0-9]$'
                },
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
              }
            }
          }
        }
      end
    end
  end
end
