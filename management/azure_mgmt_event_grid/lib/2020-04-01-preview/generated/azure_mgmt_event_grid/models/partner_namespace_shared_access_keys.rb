# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2020_04_01_preview
  module Models
    #
    # Shared access keys of the partner namespace.
    #
    class PartnerNamespaceSharedAccessKeys

      include MsRestAzure

      # @return [String] Shared access key1 for the partner namespace.
      attr_accessor :key1

      # @return [String] Shared access key2 for the partner namespace.
      attr_accessor :key2


      #
      # Mapper for PartnerNamespaceSharedAccessKeys class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PartnerNamespaceSharedAccessKeys',
          type: {
            name: 'Composite',
            class_name: 'PartnerNamespaceSharedAccessKeys',
            model_properties: {
              key1: {
                client_side_validation: true,
                required: false,
                serialized_name: 'key1',
                type: {
                  name: 'String'
                }
              },
              key2: {
                client_side_validation: true,
                required: false,
                serialized_name: 'key2',
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
