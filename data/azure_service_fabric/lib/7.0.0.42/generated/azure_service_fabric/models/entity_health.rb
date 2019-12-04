# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Health information common to all entities in the cluster. It contains the
    # aggregated health state, health events and unhealthy evaluation.
    #
    class EntityHealth

      include MsRestAzure

      # @return [HealthState] The HealthState representing the aggregated
      # health state of the entity computed by Health Manager.
      # The health evaluation of the entity reflects all events reported on the
      # entity and its children (if any).
      # The aggregation is done by applying the desired health policy. Possible
      # values include: 'Invalid', 'Ok', 'Warning', 'Error', 'Unknown'
      attr_accessor :aggregated_health_state

      # @return [Array<HealthEvent>] The list of health events reported on the
      # entity.
      attr_accessor :health_events

      # @return [Array<HealthEvaluationWrapper>] The unhealthy evaluations that
      # show why the current aggregated health state was returned by Health
      # Manager.
      attr_accessor :unhealthy_evaluations

      # @return [HealthStatistics] Shows the health statistics for all children
      # types of the queried entity.
      attr_accessor :health_statistics


      #
      # Mapper for EntityHealth class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EntityHealth',
          type: {
            name: 'Composite',
            class_name: 'EntityHealth',
            model_properties: {
              aggregated_health_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'AggregatedHealthState',
                type: {
                  name: 'String'
                }
              },
              health_events: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HealthEvents',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'HealthEventElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HealthEvent'
                      }
                  }
                }
              },
              unhealthy_evaluations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'UnhealthyEvaluations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'HealthEvaluationWrapperElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HealthEvaluationWrapper'
                      }
                  }
                }
              },
              health_statistics: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HealthStatistics',
                type: {
                  name: 'Composite',
                  class_name: 'HealthStatistics'
                }
              }
            }
          }
        }
      end
    end
  end
end
