# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2017_10_01
  module Models
    #
    # An object that represents policies for a container registry.
    #
    class RegistryPolicies

      include MsRestAzure

      # @return [QuarantinePolicy] An object that represents quarantine policy
      # for a container registry.
      attr_accessor :quarantine_policy

      # @return [TrustPolicy] An object that represents content trust policy
      # for a container registry.
      attr_accessor :trust_policy


      #
      # Mapper for RegistryPolicies class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RegistryPolicies',
          type: {
            name: 'Composite',
            class_name: 'RegistryPolicies',
            model_properties: {
              quarantine_policy: {
                required: false,
                serialized_name: 'quarantinePolicy',
                type: {
                  name: 'Composite',
                  class_name: 'QuarantinePolicy'
                }
              },
              trust_policy: {
                required: false,
                serialized_name: 'trustPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'TrustPolicy'
                }
              }
            }
          }
        }
      end
    end
  end
end
