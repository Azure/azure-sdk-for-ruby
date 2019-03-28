# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServices::Mgmt::V2016_06_01
  module Models
    #
    # Localized display information of an operation.
    #
    class ClientDiscoveryDisplay

      include MsRestAzure

      # @return [String] Name of the provider for display purposes
      attr_accessor :provider

      # @return [String] ResourceType for which this Operation can be
      # performed.
      attr_accessor :resource

      # @return [String] Operations Name itself.
      attr_accessor :operation

      # @return [String] Description of the operation having details of what
      # operation is about.
      attr_accessor :description


      #
      # Mapper for ClientDiscoveryDisplay class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ClientDiscoveryDisplay',
          type: {
            name: 'Composite',
            class_name: 'ClientDiscoveryDisplay',
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
