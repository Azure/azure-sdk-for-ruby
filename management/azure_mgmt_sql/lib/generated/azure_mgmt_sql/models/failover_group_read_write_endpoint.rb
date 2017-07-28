# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # Read-write endpoint of the failover group instance.
    #
    class FailoverGroupReadWriteEndpoint
      # @return [ReadWriteEndpointFailoverPolicy] Failover policy of the
      # read-write endpoint for the failover group. Possible values include:
      # 'Manual', 'Automatic'
      attr_accessor :failover_policy

      # @return [Integer] Grace period before failover with data loss is
      # attempted for the read-write endpoint.
      attr_accessor :failover_with_data_loss_grace_period_minutes


      #
      # Mapper for FailoverGroupReadWriteEndpoint class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'FailoverGroupReadWriteEndpoint',
          type: {
            name: 'Composite',
            class_name: 'FailoverGroupReadWriteEndpoint',
            model_properties: {
              failover_policy: {
                required: false,
                serialized_name: 'failoverPolicy',
                type: {
                  name: 'String'
                }
              },
              failover_with_data_loss_grace_period_minutes: {
                required: false,
                serialized_name: 'failoverWithDataLossGracePeriodMinutes',
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
