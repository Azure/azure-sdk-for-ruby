# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CustomerInsights::Mgmt::V2017_04_26
  module Models
    #
    # The Azure Blob connector properties.
    #
    class AzureBlobConnectorProperties

      include MsRestAzure

      # @return [String] The connection KeyVault URL.
      attr_accessor :connection_key_vault_url


      #
      # Mapper for AzureBlobConnectorProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AzureBlobConnectorProperties',
          type: {
            name: 'Composite',
            class_name: 'AzureBlobConnectorProperties',
            model_properties: {
              connection_key_vault_url: {
                required: true,
                serialized_name: 'connectionKeyVaultUrl',
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
