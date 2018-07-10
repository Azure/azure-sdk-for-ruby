# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2017_06_15_preview
  module Models
    #
    # Event Subscription
    #
    class EventSubscription < Resource

      include MsRestAzure

      # @return [String] Name of the topic of the event subscription.
      attr_accessor :topic

      # @return [EventSubscriptionProvisioningState] Provisioning state of the
      # event subscription. Possible values include: 'Creating', 'Updating',
      # 'Deleting', 'Succeeded', 'Canceled', 'Failed'
      attr_accessor :provisioning_state

      # @return [EventSubscriptionDestination] Information about the
      # destination where events have to be delivered for the event
      # subscription.
      attr_accessor :destination

      # @return [EventSubscriptionFilter] Information about the filter for the
      # event subscription.
      attr_accessor :filter

      # @return [Array<String>] List of user defined labels.
      attr_accessor :labels


      #
      # Mapper for EventSubscription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EventSubscription',
          type: {
            name: 'Composite',
            class_name: 'EventSubscription',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              topic: {
                required: false,
                read_only: true,
                serialized_name: 'properties.topic',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              destination: {
                required: false,
                serialized_name: 'properties.destination',
                type: {
                  name: 'Composite',
                  class_name: 'EventSubscriptionDestination'
                }
              },
              filter: {
                required: false,
                serialized_name: 'properties.filter',
                type: {
                  name: 'Composite',
                  class_name: 'EventSubscriptionFilter'
                }
              },
              labels: {
                required: false,
                serialized_name: 'properties.labels',
                type: {
                  name: 'Sequence',
                  element: {
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
