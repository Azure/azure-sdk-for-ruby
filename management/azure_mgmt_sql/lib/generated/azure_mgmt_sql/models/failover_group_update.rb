# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # A failover group update request.
    #
    class FailoverGroupUpdate

      include MsRestAzure

      include MsRest::JSONable
      # @return [FailoverGroupReadWriteEndpoint] Read-write endpoint of the
      # failover group instance.
      attr_accessor :read_write_endpoint

      # @return [FailoverGroupReadOnlyEndpoint] Read-only endpoint of the
      # failover group instance.
      attr_accessor :read_only_endpoint

      # @return [Array<String>] List of databases in the failover group.
      attr_accessor :databases

      # @return [Hash{String => String}] Resource tags.
      attr_accessor :tags


      #
      # Mapper for FailoverGroupUpdate class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'FailoverGroupUpdate',
          type: {
            name: 'Composite',
            class_name: 'FailoverGroupUpdate',
            model_properties: {
              read_write_endpoint: {
                required: false,
                serialized_name: 'properties.readWriteEndpoint',
                type: {
                  name: 'Composite',
                  class_name: 'FailoverGroupReadWriteEndpoint'
                }
              },
              read_only_endpoint: {
                required: false,
                serialized_name: 'properties.readOnlyEndpoint',
                type: {
                  name: 'Composite',
                  class_name: 'FailoverGroupReadOnlyEndpoint'
                }
              },
              databases: {
                required: false,
                serialized_name: 'properties.databases',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
