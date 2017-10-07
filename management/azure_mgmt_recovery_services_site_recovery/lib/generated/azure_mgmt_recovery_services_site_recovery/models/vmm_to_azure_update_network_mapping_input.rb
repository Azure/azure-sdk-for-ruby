# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # Update network mappings input properties/behaviour specific to vmm to
    # azure.
    #
    class VmmToAzureUpdateNetworkMappingInput < FabricSpecificUpdateNetworkMappingInput

      include MsRestAzure


      def initialize
        @instanceType = "VmmToAzure"
      end

      attr_accessor :instanceType


      #
      # Mapper for VmmToAzureUpdateNetworkMappingInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VmmToAzure',
          type: {
            name: 'Composite',
            class_name: 'VmmToAzureUpdateNetworkMappingInput',
            model_properties: {
              instanceType: {
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
