# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_06_01
  module Models
    #
    # List of P2S Vpn connection health request.
    #
    class P2SVpnConnectionHealthRequest

      include MsRestAzure

      # @return [Array<String>] The list of p2s vpn user names whose p2s vpn
      # connection detailed health to retrieve for.
      attr_accessor :vpn_user_names_filter

      # @return [String] The sas-url to download the P2S Vpn connection health
      # detail.
      attr_accessor :output_blob_sas_url


      #
      # Mapper for P2SVpnConnectionHealthRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'P2SVpnConnectionHealthRequest',
          type: {
            name: 'Composite',
            class_name: 'P2SVpnConnectionHealthRequest',
            model_properties: {
              vpn_user_names_filter: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vpnUserNamesFilter',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              output_blob_sas_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'outputBlobSasUrl',
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
