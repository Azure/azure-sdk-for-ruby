# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # Update replication protected item input.
    #
    class UpdateReplicationProtectedItemInput

      include MsRestAzure

      include MsRest::JSONable
      # @return [UpdateReplicationProtectedItemInputProperties] Update
      # replication protected item properties.
      attr_accessor :properties


      #
      # Mapper for UpdateReplicationProtectedItemInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'UpdateReplicationProtectedItemInput',
          type: {
            name: 'Composite',
            class_name: 'UpdateReplicationProtectedItemInput',
            model_properties: {
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'UpdateReplicationProtectedItemInputProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
