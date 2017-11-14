# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2016_03_30
  module Models
    #
    # ApplicationGateways resource
    #
    class ApplicationGateway < Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [ApplicationGatewaySku] Gets or sets sku of application gateway
      # resource
      attr_accessor :sku

      # @return [ApplicationGatewayOperationalState] Gets operational state of
      # application gateway resource. Possible values include: 'Stopped',
      # 'Starting', 'Running', 'Stopping'
      attr_accessor :operational_state

      # @return [Array<ApplicationGatewayIPConfiguration>] Gets or sets subnets
      # of application gateway resource
      attr_accessor :gateway_ipconfigurations

      # @return [Array<ApplicationGatewaySslCertificate>] Gets or sets ssl
      # certificates of application gateway resource
      attr_accessor :ssl_certificates

      # @return [Array<ApplicationGatewayFrontendIPConfiguration>] Gets or sets
      # frontend IP addresses of application gateway resource
      attr_accessor :frontend_ipconfigurations

      # @return [Array<ApplicationGatewayFrontendPort>] Gets or sets frontend
      # ports of application gateway resource
      attr_accessor :frontend_ports

      # @return [Array<ApplicationGatewayProbe>] Gets or sets probes of
      # application gateway resource
      attr_accessor :probes

      # @return [Array<ApplicationGatewayBackendAddressPool>] Gets or sets
      # backend address pool of application gateway resource
      attr_accessor :backend_address_pools

      # @return [Array<ApplicationGatewayBackendHttpSettings>] Gets or sets
      # backend http settings of application gateway resource
      attr_accessor :backend_http_settings_collection

      # @return [Array<ApplicationGatewayHttpListener>] Gets or sets HTTP
      # listeners of application gateway resource
      attr_accessor :http_listeners

      # @return [Array<ApplicationGatewayUrlPathMap>] Gets or sets URL path map
      # of application gateway resource
      attr_accessor :url_path_maps

      # @return [Array<ApplicationGatewayRequestRoutingRule>] Gets or sets
      # request routing rules of application gateway resource
      attr_accessor :request_routing_rules

      # @return [String] Gets or sets resource guid property of the
      # ApplicationGateway resource
      attr_accessor :resource_guid

      # @return [String] Gets or sets Provisioning state of the
      # ApplicationGateway resource Updating/Deleting/Failed
      attr_accessor :provisioning_state

      # @return [String] Gets a unique read-only string that changes whenever
      # the resource is updated
      attr_accessor :etag


      #
      # Mapper for ApplicationGateway class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationGateway',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGateway',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
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
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
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
              },
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sku',
                type: {
                  name: 'Composite',
                  class_name: 'ApplicationGatewaySku'
                }
              },
              operational_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.operationalState',
                type: {
                  name: 'String'
                }
              },
              gateway_ipconfigurations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.gatewayIPConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationGatewayIPConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayIPConfiguration'
                      }
                  }
                }
              },
              ssl_certificates: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sslCertificates',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationGatewaySslCertificateElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewaySslCertificate'
                      }
                  }
                }
              },
              frontend_ipconfigurations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.frontendIPConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationGatewayFrontendIPConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayFrontendIPConfiguration'
                      }
                  }
                }
              },
              frontend_ports: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.frontendPorts',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationGatewayFrontendPortElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayFrontendPort'
                      }
                  }
                }
              },
              probes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.probes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationGatewayProbeElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayProbe'
                      }
                  }
                }
              },
              backend_address_pools: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.backendAddressPools',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationGatewayBackendAddressPoolElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayBackendAddressPool'
                      }
                  }
                }
              },
              backend_http_settings_collection: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.backendHttpSettingsCollection',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationGatewayBackendHttpSettingsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayBackendHttpSettings'
                      }
                  }
                }
              },
              http_listeners: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.httpListeners',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationGatewayHttpListenerElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayHttpListener'
                      }
                  }
                }
              },
              url_path_maps: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.urlPathMaps',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationGatewayUrlPathMapElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayUrlPathMap'
                      }
                  }
                }
              },
              request_routing_rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.requestRoutingRules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationGatewayRequestRoutingRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayRequestRoutingRule'
                      }
                  }
                }
              },
              resource_guid: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.resourceGuid',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
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
