# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # Parameters that define the representation of topology.
    #
    class TopologyParameters

      include MsRestAzure

      # @return [String] The name of the target resource group to perform
      # topology on.
      attr_accessor :target_resource_group_name


      #
      # Mapper for TopologyParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'TopologyParameters',
          type: {
            name: 'Composite',
            class_name: 'TopologyParameters',
            model_properties: {
              target_resource_group_name: {
                required: true,
                serialized_name: 'targetResourceGroupName',
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
