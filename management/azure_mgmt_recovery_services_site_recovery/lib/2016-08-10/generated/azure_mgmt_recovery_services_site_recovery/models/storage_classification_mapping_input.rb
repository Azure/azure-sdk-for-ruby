# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Storage mapping input.
    #
    class StorageClassificationMappingInput

      include MsRestAzure

      # @return [StorageMappingInputProperties] Storage mapping input
      # properties.
      attr_accessor :properties


      #
      # Mapper for StorageClassificationMappingInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'StorageClassificationMappingInput',
          type: {
            name: 'Composite',
            class_name: 'StorageClassificationMappingInput',
            model_properties: {
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'StorageMappingInputProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
