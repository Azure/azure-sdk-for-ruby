# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # HvrA provider specific input for failover.
    #
    class HyperVReplicaAzureFailoverProviderInput < ProviderSpecificFailoverInput

      include MsRestAzure


      def initialize
        @instanceType = "HyperVReplicaAzure"
      end

      attr_accessor :instanceType

      # @return [String] Location of the vault.
      attr_accessor :vault_location

      # @return [String] Primary kek certificate pfx.
      attr_accessor :primary_kek_certificate_pfx

      # @return [String] Secondary kek certificate pfx.
      attr_accessor :secondary_kek_certificate_pfx

      # @return [String] The recovery point id to be passed to failover to a
      # particular recovery point. In case of latest recovery point, null
      # should be passed.
      attr_accessor :recovery_point_id


      #
      # Mapper for HyperVReplicaAzureFailoverProviderInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'HyperVReplicaAzure',
          type: {
            name: 'Composite',
            class_name: 'HyperVReplicaAzureFailoverProviderInput',
            model_properties: {
              instanceType: {
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              vault_location: {
                required: false,
                serialized_name: 'vaultLocation',
                type: {
                  name: 'String'
                }
              },
              primary_kek_certificate_pfx: {
                required: false,
                serialized_name: 'primaryKekCertificatePfx',
                type: {
                  name: 'String'
                }
              },
              secondary_kek_certificate_pfx: {
                required: false,
                serialized_name: 'secondaryKekCertificatePfx',
                type: {
                  name: 'String'
                }
              },
              recovery_point_id: {
                required: false,
                serialized_name: 'recoveryPointId',
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
