# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Redis::Mgmt::V2017_02_01
  module Models
    #
    # SKU parameters supplied to the create Redis operation.
    #
    class Sku

      include MsRestAzure

      include MsRest::JSONable
      # @return [SkuName] The type of Redis cache to deploy. Valid values:
      # (Basic, Standard, Premium). Possible values include: 'Basic',
      # 'Standard', 'Premium'
      attr_accessor :name

      # @return [SkuFamily] The SKU family to use. Valid values: (C, P). (C =
      # Basic/Standard, P = Premium). Possible values include: 'C', 'P'
      attr_accessor :family

      # @return [Integer] The size of the Redis cache to deploy. Valid values:
      # for C (Basic/Standard) family (0, 1, 2, 3, 4, 5, 6), for P (Premium)
      # family (1, 2, 3, 4).
      attr_accessor :capacity


      #
      # Mapper for Sku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Sku',
          type: {
            name: 'Composite',
            class_name: 'Sku',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              family: {
                client_side_validation: true,
                required: true,
                serialized_name: 'family',
                type: {
                  name: 'String'
                }
              },
              capacity: {
                client_side_validation: true,
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
