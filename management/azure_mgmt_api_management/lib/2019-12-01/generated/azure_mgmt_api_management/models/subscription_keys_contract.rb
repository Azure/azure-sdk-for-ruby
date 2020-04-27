# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_12_01
  module Models
    #
    # Subscription keys.
    #
    class SubscriptionKeysContract

      include MsRestAzure

      # @return [String] Subscription primary key.
      attr_accessor :primary_key

      # @return [String] Subscription secondary key.
      attr_accessor :secondary_key


      #
      # Mapper for SubscriptionKeysContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SubscriptionKeysContract',
          type: {
            name: 'Composite',
            class_name: 'SubscriptionKeysContract',
            model_properties: {
              primary_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'primaryKey',
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
                serialized_name: 'secondaryKey',
                constraints: {
                  MaxLength: 256,
                  MinLength: 1
                },
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
