# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01_preview
  module Models
    #
    # Property Entity Base Parameters set.
    #
    class PropertyEntityBaseParameters

      include MsRestAzure

      # @return [Array<String>] Optional tags that when provided can be used to
      # filter the property list.
      attr_accessor :tags

      # @return [Boolean] Determines whether the value is a secret and should
      # be encrypted or not. Default value is false.
      attr_accessor :secret


      #
      # Mapper for PropertyEntityBaseParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PropertyEntityBaseParameters',
          type: {
            name: 'Composite',
            class_name: 'PropertyEntityBaseParameters',
            model_properties: {
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                constraints: {
                  MaxItems: 32
                },
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
              secret: {
                client_side_validation: true,
                required: false,
                serialized_name: 'secret',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
