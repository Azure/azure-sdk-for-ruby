# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2016_12_01
  module Models
    #
    # Application gateway SSL policy.
    #
    class ApplicationGatewaySslPolicy

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<ApplicationGatewaySslProtocol>] SSL protocols to be
      # disabled on application gateway. Possible values are: 'TLSv1_0',
      # 'TLSv1_1', and 'TLSv1_2'.
      attr_accessor :disabled_ssl_protocols


      #
      # Mapper for ApplicationGatewaySslPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationGatewaySslPolicy',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewaySslPolicy',
            model_properties: {
              disabled_ssl_protocols: {
                client_side_validation: true,
                required: false,
                serialized_name: 'disabledSslProtocols',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationGatewaySslProtocolElementType',
                      type: {
                        name: 'String'
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
