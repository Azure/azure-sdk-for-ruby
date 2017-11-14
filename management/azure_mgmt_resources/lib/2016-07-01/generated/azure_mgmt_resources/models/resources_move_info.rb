# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources::Mgmt::V2016_07_01
  module Models
    #
    # Parameters of move resources.
    #
    class ResourcesMoveInfo

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<String>] The ids of the resources.
      attr_accessor :resources

      # @return [String] The target resource group.
      attr_accessor :target_resource_group


      #
      # Mapper for ResourcesMoveInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourcesMoveInfo',
          type: {
            name: 'Composite',
            class_name: 'ResourcesMoveInfo',
            model_properties: {
              resources: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resources',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              target_resource_group: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetResourceGroup',
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
