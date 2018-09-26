# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::TrafficManager::Mgmt::V2018_04_01
  module Models
    #
    # Class representing a Traffic Manager endpoint.
    #
    class Endpoint < ProxyResource

      include MsRestAzure

      # @return [String] The Azure Resource URI of the of the endpoint. Not
      # applicable to endpoints of type 'ExternalEndpoints'.
      attr_accessor :target_resource_id

      # @return [String] The fully-qualified DNS name or IP address of the
      # endpoint. Traffic Manager returns this value in DNS responses to direct
      # traffic to this endpoint.
      attr_accessor :target

      # @return [EndpointStatus] The status of the endpoint. If the endpoint is
      # Enabled, it is probed for endpoint health and is included in the
      # traffic routing method. Possible values include: 'Enabled', 'Disabled'
      attr_accessor :endpoint_status

      # @return [Integer] The weight of this endpoint when using the 'Weighted'
      # traffic routing method. Possible values are from 1 to 1000.
      attr_accessor :weight

      # @return [Integer] The priority of this endpoint when using the
      # 'Priority' traffic routing method. Possible values are from 1 to 1000,
      # lower values represent higher priority. This is an optional parameter.
      # If specified, it must be specified on all endpoints, and no two
      # endpoints can share the same priority value.
      attr_accessor :priority

      # @return [String] Specifies the location of the external or nested
      # endpoints when using the 'Performance' traffic routing method.
      attr_accessor :endpoint_location

      # @return [EndpointMonitorStatus] The monitoring status of the endpoint.
      # Possible values include: 'CheckingEndpoint', 'Online', 'Degraded',
      # 'Disabled', 'Inactive', 'Stopped'
      attr_accessor :endpoint_monitor_status

      # @return [Integer] The minimum number of endpoints that must be
      # available in the child profile in order for the parent profile to be
      # considered available. Only applicable to endpoint of type
      # 'NestedEndpoints'.
      attr_accessor :min_child_endpoints

      # @return [Array<String>] The list of countries/regions mapped to this
      # endpoint when using the 'Geographic' traffic routing method. Please
      # consult Traffic Manager Geographic documentation for a full list of
      # accepted values.
      attr_accessor :geo_mapping

      # @return [Array<EndpointPropertiesSubnetsItem>] The list of subnets, IP
      # addresses, and/or address ranges mapped to this endpoint when using the
      # 'Subnet' traffic routing method. An empty list will match all ranges
      # not covered by other endpoints.
      attr_accessor :subnets

      # @return [Array<EndpointPropertiesCustomHeadersItem>] List of custom
      # headers.
      attr_accessor :custom_headers


      #
      # Mapper for Endpoint class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Endpoint',
          type: {
            name: 'Composite',
            class_name: 'Endpoint',
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
              target_resource_id: {
                required: false,
                serialized_name: 'properties.targetResourceId',
                type: {
                  name: 'String'
                }
              },
              target: {
                required: false,
                serialized_name: 'properties.target',
                type: {
                  name: 'String'
                }
              },
              endpoint_status: {
                required: false,
                serialized_name: 'properties.endpointStatus',
                type: {
                  name: 'String'
                }
              },
              weight: {
                required: false,
                serialized_name: 'properties.weight',
                type: {
                  name: 'Number'
                }
              },
              priority: {
                required: false,
                serialized_name: 'properties.priority',
                type: {
                  name: 'Number'
                }
              },
              endpoint_location: {
                required: false,
                serialized_name: 'properties.endpointLocation',
                type: {
                  name: 'String'
                }
              },
              endpoint_monitor_status: {
                required: false,
                serialized_name: 'properties.endpointMonitorStatus',
                type: {
                  name: 'String'
                }
              },
              min_child_endpoints: {
                required: false,
                serialized_name: 'properties.minChildEndpoints',
                type: {
                  name: 'Number'
                }
              },
              geo_mapping: {
                required: false,
                serialized_name: 'properties.geoMapping',
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
              subnets: {
                required: false,
                serialized_name: 'properties.subnets',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'EndpointPropertiesSubnetsItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EndpointPropertiesSubnetsItem'
                      }
                  }
                }
              },
              custom_headers: {
                required: false,
                serialized_name: 'properties.customHeaders',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'EndpointPropertiesCustomHeadersItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EndpointPropertiesCustomHeadersItem'
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
