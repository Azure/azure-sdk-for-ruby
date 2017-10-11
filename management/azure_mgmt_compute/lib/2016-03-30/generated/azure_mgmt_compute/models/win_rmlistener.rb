# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute::Api_2016_03_30
  module Models
    #
    # Describes Protocol and thumbprint of Windows Remote Management listener
    #
    class WinRMListener

      include MsRestAzure

      # @return [ProtocolTypes] The Protocol used by the WinRM listener. Http
      # and Https are supported. Possible values include: 'Http', 'Https'
      attr_accessor :protocol

      # @return [String] The Certificate URL in KMS for Https listeners. Should
      # be null for Http listeners.
      attr_accessor :certificate_url


      #
      # Mapper for WinRMListener class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'WinRMListener',
          type: {
            name: 'Composite',
            class_name: 'WinRMListener',
            model_properties: {
              protocol: {
                required: false,
                serialized_name: 'protocol',
                type: {
                  name: 'Enum',
                  module: 'ProtocolTypes'
                }
              },
              certificate_url: {
                required: false,
                serialized_name: 'certificateUrl',
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
