# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network::Api_2015_05_01_preview
  module Models
    #
    # Specfies the peering config
    #
    class ExpressRouteCircuitPeeringConfig

      include MsRestAzure

      # @return [Array<String>] Gets or sets the reference of
      # AdvertisedPublicPrefixes
      attr_accessor :advertised_public_prefixes

      # @return [ExpressRouteCircuitPeeringAdvertisedPublicPrefixState] Gets or
      # sets AdvertisedPublicPrefixState of the Peering resource. Possible
      # values include: 'NotConfigured', 'Configuring', 'Configured',
      # 'ValidationNeeded'
      attr_accessor :advertised_public_prefixes_state

      # @return [Integer] Gets or Sets CustomerAsn of the peering.
      attr_accessor :customer_asn

      # @return [String] Gets or Sets RoutingRegistryName of the config.
      attr_accessor :routing_registry_name


      #
      # Mapper for ExpressRouteCircuitPeeringConfig class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ExpressRouteCircuitPeeringConfig',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteCircuitPeeringConfig',
            model_properties: {
              advertised_public_prefixes: {
                required: false,
                serialized_name: 'advertisedPublicPrefixes',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              advertised_public_prefixes_state: {
                required: false,
                serialized_name: 'advertisedPublicPrefixesState',
                type: {
                  name: 'String'
                }
              },
              customer_asn: {
                required: false,
                serialized_name: 'customerASN',
                type: {
                  name: 'Number'
                }
              },
              routing_registry_name: {
                required: false,
                serialized_name: 'routingRegistryName',
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
