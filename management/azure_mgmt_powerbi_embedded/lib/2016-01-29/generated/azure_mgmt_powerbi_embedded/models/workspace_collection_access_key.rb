# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::PowerBiEmbedded::Mgmt::V2016_01_29
  module Models
    #
    # Model object.
    #
    #
    class WorkspaceCollectionAccessKey

      include MsRestAzure

      # @return [AccessKeyName] Key name. Possible values include: 'key1',
      # 'key2'
      attr_accessor :key_name


      #
      # Mapper for WorkspaceCollectionAccessKey class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'WorkspaceCollectionAccessKey',
          type: {
            name: 'Composite',
            class_name: 'WorkspaceCollectionAccessKey',
            model_properties: {
              key_name: {
                required: false,
                serialized_name: 'keyName',
                type: {
                  name: 'Enum',
                  module: 'AccessKeyName'
                }
              }
            }
          }
        }
      end
    end
  end
end
