# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Describes an update for a stateful service.
    #
    class StatefulServiceUpdateDescription < ServiceUpdateDescription

      include MsRestAzure


      def initialize
        @ServiceKind = "Stateful"
      end

      attr_accessor :ServiceKind

      # @return [Integer] The target replica set size as a number.
      attr_accessor :target_replica_set_size

      # @return [Integer] The minimum replica set size as a number.
      attr_accessor :min_replica_set_size

      # @return [String] The duration, in seconds, between when a replica goes
      # down and when a new replica is created.
      attr_accessor :replica_restart_wait_duration_seconds

      # @return [String] The maximum duration, in seconds, for which a
      # partition is allowed to be in a state of quorum loss.
      attr_accessor :quorum_loss_wait_duration_seconds

      # @return [String] The definition on how long StandBy replicas should be
      # maintained before being removed.
      attr_accessor :stand_by_replica_keep_duration_seconds

      # @return [String] The duration for which replicas can stay InBuild
      # before reporting that build is stuck.
      attr_accessor :service_placement_time_limit_seconds


      #
      # Mapper for StatefulServiceUpdateDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Stateful',
          type: {
            name: 'Composite',
            class_name: 'StatefulServiceUpdateDescription',
            model_properties: {
              flags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Flags',
                type: {
                  name: 'String'
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
              load_metrics: {
                client_side_validation: true,
                required: false,
                serialized_name: 'LoadMetrics',
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
              },
              ServiceKind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ServiceKind',
                type: {
                  name: 'String'
                }
              },
              target_replica_set_size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'TargetReplicaSetSize',
                constraints: {
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              min_replica_set_size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'MinReplicaSetSize',
                constraints: {
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              replica_restart_wait_duration_seconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ReplicaRestartWaitDurationSeconds',
                type: {
                  name: 'String'
                }
              },
              quorum_loss_wait_duration_seconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'QuorumLossWaitDurationSeconds',
                type: {
                  name: 'String'
                }
              },
              stand_by_replica_keep_duration_seconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'StandByReplicaKeepDurationSeconds',
                type: {
                  name: 'String'
                }
              },
              service_placement_time_limit_seconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServicePlacementTimeLimitSeconds',
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
