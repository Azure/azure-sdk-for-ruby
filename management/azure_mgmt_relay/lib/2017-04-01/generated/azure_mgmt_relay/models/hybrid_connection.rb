# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Relay::Api_2017_04_01
  module Models
    #
    # Description of hybrid connection resource.
    #
    class HybridConnection < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [DateTime] The time the hybrid connection was created.
      attr_accessor :created_at

      # @return [DateTime] The time the namespace was updated.
      attr_accessor :updated_at

      # @return [Integer] The number of listeners for this hybrid connection.
      # Note that min : 1 and max:25 are supported.
      attr_accessor :listener_count

      # @return [Boolean] Returns true if client authorization is needed for
      # this hybrid connection; otherwise, false.
      attr_accessor :requires_client_authorization

      # @return [String] The usermetadata is a placeholder to store
      # user-defined string data for the hybrid connection endpoint. For
      # example, it can be used to store descriptive data, such as a list of
      # teams and their contact information. Also, user-defined configuration
      # settings can be stored.
      attr_accessor :user_metadata


      #
      # Mapper for HybridConnection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'HybridConnection',
          type: {
            name: 'Composite',
            class_name: 'HybridConnection',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              created_at: {
                required: false,
                read_only: true,
                serialized_name: 'properties.createdAt',
                type: {
                  name: 'DateTime'
                }
              },
              updated_at: {
                required: false,
                read_only: true,
                serialized_name: 'properties.updatedAt',
                type: {
                  name: 'DateTime'
                }
              },
              listener_count: {
                required: false,
                read_only: true,
                serialized_name: 'properties.listenerCount',
                constraints: {
                  InclusiveMaximum: 25,
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              },
              requires_client_authorization: {
                required: false,
                serialized_name: 'properties.requiresClientAuthorization',
                type: {
                  name: 'Boolean'
                }
              },
              user_metadata: {
                required: false,
                serialized_name: 'properties.userMetadata',
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
