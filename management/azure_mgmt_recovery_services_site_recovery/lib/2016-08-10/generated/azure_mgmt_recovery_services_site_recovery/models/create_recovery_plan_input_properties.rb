# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Recovery plan creation properties.
    #
    class CreateRecoveryPlanInputProperties

      include MsRestAzure

      # @return [String] The primary fabric Id.
      attr_accessor :primary_fabric_id

      # @return [String] The recovery fabric Id.
      attr_accessor :recovery_fabric_id

      # @return [FailoverDeploymentModel] The failover deployment model.
      # Possible values include: 'NotApplicable', 'Classic', 'ResourceManager'
      attr_accessor :failover_deployment_model

      # @return [Array<RecoveryPlanGroup>] The recovery plan groups.
      attr_accessor :groups


      #
      # Mapper for CreateRecoveryPlanInputProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CreateRecoveryPlanInputProperties',
          type: {
            name: 'Composite',
            class_name: 'CreateRecoveryPlanInputProperties',
            model_properties: {
              primary_fabric_id: {
                required: true,
                serialized_name: 'primaryFabricId',
                type: {
                  name: 'String'
                }
              },
              recovery_fabric_id: {
                required: true,
                serialized_name: 'recoveryFabricId',
                type: {
                  name: 'String'
                }
              },
              failover_deployment_model: {
                required: false,
                serialized_name: 'failoverDeploymentModel',
                type: {
                  name: 'Enum',
                  module: 'FailoverDeploymentModel'
                }
              },
              groups: {
                required: true,
                serialized_name: 'groups',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'RecoveryPlanGroupElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RecoveryPlanGroup'
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
