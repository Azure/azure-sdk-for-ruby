# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # Recovery plan A2A failover input.
    #
    class RecoveryPlanA2AFailoverInput < RecoveryPlanProviderSpecificFailoverInput

      include MsRestAzure


      def initialize
        @instanceType = "A2A"
      end

      attr_accessor :instanceType

      # @return [A2ARpRecoveryPointType] The recovery point type. Possible
      # values include: 'Latest', 'LatestApplicationConsistent',
      # 'LatestCrashConsistent', 'LatestProcessed'
      attr_accessor :recovery_point_type

      # @return [String] A value indicating whether to use recovery cloud
      # service for TFO or not.
      attr_accessor :cloud_service_creation_option


      #
      # Mapper for RecoveryPlanA2AFailoverInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'A2A',
          type: {
            name: 'Composite',
            class_name: 'RecoveryPlanA2AFailoverInput',
            model_properties: {
              instanceType: {
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              recovery_point_type: {
                required: true,
                serialized_name: 'recoveryPointType',
                type: {
                  name: 'Enum',
                  module: 'A2ARpRecoveryPointType'
                }
              },
              cloud_service_creation_option: {
                required: false,
                serialized_name: 'cloudServiceCreationOption',
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
