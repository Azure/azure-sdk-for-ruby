# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Scheduler
  module Models
    #
    # Model object.
    #
    #
    class Sku

      include MsRestAzure

      # @return [SkuDefinition] Gets or set the SKU. Possible values include:
      # 'Standard', 'Free', 'P10Premium', 'P20Premium'
      attr_accessor :name


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
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'Enum',
                  module: 'SkuDefinition'
                }
              }
            }
          }
        }
      end
    end
  end
end
