# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Microsoft.CustomProviders
  module Models
    #
    # Supported operations of this resource provider.
    #
    class ResourceProviderOperation

      include MsRestAzure

      # @return [String] Operation name, in format of
      # {provider}/{resource}/{operation}
      attr_accessor :name

      # @return [ResourceProviderOperationDisplay] Display metadata associated
      # with the operation.
      attr_accessor :display


      #
      # Mapper for ResourceProviderOperation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ResourceProviderOperation',
          type: {
            name: 'Composite',
            class_name: 'ResourceProviderOperation',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              display: {
                required: false,
                serialized_name: 'display',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceProviderOperationDisplay'
                }
              }
            }
          }
        }
      end
    end
  end
end
