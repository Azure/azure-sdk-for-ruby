# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # ARM inner exception class.
    #
    class ARMException

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Gets HTTP status code for the error.
      attr_accessor :code

      # @return [String] Gets exception message.
      attr_accessor :message

      # @return [String] Gets exception target.
      attr_accessor :target

      # @return [Array<ARMExceptionDetails>] Gets service based error details.
      attr_accessor :details

      # @return [ARMInnerError] Gets private data for service debugging.
      attr_accessor :innererror


      #
      # Mapper for ARMException class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ARMException',
          type: {
            name: 'Composite',
            class_name: 'ARMException',
            model_properties: {
              code: {
                required: false,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              message: {
                required: false,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              target: {
                required: false,
                serialized_name: 'target',
                type: {
                  name: 'String'
                }
              },
              details: {
                required: false,
                serialized_name: 'details',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ARMExceptionDetailsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ARMExceptionDetails'
                      }
                  }
                }
              },
              innererror: {
                required: false,
                serialized_name: 'innererror',
                type: {
                  name: 'Composite',
                  class_name: 'ARMInnerError'
                }
              }
            }
          }
        }
      end
    end
  end
end
