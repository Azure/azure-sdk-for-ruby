# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ManagedServiceIdentity::Mgmt::V2015_08_31_preview
  module Models
    #
    # Operation Display.

    # The object that describes the operation.
    #
    class OperationDisplay

      include MsRestAzure

      # @return [String] Resource Provider Name. Friendly name of the resource
      # provider.
      attr_accessor :provider

      # @return [String] Operation Type. The type of operation. For example:
      # read, write, delete.
      attr_accessor :operation

      # @return [String] Resource Type. The resource type on which the
      # operation is performed.
      attr_accessor :resource

      # @return [String] Operation description. A description of the operation.
      attr_accessor :description


      #
      # Mapper for OperationDisplay class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'OperationDisplay',
          type: {
            name: 'Composite',
            class_name: 'OperationDisplay',
            model_properties: {
              provider: {
                required: false,
                serialized_name: 'provider',
                type: {
                  name: 'String'
                }
              },
              operation: {
                required: false,
                serialized_name: 'operation',
                type: {
                  name: 'String'
                }
              },
              resource: {
                required: false,
                serialized_name: 'resource',
                type: {
                  name: 'String'
                }
              },
              description: {
                required: false,
                serialized_name: 'description',
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
