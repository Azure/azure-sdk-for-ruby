# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CognitiveServices
  module Models
    #
    # The SKU of the cognitive services account.
    #
    class Sku

      include MsRestAzure

      include MsRest::JSONable
      # @return [SkuName] Gets or sets the sku name. Required for account
      # creation, optional for update. Possible values include: 'F0', 'P0',
      # 'P1', 'P2', 'S0', 'S1', 'S2', 'S3', 'S4', 'S5', 'S6'
      attr_accessor :name

      # @return [SkuTier] Gets the sku tier. This is based on the SKU name.
      # Possible values include: 'Free', 'Standard', 'Premium'
      attr_accessor :tier


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
                read_only: true,
                serialized_name: 'tier',
                type: {
                  name: 'Enum',
                  module: 'SkuTier'
                }
              }
            }
          }
        }
      end
    end
  end
end
