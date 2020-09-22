# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DigitalTwins::Mgmt::V2020_10_31
  module Models
    #
    # Definition of a resource.
    #
    class ExternalResource

      include MsRestAzure

      # @return [String] The resource identifier.
      attr_accessor :id

      # @return [String] Extension resource name.
      attr_accessor :name

      # @return [String] The resource type.
      attr_accessor :type


      #
      # Mapper for ExternalResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExternalResource',
          type: {
            name: 'Composite',
            class_name: 'ExternalResource',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
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
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
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
