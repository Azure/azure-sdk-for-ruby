# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_07_07
  module Models
    #
    # Parameters supplied to the Create Property operation.
    #
    class PropertyCreateParameters

      include MsRestAzure

      # @return [String] Unique name of Property. It may contain only letters,
      # digits, period, dash, and underscore characters.
      attr_accessor :name

      # @return [String] Value of the property. Can contain policy expressions.
      # It may not be empty or consist only of whitespace.
      attr_accessor :value

      # @return [Array<String>] Optional tags that when provided can be used to
      # filter the property list.
      attr_accessor :tags

      # @return [Boolean] Determines whether the value is a secret and should
      # be encrypted or not. Default value is false.
      attr_accessor :secret


      #
      # Mapper for PropertyCreateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PropertyCreateParameters',
          type: {
            name: 'Composite',
            class_name: 'PropertyCreateParameters',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                constraints: {
                  MaxLength: 256,
                  MinLength: 1,
                  Pattern: '^[A-Z0-9-._]+$'
                },
                type: {
                  name: 'String'
                }
              },
              value: {
                required: true,
                serialized_name: 'value',
                constraints: {
                  MaxLength: 4096,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                constraints: {
                  MaxItems: 32
                },
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
              },
              secret: {
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
