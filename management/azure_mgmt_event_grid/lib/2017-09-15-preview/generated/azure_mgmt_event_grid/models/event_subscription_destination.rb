# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2017_09_15_preview
  module Models
    #
    # Information about the destination for an event subscription
    #
    class EventSubscriptionDestination

      include MsRestAzure

      include MsRest::JSONable
      @@discriminatorMap = Hash.new
      @@discriminatorMap["WebHook"] = "WebHookEventSubscriptionDestination"
      @@discriminatorMap["EventHub"] = "EventHubEventSubscriptionDestination"

      def initialize
        @endpointType = "EventSubscriptionDestination"
      end

      attr_accessor :endpointType


      #
      # Mapper for EventSubscriptionDestination class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EventSubscriptionDestination',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'endpointType',
            uber_parent: 'EventSubscriptionDestination',
            class_name: 'EventSubscriptionDestination',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
