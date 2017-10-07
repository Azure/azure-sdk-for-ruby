# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # Input details specific to fabrics during Network Mapping.
    #
    class FabricSpecificUpdateNetworkMappingInput

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["AzureToAzure"] = "AzureToAzureUpdateNetworkMappingInput"
      @@discriminatorMap["VmmToAzure"] = "VmmToAzureUpdateNetworkMappingInput"
      @@discriminatorMap["VmmToVmm"] = "VmmToVmmUpdateNetworkMappingInput"

      def initialize
        @instanceType = "FabricSpecificUpdateNetworkMappingInput"
      end

      attr_accessor :instanceType


      #
      # Mapper for FabricSpecificUpdateNetworkMappingInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'FabricSpecificUpdateNetworkMappingInput',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'instanceType',
            uber_parent: 'FabricSpecificUpdateNetworkMappingInput',
            class_name: 'FabricSpecificUpdateNetworkMappingInput',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
