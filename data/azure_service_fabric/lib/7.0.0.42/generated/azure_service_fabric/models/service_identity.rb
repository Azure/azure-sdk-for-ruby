# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Map service identity friendly name to an application identity.
    #
    class ServiceIdentity

      include MsRestAzure

      # @return [String] The identity friendly name.
      attr_accessor :name

      # @return [String] The application identity name.
      attr_accessor :identity_ref


      #
      # Mapper for ServiceIdentity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceIdentity',
          type: {
            name: 'Composite',
            class_name: 'ServiceIdentity',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              identity_ref: {
                client_side_validation: true,
                required: false,
                serialized_name: 'identityRef',
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
