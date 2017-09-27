# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StreamAnalytics
  module Models
    #
    # Result of the GetQuotas operation. It contains a list of quotas for the
    # subscription in a particular region.
    #
    class SubscriptionQuotasListResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<SubscriptionQuota>] List of quotas for the subscription
      # in a particular region.
      attr_accessor :value


      #
      # Mapper for SubscriptionQuotasListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SubscriptionQuotasListResult',
          type: {
            name: 'Composite',
            class_name: 'SubscriptionQuotasListResult',
            model_properties: {
              value: {
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SubscriptionQuotaElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubscriptionQuota'
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
