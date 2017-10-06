# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # Replication provider specific recovery point details.
    #
    class ProviderSpecificRecoveryPointDetails

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Gets the provider type.
      attr_accessor :type


      #
      # Mapper for ProviderSpecificRecoveryPointDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ProviderSpecificRecoveryPointDetails',
          type: {
            name: 'Composite',
            class_name: 'ProviderSpecificRecoveryPointDetails',
            model_properties: {
              type: {
                required: false,
                read_only: true,
                serialized_name: 'Type',
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
