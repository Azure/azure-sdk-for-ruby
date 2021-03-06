# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2020_10_15_preview
  module Models
    #
    # Static delivery attribute mapping details.
    #
    class StaticDeliveryAttributeMapping < DeliveryAttributeMapping

      include MsRestAzure


      def initialize
        @type = "Static"
      end

      attr_accessor :type

      # @return [String] Value of the delivery attribute.
      attr_accessor :value

      # @return [Boolean] Boolean flag to tell if the attribute contains
      # sensitive information .
      attr_accessor :is_secret


      #
      # Mapper for StaticDeliveryAttributeMapping class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Static',
          type: {
            name: 'Composite',
            class_name: 'StaticDeliveryAttributeMapping',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.value',
                type: {
                  name: 'String'
                }
              },
              is_secret: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isSecret',
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
