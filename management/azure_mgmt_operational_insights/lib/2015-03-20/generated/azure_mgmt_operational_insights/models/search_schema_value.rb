# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::OperationalInsights::Mgmt::V2015_03_20
  module Models
    #
    # Value object for schema results.
    #
    class SearchSchemaValue

      include MsRestAzure

      # @return [String] The name of the schema.
      attr_accessor :name

      # @return [String] The display name of the schema.
      attr_accessor :display_name

      # @return [String] The type.
      attr_accessor :type

      # @return [Boolean] The boolean that indicates the field is searchable as
      # free text.
      attr_accessor :indexed

      # @return [Boolean] The boolean that indicates whether or not the field
      # is stored.
      attr_accessor :stored

      # @return [Boolean] The boolean that indicates whether or not the field
      # is a facet.
      attr_accessor :facet

      # @return [Array<String>] The array of workflows containing the field.
      attr_accessor :owner_type


      #
      # Mapper for SearchSchemaValue class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SearchSchemaValue',
          type: {
            name: 'Composite',
            class_name: 'SearchSchemaValue',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              indexed: {
                required: true,
                serialized_name: 'indexed',
                type: {
                  name: 'Boolean'
                }
              },
              stored: {
                required: true,
                serialized_name: 'stored',
                type: {
                  name: 'Boolean'
                }
              },
              facet: {
                required: true,
                serialized_name: 'facet',
                type: {
                  name: 'Boolean'
                }
              },
              owner_type: {
                required: false,
                serialized_name: 'ownerType',
                type: {
                  name: 'Sequence',
                  element: {
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
