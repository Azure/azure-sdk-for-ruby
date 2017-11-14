# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2017_09_01
  module Models
    #
    # Route Filter Resource.
    #
    class PatchRouteFilter < SubResource

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

      # @return [String] The name of the resource that is unique within a
      # resource group. This name can be used to access the resource.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag

      # @return [String] Resource type.
      attr_accessor :type

      # @return [Hash{String => String}] Resource tags.
      attr_accessor :tags


      #
      # Mapper for PatchRouteFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PatchRouteFilter',
          type: {
            name: 'Composite',
            class_name: 'PatchRouteFilter',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.rules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
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
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.peerings',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
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
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
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
