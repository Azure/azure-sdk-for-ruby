# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2017_04_02
  module Models
    #
    # Output of the validate probe API.
    #
    class ValidateProbeOutput

      include MsRestAzure

      # @return [Boolean] Indicates whether the probe URL is accepted or not.
      attr_accessor :is_valid

      # @return [String] Specifies the error code when the probe url is not
      # accepted.
      attr_accessor :error_code

      # @return [String] The detailed error message describing why the probe
      # URL is not accepted.
      attr_accessor :message


      #
      # Mapper for ValidateProbeOutput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ValidateProbeOutput',
          type: {
            name: 'Composite',
            class_name: 'ValidateProbeOutput',
            model_properties: {
              is_valid: {
                required: false,
                read_only: true,
                serialized_name: 'isValid',
                type: {
                  name: 'Boolean'
                }
              },
              error_code: {
                required: false,
                read_only: true,
                serialized_name: 'errorCode',
                type: {
                  name: 'String'
                }
              },
              message: {
                required: false,
                read_only: true,
                serialized_name: 'message',
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
