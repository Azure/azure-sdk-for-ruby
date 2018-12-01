# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataLakeStore::Mgmt::V2016_11_01
  module Models
    #
    # Model object.
    #
    #
    class CreateDataLakeStoreAccountParameters

      include MsRestAzure

      # @return [String] The resource location.
      attr_accessor :location

      # @return [Hash{String => String}] The resource tags.
      attr_accessor :tags

      # @return [EncryptionIdentity] The Key Vault encryption identity, if any.
      attr_accessor :identity

      # @return [String] The default owner group for all new folders and files
      # created in the Data Lake Store account.
      attr_accessor :default_group

      # @return [EncryptionConfig] The Key Vault encryption configuration.
      attr_accessor :encryption_config

      # @return [EncryptionState] The current state of encryption for this Data
      # Lake Store account. Possible values include: 'Enabled', 'Disabled'
      attr_accessor :encryption_state

      # @return [Array<CreateFirewallRuleWithAccountParameters>] The list of
      # firewall rules associated with this Data Lake Store account.
      attr_accessor :firewall_rules

      # @return [Array<CreateVirtualNetworkRuleWithAccountParameters>] The list
      # of virtual network rules associated with this Data Lake Store account.
      attr_accessor :virtual_network_rules

      # @return [FirewallState] The current state of the IP address firewall
      # for this Data Lake Store account. Possible values include: 'Enabled',
      # 'Disabled'
      attr_accessor :firewall_state

      # @return [FirewallAllowAzureIpsState] The current state of allowing or
      # disallowing IPs originating within Azure through the firewall. If the
      # firewall is disabled, this is not enforced. Possible values include:
      # 'Enabled', 'Disabled'
      attr_accessor :firewall_allow_azure_ips

      # @return [Array<CreateTrustedIdProviderWithAccountParameters>] The list
      # of trusted identity providers associated with this Data Lake Store
      # account.
      attr_accessor :trusted_id_providers

      # @return [TrustedIdProviderState] The current state of the trusted
      # identity provider feature for this Data Lake Store account. Possible
      # values include: 'Enabled', 'Disabled'
      attr_accessor :trusted_id_provider_state

      # @return [TierType] The commitment tier to use for next month. Possible
      # values include: 'Consumption', 'Commitment_1TB', 'Commitment_10TB',
      # 'Commitment_100TB', 'Commitment_500TB', 'Commitment_1PB',
      # 'Commitment_5PB'
      attr_accessor :new_tier


      #
      # Mapper for CreateDataLakeStoreAccountParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CreateDataLakeStoreAccountParameters',
          type: {
            name: 'Composite',
            class_name: 'CreateDataLakeStoreAccountParameters',
            model_properties: {
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
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
              },
              identity: {
                required: false,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'EncryptionIdentity'
                }
              },
              default_group: {
                required: false,
                serialized_name: 'properties.defaultGroup',
                type: {
                  name: 'String'
                }
              },
              encryption_config: {
                required: false,
                serialized_name: 'properties.encryptionConfig',
                type: {
                  name: 'Composite',
                  class_name: 'EncryptionConfig'
                }
              },
              encryption_state: {
                required: false,
                serialized_name: 'properties.encryptionState',
                type: {
                  name: 'Enum',
                  module: 'EncryptionState'
                }
              },
              firewall_rules: {
                required: false,
                serialized_name: 'properties.firewallRules',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'CreateFirewallRuleWithAccountParametersElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CreateFirewallRuleWithAccountParameters'
                      }
                  }
                }
              },
              virtual_network_rules: {
                required: false,
                serialized_name: 'properties.virtualNetworkRules',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'CreateVirtualNetworkRuleWithAccountParametersElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CreateVirtualNetworkRuleWithAccountParameters'
                      }
                  }
                }
              },
              firewall_state: {
                required: false,
                serialized_name: 'properties.firewallState',
                type: {
                  name: 'Enum',
                  module: 'FirewallState'
                }
              },
              firewall_allow_azure_ips: {
                required: false,
                serialized_name: 'properties.firewallAllowAzureIps',
                type: {
                  name: 'Enum',
                  module: 'FirewallAllowAzureIpsState'
                }
              },
              trusted_id_providers: {
                required: false,
                serialized_name: 'properties.trustedIdProviders',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'CreateTrustedIdProviderWithAccountParametersElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CreateTrustedIdProviderWithAccountParameters'
                      }
                  }
                }
              },
              trusted_id_provider_state: {
                required: false,
                serialized_name: 'properties.trustedIdProviderState',
                type: {
                  name: 'Enum',
                  module: 'TrustedIdProviderState'
                }
              },
              new_tier: {
                required: false,
                serialized_name: 'properties.newTier',
                type: {
                  name: 'Enum',
                  module: 'TierType'
                }
              }
            }
          }
        }
      end
    end
  end
end
