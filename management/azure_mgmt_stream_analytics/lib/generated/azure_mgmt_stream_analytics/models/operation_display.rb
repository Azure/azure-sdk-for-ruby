# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StreamAnalytics
  module Models
    #
    # Contains the localized display information for this particular operation
    # / action.
    #
    class OperationDisplay

      include MsRestAzure

      # @return [String] The localized friendly form of the resource provider
      # name.
      attr_accessor :provider

      # @return [String] The localized friendly form of the resource type
      # related to this action/operation.
      attr_accessor :resource

      # @return [String] The localized friendly name for the operation.
      attr_accessor :operation

      # @return [String] The localized friendly description for the operation.
      attr_accessor :description


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
              },
              description: {
                required: false,
                read_only: true,
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
