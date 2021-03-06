# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Mysql::Mgmt::V2018_06_01
  module Models
    #
    # The resource management error response.
    #
    class ErrorResponse

      include MsRestAzure

      # @return [String] The error code.
      attr_accessor :code

      # @return [String] The error message.
      attr_accessor :message

      # @return [String] The error target.
      attr_accessor :target

      # @return [Array<ErrorResponse>] The error details.
      attr_accessor :details

      # @return [Array<ErrorAdditionalInfo>] The error additional info.
      attr_accessor :additional_info


      #
      # Mapper for ErrorResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ErrorResponse',
          type: {
            name: 'Composite',
            class_name: 'ErrorResponse',
            model_properties: {
              code: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              target: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'target',
                type: {
                  name: 'String'
                }
              },
              details: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'details',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ErrorResponseElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ErrorResponse'
                      }
                  }
                }
              },
              additional_info: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'additionalInfo',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ErrorAdditionalInfoElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ErrorAdditionalInfo'
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
