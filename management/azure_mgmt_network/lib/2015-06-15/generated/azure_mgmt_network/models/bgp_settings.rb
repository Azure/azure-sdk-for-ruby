# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network::Api_2015_06_15
  module Models
    #
    # Model object.
    #
    #
    class BgpSettings

      include MsRestAzure

      # @return [Integer] Gets or sets this BGP speaker's ASN
      attr_accessor :asn

      # @return [String] Gets or sets the BGP peering address and BGP
      # identifier of this BGP speaker
      attr_accessor :bgp_peering_address

      # @return [Integer] Gets or sets the weight added to routes learned from
      # this BGP speaker
      attr_accessor :peer_weight


      #
      # Mapper for BgpSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BgpSettings',
          type: {
            name: 'Composite',
            class_name: 'BgpSettings',
            model_properties: {
              asn: {
                required: false,
                serialized_name: 'asn',
                type: {
                  name: 'Number'
                }
              },
              bgp_peering_address: {
                required: false,
                serialized_name: 'bgpPeeringAddress',
                type: {
                  name: 'String'
                }
              },
              peer_weight: {
                required: false,
                serialized_name: 'peerWeight',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
