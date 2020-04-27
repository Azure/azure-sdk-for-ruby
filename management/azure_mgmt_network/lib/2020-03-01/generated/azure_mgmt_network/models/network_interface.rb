# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_03_01
  module Models
    #
    # A network interface in a resource group.
    #
    class NetworkInterface < Resource

      include MsRestAzure

      # @return [SubResource] The reference to a virtual machine.
      attr_accessor :virtual_machine

      # @return [NetworkSecurityGroup] The reference to the
      # NetworkSecurityGroup resource.
      attr_accessor :network_security_group

      # @return [PrivateEndpoint] A reference to the private endpoint to which
      # the network interface is linked.
      attr_accessor :private_endpoint

      # @return [Array<NetworkInterfaceIPConfiguration>] A list of
      # IPConfigurations of the network interface.
      attr_accessor :ip_configurations

      # @return [Array<NetworkInterfaceTapConfiguration>] A list of
      # TapConfigurations of the network interface.
      attr_accessor :tap_configurations

      # @return [NetworkInterfaceDnsSettings] The DNS settings in network
      # interface.
      attr_accessor :dns_settings

      # @return [String] The MAC address of the network interface.
      attr_accessor :mac_address

      # @return [Boolean] Whether this is a primary network interface on a
      # virtual machine.
      attr_accessor :primary

      # @return [Boolean] If the network interface is accelerated networking
      # enabled.
      attr_accessor :enable_accelerated_networking

      # @return [Boolean] Indicates whether IP forwarding is enabled on this
      # network interface.
      attr_accessor :enable_ipforwarding

      # @return [Array<String>] A list of references to linked BareMetal
      # resources.
      attr_accessor :hosted_workloads

      # @return [String] The resource GUID property of the network interface
      # resource.
      attr_accessor :resource_guid

      # @return [ProvisioningState] The provisioning state of the network
      # interface resource. Possible values include: 'Succeeded', 'Updating',
      # 'Deleting', 'Failed'
      attr_accessor :provisioning_state

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for NetworkInterface class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NetworkInterface',
          type: {
            name: 'Composite',
            class_name: 'NetworkInterface',
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
              virtual_machine: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.virtualMachine',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              network_security_group: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.networkSecurityGroup',
                type: {
                  name: 'Composite',
                  class_name: 'NetworkSecurityGroup'
                }
              },
              private_endpoint: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.privateEndpoint',
                type: {
                  name: 'Composite',
                  class_name: 'PrivateEndpoint'
                }
              },
              ip_configurations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.ipConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NetworkInterfaceIPConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NetworkInterfaceIPConfiguration'
                      }
                  }
                }
              },
              tap_configurations: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.tapConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NetworkInterfaceTapConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NetworkInterfaceTapConfiguration'
                      }
                  }
                }
              },
              dns_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.dnsSettings',
                type: {
                  name: 'Composite',
                  class_name: 'NetworkInterfaceDnsSettings'
                }
              },
              mac_address: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.macAddress',
                type: {
                  name: 'String'
                }
              },
              primary: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.primary',
                type: {
                  name: 'Boolean'
                }
              },
              enable_accelerated_networking: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enableAcceleratedNetworking',
                type: {
                  name: 'Boolean'
                }
              },
              enable_ipforwarding: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enableIPForwarding',
                type: {
                  name: 'Boolean'
                }
              },
              hosted_workloads: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.hostedWorkloads',
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
              resource_guid: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceGuid',
                type: {
                  name: 'String'
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
              etag: {
                client_side_validation: true,
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
