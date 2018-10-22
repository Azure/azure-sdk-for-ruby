# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # A2A cloud creation input.
    #
    class A2AContainerCreationInput < ReplicationProviderSpecificContainerCreationInput

      include MsRestAzure


      def initialize
        @instanceType = "A2A"
      end

      attr_accessor :instanceType


      #
      # Mapper for A2AContainerCreationInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'A2A',
          type: {
            name: 'Composite',
            class_name: 'A2AContainerCreationInput',
            model_properties: {
              instanceType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'instanceType',
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
