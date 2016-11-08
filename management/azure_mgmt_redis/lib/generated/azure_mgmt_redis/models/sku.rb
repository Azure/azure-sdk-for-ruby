# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Redis
  module Models
    #
    # Sku parameters supplied to the create redis operation.
    #
    class Sku

      include MsRestAzure

      # @return [SkuName] What type of redis cache to deploy. Valid values:
      # (Basic, Standard, Premium). Possible values include: 'Basic',
      # 'Standard', 'Premium'
      attr_accessor :name

      # @return [SkuFamily] Which family to use. Valid values: (C, P).
      # Possible values include: 'C', 'P'
      attr_accessor :family

      # @return [Integer] What size of redis cache to deploy. Valid values:
      # for C family (0, 1, 2, 3, 4, 5, 6), for P family (1, 2, 3, 4)
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
              family: {
                required: true,
                serialized_name: 'family',
                type: {
                  name: 'String'
                }
              },
              capacity: {
                required: true,
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
