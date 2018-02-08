# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Recovery plan planned failover input.
    #
    class RecoveryPlanPlannedFailoverInput

      include MsRestAzure

      # @return [RecoveryPlanPlannedFailoverInputProperties] The recovery plan
      # planned failover input properties.
      attr_accessor :properties


      #
      # Mapper for RecoveryPlanPlannedFailoverInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RecoveryPlanPlannedFailoverInput',
          type: {
            name: 'Composite',
            class_name: 'RecoveryPlanPlannedFailoverInput',
            model_properties: {
              properties: {
                required: true,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'RecoveryPlanPlannedFailoverInputProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
