# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_06_01_preview
  module Models
    #
    # Subscription update details.
    #
    class SubscriptionUpdateParameters

      include MsRestAzure

      # @return [String] User identifier path: /users/{userId}
      attr_accessor :owner_id

      # @return [String] Scope like /products/{productId} or /apis or
      # /apis/{apiId}
      attr_accessor :scope

      # @return [DateTime] Subscription expiration date. The setting is for
      # audit purposes only and the subscription is not automatically expired.
      # The subscription lifecycle can be managed by using the `state`
      # property. The date conforms to the following format:
      # `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
      attr_accessor :expiration_date

      # @return [String] Subscription name.
      attr_accessor :display_name

      # @return [String] Primary subscription key.
      attr_accessor :primary_key

      # @return [String] Secondary subscription key.
      attr_accessor :secondary_key

      # @return [SubscriptionState] Subscription state. Possible states are *
      # active – the subscription is active, * suspended – the subscription is
      # blocked, and the subscriber cannot call any APIs of the product, *
      # submitted – the subscription request has been made by the developer,
      # but has not yet been approved or rejected, * rejected – the
      # subscription request has been denied by an administrator, * cancelled –
      # the subscription has been cancelled by the developer or administrator,
      # * expired – the subscription reached its expiration date and was
      # deactivated. Possible values include: 'suspended', 'active', 'expired',
      # 'submitted', 'rejected', 'cancelled'
      attr_accessor :state

      # @return [String] Comments describing subscription state change by the
      # administrator.
      attr_accessor :state_comment

      # @return [Boolean] Determines whether tracing can be enabled
      attr_accessor :allow_tracing


      #
      # Mapper for SubscriptionUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SubscriptionUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'SubscriptionUpdateParameters',
            model_properties: {
              owner_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.ownerId',
                type: {
                  name: 'String'
                }
              },
              scope: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.scope',
                type: {
                  name: 'String'
                }
              },
              expiration_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.expirationDate',
                type: {
                  name: 'DateTime'
                }
              },
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.displayName',
                type: {
                  name: 'String'
                }
              },
              primary_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.primaryKey',
                constraints: {
                  MaxLength: 256,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              secondary_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.secondaryKey',
                constraints: {
                  MaxLength: 256,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.state',
                type: {
                  name: 'Enum',
                  module: 'SubscriptionState'
                }
              },
              state_comment: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.stateComment',
                type: {
                  name: 'String'
                }
              },
              allow_tracing: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.allowTracing',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
