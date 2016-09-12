# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic
  module Models
    #
    # Model object.
    #
    class AS2MessageConnectionSettings

      include MsRestAzure

      # @return [Boolean] The value indicating whether to ignore mismatch in
      # certificate name.
      attr_accessor :ignore_certificate_name_mismatch

      # @return [Boolean] The value indicating whether to support HTTP status
      # code 'CONTINUE'.
      attr_accessor :support_http_status_code_continue

      # @return [Boolean] The value indicating whether to keep the connection
      # alive.
      attr_accessor :keep_http_connection_alive

      # @return [Boolean] The value indicating whether to unfold the HTTP
      # headers.
      attr_accessor :unfold_http_headers


      #
      # Mapper for AS2MessageConnectionSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AS2MessageConnectionSettings',
          type: {
            name: 'Composite',
            class_name: 'AS2MessageConnectionSettings',
            model_properties: {
              ignore_certificate_name_mismatch: {
                required: false,
                serialized_name: 'ignoreCertificateNameMismatch',
                type: {
                  name: 'Boolean'
                }
              },
              support_http_status_code_continue: {
                required: false,
                serialized_name: 'supportHttpStatusCodeContinue',
                type: {
                  name: 'Boolean'
                }
              },
              keep_http_connection_alive: {
                required: false,
                serialized_name: 'keepHttpConnectionAlive',
                type: {
                  name: 'Boolean'
                }
              },
              unfold_http_headers: {
                required: false,
                serialized_name: 'unfoldHttpHeaders',
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
