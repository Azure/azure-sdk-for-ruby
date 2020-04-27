# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2020_02_01
  module Models
    #
    # Profile of the managed cluster load balancer.
    #
    class ManagedClusterLoadBalancerProfile

      include MsRestAzure

      # @return [ManagedClusterLoadBalancerProfileManagedOutboundIPs] Desired
      # managed outbound IPs for the cluster load balancer.
      attr_accessor :managed_outbound_ips

      # @return [ManagedClusterLoadBalancerProfileOutboundIPPrefixes] Desired
      # outbound IP Prefix resources for the cluster load balancer.
      attr_accessor :outbound_ipprefixes

      # @return [ManagedClusterLoadBalancerProfileOutboundIPs] Desired outbound
      # IP resources for the cluster load balancer.
      attr_accessor :outbound_ips

      # @return [Array<ResourceReference>] The effective outbound IP resources
      # of the cluster load balancer.
      attr_accessor :effective_outbound_ips

      # @return [Integer] Desired number of allocated SNAT ports per VM.
      # Allowed values must be in the range of 0 to 64000 (inclusive). The
      # default value is 0 which results in Azure dynamically allocating ports.
      # Default value: 0 .
      attr_accessor :allocated_outbound_ports

      # @return [Integer] Desired outbound flow idle timeout in minutes.
      # Allowed values must be in the range of 4 to 120 (inclusive). The
      # default value is 30 minutes. Default value: 30 .
      attr_accessor :idle_timeout_in_minutes


      #
      # Mapper for ManagedClusterLoadBalancerProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagedClusterLoadBalancerProfile',
          type: {
            name: 'Composite',
            class_name: 'ManagedClusterLoadBalancerProfile',
            model_properties: {
              managed_outbound_ips: {
                client_side_validation: true,
                required: false,
                serialized_name: 'managedOutboundIPs',
                type: {
                  name: 'Composite',
                  class_name: 'ManagedClusterLoadBalancerProfileManagedOutboundIPs'
                }
              },
              outbound_ipprefixes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'outboundIPPrefixes',
                type: {
                  name: 'Composite',
                  class_name: 'ManagedClusterLoadBalancerProfileOutboundIPPrefixes'
                }
              },
              outbound_ips: {
                client_side_validation: true,
                required: false,
                serialized_name: 'outboundIPs',
                type: {
                  name: 'Composite',
                  class_name: 'ManagedClusterLoadBalancerProfileOutboundIPs'
                }
              },
              effective_outbound_ips: {
                client_side_validation: true,
                required: false,
                serialized_name: 'effectiveOutboundIPs',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ResourceReferenceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ResourceReference'
                      }
                  }
                }
              },
              allocated_outbound_ports: {
                client_side_validation: true,
                required: false,
                serialized_name: 'allocatedOutboundPorts',
                default_value: 0,
                constraints: {
                  InclusiveMaximum: 64000,
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              },
              idle_timeout_in_minutes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'idleTimeoutInMinutes',
                default_value: 30,
                constraints: {
                  InclusiveMaximum: 120,
                  InclusiveMinimum: 4
                },
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
