# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Resources
  module Models
    #
    # The resource group properties.
    #
    class ResourceGroupProperties

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The provisioning state.
      attr_accessor :provisioning_state


      #
      # Mapper for ResourceGroupProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ResourceGroupProperties',
          type: {
            name: 'Composite',
            class_name: 'ResourceGroupProperties',
            model_properties: {
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'provisioningState',
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
