# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CDN
  module Models
    #
    # Result of the request to list CDN edgenodes. It contains a list of ip
    # address group and a URL link to get the next set of results.
    #
    class EdgenodeResult

      include MsRestAzure

      # @return Edge node of CDN service.
      attr_accessor :value


      #
      # Mapper for EdgenodeResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EdgenodeResult',
          type: {
            name: 'Composite',
            class_name: 'EdgenodeResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
