# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2017_01_31
  module Models
    #
    # Contains information about SSH certificate public key data.
    #
    class ContainerServiceSshPublicKey

      include MsRestAzure

      # @return [String] Certificate public key used to authenticate with VMs
      # through SSH. The certificate must be in PEM format with or without
      # headers.
      attr_accessor :key_data


      #
      # Mapper for ContainerServiceSshPublicKey class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ContainerServiceSshPublicKey',
          type: {
            name: 'Composite',
            class_name: 'ContainerServiceSshPublicKey',
            model_properties: {
              key_data: {
                required: true,
                serialized_name: 'keyData',
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
