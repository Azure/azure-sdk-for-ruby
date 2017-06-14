# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # Model object.
    #
    #
    class Error

      include MsRestAzure

      # @return [String]
      attr_accessor :code

      # @return [String]
      attr_accessor :message

      # @return [String]
      attr_accessor :target

      # @return [Array<ErrorDetails>]
      attr_accessor :details

      # @return [String]
      attr_accessor :inner_error


      #
      # Mapper for Error class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Error',
          type: {
            name: 'Composite',
            class_name: 'Error',
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
                      serialized_name: 'ErrorDetailsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ErrorDetails'
                      }
                  }
                }
              },
              inner_error: {
                required: false,
                serialized_name: 'innerError',
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
