# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::PowerBiEmbedded
  module Models
    #
    # Model object.
    #
    #
    class WorkspaceCollectionList

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<WorkspaceCollection>]
      attr_accessor :value


      #
      # Mapper for WorkspaceCollectionList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'WorkspaceCollectionList',
          type: {
            name: 'Composite',
            class_name: 'WorkspaceCollectionList',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'WorkspaceCollectionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'WorkspaceCollection'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
