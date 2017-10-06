# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # Container mapping provider specific details.
    #
    class ProtectionContainerMappingProviderSpecificDetails

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Gets the class type. Overriden in derived classes.
      attr_accessor :instance_type


      #
      # Mapper for ProtectionContainerMappingProviderSpecificDetails class as
      # Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ProtectionContainerMappingProviderSpecificDetails',
          type: {
            name: 'Composite',
            class_name: 'ProtectionContainerMappingProviderSpecificDetails',
            model_properties: {
              instance_type: {
                required: false,
                read_only: true,
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
