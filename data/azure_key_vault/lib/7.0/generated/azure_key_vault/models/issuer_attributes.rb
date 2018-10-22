# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V7_0
  module Models
    #
    # The attributes of an issuer managed by the Key Vault service.
    #
    class IssuerAttributes

      include MsRestAzure

      # @return [Boolean] Determines whether the issuer is enabled.
      attr_accessor :enabled

      # @return Creation time in UTC.
      attr_accessor :created

      # @return Last updated time in UTC.
      attr_accessor :updated


      #
      # Mapper for IssuerAttributes class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IssuerAttributes',
          type: {
            name: 'Composite',
            class_name: 'IssuerAttributes',
            model_properties: {
              enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
                }
              },
              created: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'created',
                type: {
                  name: 'UnixTime'
                }
              },
              updated: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'updated',
                type: {
                  name: 'UnixTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
