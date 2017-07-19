# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::PowerBiEmbedded
  module Models
    #
    # Model object.
    #
    #
    class WorkspaceCollectionAccessKeys

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Access key 1
      attr_accessor :key1

      # @return [String] Access key 2
      attr_accessor :key2


      #
      # Mapper for WorkspaceCollectionAccessKeys class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'WorkspaceCollectionAccessKeys',
          type: {
            name: 'Composite',
            class_name: 'WorkspaceCollectionAccessKeys',
            model_properties: {
              key1: {
                required: false,
                serialized_name: 'key1',
                type: {
                  name: 'String'
                }
              },
              key2: {
                required: false,
                serialized_name: 'key2',
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
