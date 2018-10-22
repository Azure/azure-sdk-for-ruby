# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # Recovery plan test failover cleanup input.
    #
    class RecoveryPlanTestFailoverCleanupInput

      include MsRestAzure

      # @return [RecoveryPlanTestFailoverCleanupInputProperties] The recovery
      # plan test failover cleanup input properties.
      attr_accessor :properties


      #
      # Mapper for RecoveryPlanTestFailoverCleanupInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RecoveryPlanTestFailoverCleanupInput',
          type: {
            name: 'Composite',
            class_name: 'RecoveryPlanTestFailoverCleanupInput',
            model_properties: {
              properties: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'RecoveryPlanTestFailoverCleanupInputProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
