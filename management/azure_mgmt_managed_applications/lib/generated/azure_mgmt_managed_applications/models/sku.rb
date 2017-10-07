# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ManagedApplications
  module Models
    #
    # SKU for the resource.
    #
    class Sku

      include MsRestAzure

      # @return [String] The SKU name.
      attr_accessor :name

      # @return [String] The SKU tier.
      attr_accessor :tier

      # @return [String] The SKU size.
      attr_accessor :size

      # @return [String] The SKU family.
      attr_accessor :family

      # @return [String] The SKU model.
      attr_accessor :model

      # @return [Integer] The SKU capacity.
      attr_accessor :capacity


      #
      # Mapper for Sku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Sku',
          type: {
            name: 'Composite',
            class_name: 'Sku',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              tier: {
                required: false,
                serialized_name: 'tier',
                type: {
                  name: 'String'
                }
              },
              size: {
                required: false,
                serialized_name: 'size',
                type: {
                  name: 'String'
                }
              },
              family: {
                required: false,
                serialized_name: 'family',
                type: {
                  name: 'String'
                }
              },
              model: {
                required: false,
                serialized_name: 'model',
                type: {
                  name: 'String'
                }
              },
              capacity: {
                required: false,
                serialized_name: 'capacity',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
