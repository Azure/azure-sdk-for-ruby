# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CustomerInsights::Mgmt::V2017_04_26
  module Models
    #
    # The resource set description.
    #
    class ResourceSetDescription

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<String>] The elements included in the set.
      attr_accessor :elements

      # @return [Array<String>] The elements that are not included in the set,
      # in case elements contains '*' indicating 'all'.
      attr_accessor :exceptions


      #
      # Mapper for ResourceSetDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourceSetDescription',
          type: {
            name: 'Composite',
            class_name: 'ResourceSetDescription',
            model_properties: {
              elements: {
                client_side_validation: true,
                required: false,
                serialized_name: 'elements',
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
              },
              exceptions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'exceptions',
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
