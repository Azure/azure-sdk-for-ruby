# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Properties to configure a custom container service cluster.
    #
    class ContainerServiceCustomProfile

      include MsRestAzure

      # @return [String] The name of the custom orchestrator to use.
      attr_accessor :orchestrator


      #
      # Mapper for ContainerServiceCustomProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ContainerServiceCustomProfile',
          type: {
            name: 'Composite',
            class_name: 'ContainerServiceCustomProfile',
            model_properties: {
              orchestrator: {
                required: true,
                serialized_name: 'orchestrator',
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
