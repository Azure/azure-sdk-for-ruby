# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic::Api_2016_06_01
  module Models
    #
    # The integration account partner content.
    #
    class PartnerContent

      include MsRestAzure

      # @return [B2BPartnerContent] The B2B partner content.
      attr_accessor :b2b


      #
      # Mapper for PartnerContent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PartnerContent',
          type: {
            name: 'Composite',
            class_name: 'PartnerContent',
            model_properties: {
              b2b: {
                required: false,
                serialized_name: 'b2b',
                type: {
                  name: 'Composite',
                  class_name: 'B2BPartnerContent'
                }
              }
            }
          }
        }
      end
    end
  end
end
