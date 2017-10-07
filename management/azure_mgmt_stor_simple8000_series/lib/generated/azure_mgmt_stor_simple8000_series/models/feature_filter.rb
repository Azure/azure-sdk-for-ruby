# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StorSimple8000Series
  module Models
    #
    # The OData filter to be used for features.
    #
    class FeatureFilter

      include MsRestAzure

      # @return [String] Specifies the device ID for which the features are
      # required. Only 'Equality' operator is supported for this property.
      attr_accessor :device_id


      #
      # Mapper for FeatureFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'FeatureFilter',
          type: {
            name: 'Composite',
            class_name: 'FeatureFilter',
            model_properties: {
              device_id: {
                required: false,
                serialized_name: 'deviceId',
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
