# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # Health Error
    #
    class HealthError

      include MsRestAzure

      # @return [String] Source of error.
      attr_accessor :error_source

      # @return [String] Type of error.
      attr_accessor :error_type

      # @return [String] Level of error.
      attr_accessor :error_level

      # @return [String] Error code.
      attr_accessor :error_code

      # @return [String] Error message.
      attr_accessor :error_message

      # @return [String] Possible causes of error.
      attr_accessor :possible_causes

      # @return [String] Recommended action to resolve error.
      attr_accessor :recommended_action

      # @return [DateTime] Error creation time (UTC)
      attr_accessor :creation_time_utc

      # @return [String] DRA error message.
      attr_accessor :recovery_provider_error_message

      # @return [String] ID of the entity.
      attr_accessor :entity_id

      # @return [Array<HealthError>] The child health errors.
      attr_accessor :child_errors


      #
      # Mapper for HealthError class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'HealthError',
          type: {
            name: 'Composite',
            class_name: 'HealthError',
            model_properties: {
              error_source: {
                required: false,
                serialized_name: 'errorSource',
                type: {
                  name: 'String'
                }
              },
              error_type: {
                required: false,
                serialized_name: 'errorType',
                type: {
                  name: 'String'
                }
              },
              error_level: {
                required: false,
                serialized_name: 'errorLevel',
                type: {
                  name: 'String'
                }
              },
              error_code: {
                required: false,
                serialized_name: 'errorCode',
                type: {
                  name: 'String'
                }
              },
              error_message: {
                required: false,
                serialized_name: 'errorMessage',
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
              },
              creation_time_utc: {
                required: false,
                serialized_name: 'creationTimeUtc',
                type: {
                  name: 'DateTime'
                }
              },
              recovery_provider_error_message: {
                required: false,
                serialized_name: 'recoveryProviderErrorMessage',
                type: {
                  name: 'String'
                }
              },
              entity_id: {
                required: false,
                serialized_name: 'entityId',
                type: {
                  name: 'String'
                }
              },
              child_errors: {
                required: false,
                serialized_name: 'childErrors',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'HealthErrorElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HealthError'
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
