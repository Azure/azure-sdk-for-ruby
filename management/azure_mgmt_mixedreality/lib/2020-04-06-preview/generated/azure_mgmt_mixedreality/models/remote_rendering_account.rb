# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MixedReality::Mgmt::V2020_04_06_preview
  module Models
    #
    # RemoteRenderingAccount Response.
    #
    class RemoteRenderingAccount < TrackedResource

      include MsRestAzure

      # @return [RemoteRenderingAccountIdentity]
      attr_accessor :identity

      # @return [String] unique id of certain account.
      attr_accessor :account_id

      # @return [String] Correspond domain name of certain Spatial Anchors
      # Account
      attr_accessor :account_domain


      #
      # Mapper for RemoteRenderingAccount class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RemoteRenderingAccount',
          type: {
            name: 'Composite',
            class_name: 'RemoteRenderingAccount',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              identity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'RemoteRenderingAccountIdentity'
                }
              },
              account_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.accountId',
                type: {
                  name: 'String'
                }
              },
              account_domain: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.accountDomain',
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
