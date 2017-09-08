# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # Route Filter Resource.
    #
    class RouteFilter < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<RouteFilterRule>] Collection of RouteFilterRules
      # contained within a route filter.
      attr_accessor :rules

      # @return [Array<ExpressRouteCircuitPeering>] A collection of references
      # to express route circuit peerings.
      attr_accessor :peerings

      # @return [String] The provisioning state of the resource. Possible
      # values are: 'Updating', 'Deleting', 'Succeeded' and 'Failed'.
      attr_accessor :provisioning_state

      # @return [String] Gets a unique read-only string that changes whenever
      # the resource is updated.
      attr_accessor :etag


      #
      # Mapper for RouteFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RouteFilter',
          type: {
            name: 'Composite',
            class_name: 'RouteFilter',
            model_properties: {
              id: {
                required: false,
                read_only: true,
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
              rules: {
                required: false,
                serialized_name: 'properties.rules',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'RouteFilterRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RouteFilterRule'
                      }
                  }
                }
              },
              peerings: {
                required: false,
                serialized_name: 'properties.peerings',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ExpressRouteCircuitPeeringElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ExpressRouteCircuitPeering'
                      }
                  }
                }
              },
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              etag: {
                required: false,
                read_only: true,
                serialized_name: 'etag',
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
