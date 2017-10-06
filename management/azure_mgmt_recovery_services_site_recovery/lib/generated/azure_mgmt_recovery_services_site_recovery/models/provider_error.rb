# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # This class contains the error details per object.
    #
    class ProviderError

      include MsRestAzure

      include MsRest::JSONable
      # @return [Integer] The Error code.
      attr_accessor :error_code

      # @return [String] The Error message.
      attr_accessor :error_message

      # @return [String] The Provider error Id.
      attr_accessor :error_id

      # @return [String] The possible causes for the error.
      attr_accessor :possible_causes

      # @return [String] The recommended action to resolve the error.
      attr_accessor :recommended_action


      #
      # Mapper for ProviderError class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ProviderError',
          type: {
            name: 'Composite',
            class_name: 'ProviderError',
            model_properties: {
              error_code: {
                required: false,
                serialized_name: 'errorCode',
                type: {
                  name: 'Number'
                }
              },
              error_message: {
                required: false,
                serialized_name: 'errorMessage',
                type: {
                  name: 'String'
                }
              },
              error_id: {
                required: false,
                serialized_name: 'errorId',
                type: {
                  name: 'String'
                }
              },
              possible_causes: {
                required: false,
                serialized_name: 'possibleCauses',
                type: {
                  name: 'String'
                }
              },
              recommended_action: {
                required: false,
                serialized_name: 'recommendedAction',
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
