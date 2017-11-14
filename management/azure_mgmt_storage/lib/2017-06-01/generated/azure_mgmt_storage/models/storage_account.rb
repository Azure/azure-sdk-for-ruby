# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2017_06_01
  module Models
    #
    # The storage account.
    #
    class StorageAccount < Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [Sku] Gets the SKU.
      attr_accessor :sku

      # @return [Kind] Gets the Kind. Possible values include: 'Storage',
      # 'BlobStorage'
      attr_accessor :kind

      # @return [Identity] The identity of the resource.
      attr_accessor :identity

      # @return [ProvisioningState] Gets the status of the storage account at
      # the time the operation was called. Possible values include: 'Creating',
      # 'ResolvingDNS', 'Succeeded'
      attr_accessor :provisioning_state

      # @return [Endpoints] Gets the URLs that are used to perform a retrieval
      # of a public blob, queue, or table object. Note that Standard_ZRS and
      # Premium_LRS accounts only return the blob endpoint.
      attr_accessor :primary_endpoints

      # @return [String] Gets the location of the primary data center for the
      # storage account.
      attr_accessor :primary_location

      # @return [AccountStatus] Gets the status indicating whether the primary
      # location of the storage account is available or unavailable. Possible
      # values include: 'available', 'unavailable'
      attr_accessor :status_of_primary

      # @return [DateTime] Gets the timestamp of the most recent instance of a
      # failover to the secondary location. Only the most recent timestamp is
      # retained. This element is not returned if there has never been a
      # failover instance. Only available if the accountType is Standard_GRS or
      # Standard_RAGRS.
      attr_accessor :last_geo_failover_time

      # @return [String] Gets the location of the geo-replicated secondary for
      # the storage account. Only available if the accountType is Standard_GRS
      # or Standard_RAGRS.
      attr_accessor :secondary_location

      # @return [AccountStatus] Gets the status indicating whether the
      # secondary location of the storage account is available or unavailable.
      # Only available if the SKU name is Standard_GRS or Standard_RAGRS.
      # Possible values include: 'available', 'unavailable'
      attr_accessor :status_of_secondary

      # @return [DateTime] Gets the creation date and time of the storage
      # account in UTC.
      attr_accessor :creation_time

      # @return [CustomDomain] Gets the custom domain the user assigned to this
      # storage account.
      attr_accessor :custom_domain

      # @return [Endpoints] Gets the URLs that are used to perform a retrieval
      # of a public blob, queue, or table object from the secondary location of
      # the storage account. Only available if the SKU name is Standard_RAGRS.
      attr_accessor :secondary_endpoints

      # @return [Encryption] Gets the encryption settings on the account. If
      # unspecified, the account is unencrypted.
      attr_accessor :encryption

      # @return [AccessTier] Required for storage accounts where kind =
      # BlobStorage. The access tier used for billing. Possible values include:
      # 'Hot', 'Cool'
      attr_accessor :access_tier

      # @return [Boolean] Allows https traffic only to storage service if sets
      # to true. Default value: false .
      attr_accessor :enable_https_traffic_only

      # @return [NetworkRuleSet] Network rule set
      attr_accessor :network_rule_set


      #
      # Mapper for StorageAccount class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StorageAccount',
          type: {
            name: 'Composite',
            class_name: 'StorageAccount',
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
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
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
              sku: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              kind: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'kind',
                type: {
                  name: 'Enum',
                  module: 'Kind'
                }
              },
              identity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'Identity'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'Enum',
                  module: 'ProvisioningState'
                }
              },
              primary_endpoints: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.primaryEndpoints',
                type: {
                  name: 'Composite',
                  class_name: 'Endpoints'
                }
              },
              primary_location: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.primaryLocation',
                type: {
                  name: 'String'
                }
              },
              status_of_primary: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.statusOfPrimary',
                type: {
                  name: 'Enum',
                  module: 'AccountStatus'
                }
              },
              last_geo_failover_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.lastGeoFailoverTime',
                type: {
                  name: 'DateTime'
                }
              },
              secondary_location: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.secondaryLocation',
                type: {
                  name: 'String'
                }
              },
              status_of_secondary: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.statusOfSecondary',
                type: {
                  name: 'Enum',
                  module: 'AccountStatus'
                }
              },
              creation_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.creationTime',
                type: {
                  name: 'DateTime'
                }
              },
              custom_domain: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.customDomain',
                type: {
                  name: 'Composite',
                  class_name: 'CustomDomain'
                }
              },
              secondary_endpoints: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.secondaryEndpoints',
                type: {
                  name: 'Composite',
                  class_name: 'Endpoints'
                }
              },
              encryption: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.encryption',
                type: {
                  name: 'Composite',
                  class_name: 'Encryption'
                }
              },
              access_tier: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.accessTier',
                type: {
                  name: 'Enum',
                  module: 'AccessTier'
                }
              },
              enable_https_traffic_only: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.supportsHttpsTrafficOnly',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              network_rule_set: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.networkAcls',
                type: {
                  name: 'Composite',
                  class_name: 'NetworkRuleSet'
                }
              }
            }
          }
        }
      end
    end
  end
end
