# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # A database blob auditing policy.
    #
    class DatabaseBlobAuditingPolicy < ProxyResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Resource kind.
      attr_accessor :kind

      # @return [BlobAuditingPolicyState] Specifies the state of the policy. If
      # state is Enabled, storageEndpoint and storageAccountAccessKey are
      # required. Possible values include: 'Enabled', 'Disabled'
      attr_accessor :state

      # @return [String] Specifies the blob storage endpoint (e.g.
      # https://MyAccount.blob.core.windows.net). If state is Enabled,
      # storageEndpoint is required.
      attr_accessor :storage_endpoint

      # @return [String] Specifies the identifier key of the auditing storage
      # account. If state is Enabled, storageAccountAccessKey is required.
      attr_accessor :storage_account_access_key

      # @return [Integer] Specifies the number of days to keep in the audit
      # logs.
      attr_accessor :retention_days

      # @return [Array<String>] Specifies the Actions and Actions-Groups to
      # audit.
      attr_accessor :audit_actions_and_groups

      # @return Specifies the blob storage subscription Id.
      attr_accessor :storage_account_subscription_id

      # @return [Boolean] Specifies whether storageAccountAccessKey value is
      # the storage’s secondary key.
      attr_accessor :is_storage_secondary_key_in_use


      #
      # Mapper for DatabaseBlobAuditingPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DatabaseBlobAuditingPolicy',
          type: {
            name: 'Composite',
            class_name: 'DatabaseBlobAuditingPolicy',
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
              kind: {
                required: false,
                read_only: true,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              state: {
                required: true,
                serialized_name: 'properties.state',
                type: {
                  name: 'Enum',
                  module: 'BlobAuditingPolicyState'
                }
              },
              storage_endpoint: {
                required: false,
                serialized_name: 'properties.storageEndpoint',
                type: {
                  name: 'String'
                }
              },
              storage_account_access_key: {
                required: false,
                serialized_name: 'properties.storageAccountAccessKey',
                type: {
                  name: 'String'
                }
              },
              retention_days: {
                required: false,
                serialized_name: 'properties.retentionDays',
                type: {
                  name: 'Number'
                }
              },
              audit_actions_and_groups: {
                required: false,
                serialized_name: 'properties.auditActionsAndGroups',
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
              storage_account_subscription_id: {
                required: false,
                serialized_name: 'properties.storageAccountSubscriptionId',
                type: {
                  name: 'String'
                }
              },
              is_storage_secondary_key_in_use: {
                required: false,
                serialized_name: 'properties.isStorageSecondaryKeyInUse',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
