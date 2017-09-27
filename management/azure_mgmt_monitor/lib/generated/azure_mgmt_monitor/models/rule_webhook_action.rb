# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Monitor
  module Models
    #
    # Specifies the action to post to service when the rule condition is
    # evaluated. The discriminator is always RuleWebhookAction in this case.
    #
    class RuleWebhookAction < RuleAction

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @odata.type = "Microsoft.Azure.Management.Insights.Models.RuleWebhookAction"
      end

      attr_accessor :odata.type

      # @return [String] the service uri to Post the notification when the
      # alert activates or resolves.
      attr_accessor :service_uri

      # @return [Hash{String => String}] the dictionary of custom properties to
      # include with the post operation. These data are appended to the webhook
      # payload.
      attr_accessor :properties


      #
      # Mapper for RuleWebhookAction class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Microsoft.Azure.Management.Insights.Models.RuleWebhookAction',
          type: {
            name: 'Composite',
            class_name: 'RuleWebhookAction',
            model_properties: {
              odata.type: {
                required: true,
                serialized_name: 'odata\\.type',
                type: {
                  name: 'String'
                }
              },
              service_uri: {
                required: false,
                serialized_name: 'serviceUri',
                type: {
                  name: 'String'
                }
              },
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
