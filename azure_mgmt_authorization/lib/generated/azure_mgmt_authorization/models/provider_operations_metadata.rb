# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Authorization
  module Models
    #
    # Provider Operations metadata
    #
    class ProviderOperationsMetadata

      include MsRestAzure

      # @return [String] Gets or sets the provider id.
      attr_accessor :id

      # @return [String] Gets or sets the provider name
      attr_accessor :name

      # @return [String] Gets or sets the provider type
      attr_accessor :type

      # @return [String] Gets or sets the provider display name
      attr_accessor :display_name

      # @return [Array<ResourceType>] Gets or sets the provider resource types
      attr_accessor :resource_types

      # @return [Array<ProviderOperation>] Gets or sets the provider operations
      attr_accessor :operations


      #
      # Mapper for ProviderOperationsMetadata class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ProviderOperationsMetadata',
          type: {
            name: 'Composite',
            class_name: 'ProviderOperationsMetadata',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              resource_types: {
                required: false,
                serialized_name: 'resourceTypes',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ResourceTypeElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ResourceType'
                      }
                  }
                }
              },
              operations: {
                required: false,
                serialized_name: 'operations',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ProviderOperationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ProviderOperation'
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
