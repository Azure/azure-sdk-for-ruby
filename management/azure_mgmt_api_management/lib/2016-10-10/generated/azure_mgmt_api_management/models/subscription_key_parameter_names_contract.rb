# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_10_10
  module Models
    #
    # Subscription key parameter names details.
    #
    class SubscriptionKeyParameterNamesContract

      include MsRestAzure

      # @return [String] Subscription key header name.
      attr_accessor :header

      # @return [String] Subscription key query string parameter name.
      attr_accessor :query


      #
      # Mapper for SubscriptionKeyParameterNamesContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SubscriptionKeyParameterNamesContract',
          type: {
            name: 'Composite',
            class_name: 'SubscriptionKeyParameterNamesContract',
            model_properties: {
              header: {
                client_side_validation: true,
                required: false,
                serialized_name: 'header',
                type: {
                  name: 'String'
                }
              },
              query: {
                client_side_validation: true,
                required: false,
                serialized_name: 'query',
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
