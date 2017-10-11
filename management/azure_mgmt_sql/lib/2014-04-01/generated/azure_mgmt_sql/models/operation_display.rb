# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL::Api_2014_04_01
  module Models
    #
    # Display metadata associated with the operation.
    #
    class OperationDisplay

      include MsRestAzure

      # @return [String] Service provider: Microsoft SQL Database.
      attr_accessor :provider

      # @return [String] Resource on which the operation is performed: Server,
      # Database, etc.
      attr_accessor :resource

      # @return [String] Type of operation: get, read, delete, etc.
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
                serialized_name: 'provider',
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
              operation: {
                required: false,
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
