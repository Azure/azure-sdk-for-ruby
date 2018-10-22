# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Authorization::Mgmt::V2015_07_01_preview
  module Models
    #
    # Provider Operations metadata
    #
    class ProviderOperationsMetadata

      include MsRestAzure

      # @return [String] The provider id.
      attr_accessor :id

      # @return [String] The provider name.
      attr_accessor :name

      # @return [String] The provider type.
      attr_accessor :type

      # @return [String] The provider display name.
      attr_accessor :display_name

      # @return [Array<ResourceType>] The provider resource types
      attr_accessor :resource_types

      # @return [Array<ProviderOperation>] The provider operations.
      attr_accessor :operations


      #
      # Mapper for ProviderOperationsMetadata class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ProviderOperationsMetadata',
          type: {
            name: 'Composite',
            class_name: 'ProviderOperationsMetadata',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              resource_types: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceTypes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
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
                client_side_validation: true,
                required: false,
                serialized_name: 'operations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
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
