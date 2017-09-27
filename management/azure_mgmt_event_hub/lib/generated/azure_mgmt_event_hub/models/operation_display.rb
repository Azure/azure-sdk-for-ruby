# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::EventHub
  module Models
    #
    # The object that represents the operation.
    #
    class OperationDisplay

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Service provider: Microsoft.EventHub
      attr_accessor :provider

      # @return [String] Resource on which the operation is performed: Invoice,
      # etc.
      attr_accessor :resource

      # @return [String] Operation type: Read, write, delete, etc.
      attr_accessor :operation


      #
      # Mapper for OperationDisplay class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Operation_display',
          type: {
            name: 'Composite',
            class_name: 'OperationDisplay',
            model_properties: {
              provider: {
                required: false,
                read_only: true,
                serialized_name: 'provider',
                type: {
                  name: 'String'
                }
              },
              resource: {
                required: false,
                read_only: true,
                serialized_name: 'resource',
                type: {
                  name: 'String'
                }
              },
              operation: {
                required: false,
                read_only: true,
                serialized_name: 'operation',
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
