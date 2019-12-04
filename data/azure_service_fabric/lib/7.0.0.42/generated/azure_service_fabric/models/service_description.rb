# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # A ServiceDescription contains all of the information necessary to create
    # a service.
    #
    class ServiceDescription

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["Stateful"] = "StatefulServiceDescription"
      @@discriminatorMap["Stateless"] = "StatelessServiceDescription"

      def initialize
        @ServiceKind = "ServiceDescription"
      end

      attr_accessor :ServiceKind

      # @return [String] The name of the application, including the 'fabric:'
      # URI scheme.
      attr_accessor :application_name

      # @return [String] The full name of the service with 'fabric:' URI
      # scheme.
      attr_accessor :service_name

      # @return [String] Name of the service type as specified in the service
      # manifest.
      attr_accessor :service_type_name

      # @return [Array<Integer>] The initialization data as an array of bytes.
      # Initialization data is passed to service instances or replicas when
      # they are created.
      attr_accessor :initialization_data

      # @return [PartitionSchemeDescription] The partition description as an
      # object.
      attr_accessor :partition_description

      # @return [String] The placement constraints as a string. Placement
      # constraints are boolean expressions on node properties and allow for
      # restricting a service to particular nodes based on the service
      # requirements. For example, to place a service on nodes where NodeType
      # is blue specify the following: "NodeColor == blue)".
      attr_accessor :placement_constraints

      # @return [Array<ServiceCorrelationDescription>] The correlation scheme.
      attr_accessor :correlation_scheme

      # @return [Array<ServiceLoadMetricDescription>] The service load metrics.
      attr_accessor :service_load_metrics

      # @return [Array<ServicePlacementPolicyDescription>] The service
      # placement policies.
      attr_accessor :service_placement_policies

      # @return [MoveCost] The move cost for the service. Possible values
      # include: 'Zero', 'Low', 'Medium', 'High', 'VeryHigh'
      attr_accessor :default_move_cost

      # @return [Boolean] Indicates if the DefaultMoveCost property is
      # specified.
      attr_accessor :is_default_move_cost_specified

      # @return [ServicePackageActivationMode] The activation mode of service
      # package to be used for a service. Possible values include:
      # 'SharedProcess', 'ExclusiveProcess'
      attr_accessor :service_package_activation_mode

      # @return [String] The DNS name of the service. It requires the DNS
      # system service to be enabled in Service Fabric cluster.
      attr_accessor :service_dns_name

      # @return [Array<ScalingPolicyDescription>] Scaling policies for this
      # service.
      attr_accessor :scaling_policies


      #
      # Mapper for ServiceDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceDescription',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'ServiceKind',
            uber_parent: 'ServiceDescription',
            class_name: 'ServiceDescription',
            model_properties: {
              application_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ApplicationName',
                type: {
                  name: 'String'
                }
              },
              service_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ServiceName',
                type: {
                  name: 'String'
                }
              },
              service_type_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ServiceTypeName',
                type: {
                  name: 'String'
                }
              },
              initialization_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'InitializationData',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NumberElementType',
                      type: {
                        name: 'Number'
                      }
                  }
                }
              },
              partition_description: {
                client_side_validation: true,
                required: true,
                serialized_name: 'PartitionDescription',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'PartitionScheme',
                  uber_parent: 'PartitionSchemeDescription',
                  class_name: 'PartitionSchemeDescription'
                }
              },
              placement_constraints: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PlacementConstraints',
                type: {
                  name: 'String'
                }
              },
              correlation_scheme: {
                client_side_validation: true,
                required: false,
                serialized_name: 'CorrelationScheme',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ServiceCorrelationDescriptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ServiceCorrelationDescription'
                      }
                  }
                }
              },
              service_load_metrics: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServiceLoadMetrics',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ServiceLoadMetricDescriptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ServiceLoadMetricDescription'
                      }
                  }
                }
              },
              service_placement_policies: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServicePlacementPolicies',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ServicePlacementPolicyDescriptionElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'Type',
                        uber_parent: 'ServicePlacementPolicyDescription',
                        class_name: 'ServicePlacementPolicyDescription'
                      }
                  }
                }
              },
              default_move_cost: {
                client_side_validation: true,
                required: false,
                serialized_name: 'DefaultMoveCost',
                type: {
                  name: 'String'
                }
              },
              is_default_move_cost_specified: {
                client_side_validation: true,
                required: false,
                serialized_name: 'IsDefaultMoveCostSpecified',
                type: {
                  name: 'Boolean'
                }
              },
              service_package_activation_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServicePackageActivationMode',
                type: {
                  name: 'String'
                }
              },
              service_dns_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServiceDnsName',
                type: {
                  name: 'String'
                }
              },
              scaling_policies: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ScalingPolicies',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ScalingPolicyDescriptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ScalingPolicyDescription'
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
