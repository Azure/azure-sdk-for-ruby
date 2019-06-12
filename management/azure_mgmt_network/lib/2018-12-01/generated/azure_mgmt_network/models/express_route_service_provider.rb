# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2018_12_01
  module Models
    #
    # A ExpressRouteResourceProvider object.
    #
    class ExpressRouteServiceProvider < Resource

      include MsRestAzure

      # @return [Array<String>] Get a list of peering locations.
      attr_accessor :peering_locations

      # @return [Array<ExpressRouteServiceProviderBandwidthsOffered>] Gets
      # bandwidths offered.
      attr_accessor :bandwidths_offered

      # @return [String] Gets the provisioning state of the resource.
      attr_accessor :provisioning_state


      #
      # Mapper for ExpressRouteServiceProvider class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ExpressRouteServiceProvider',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteServiceProvider',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              peering_locations: {
                required: false,
                serialized_name: 'properties.peeringLocations',
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
              bandwidths_offered: {
                required: false,
                serialized_name: 'properties.bandwidthsOffered',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ExpressRouteServiceProviderBandwidthsOfferedElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ExpressRouteServiceProviderBandwidthsOffered'
                      }
                  }
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
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
