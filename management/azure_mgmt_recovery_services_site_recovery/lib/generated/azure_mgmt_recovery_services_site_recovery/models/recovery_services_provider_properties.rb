# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # Recovery services provider properties.
    #
    class RecoveryServicesProviderProperties

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Type of the site.
      attr_accessor :fabric_type

      # @return [String] Friendly name of the DRA.
      attr_accessor :friendly_name

      # @return [String] The provider version.
      attr_accessor :provider_version

      # @return [String] The fabric provider.
      attr_accessor :server_version

      # @return [String] DRA version status.
      attr_accessor :provider_version_state

      # @return [DateTime] Expiry date if the version is deprecated.
      attr_accessor :provider_version_expiry_date

      # @return [String] The fabric friendly name.
      attr_accessor :fabric_friendly_name

      # @return [DateTime] Time when last heartbeat was sent by the DRA.
      attr_accessor :last_heart_beat

      # @return [String] A value indicating whether DRA is responsive.
      attr_accessor :connection_status

      # @return [Integer] Number of protected VMs currently managed by the DRA.
      attr_accessor :protected_item_count

      # @return [Array<String>] The scenarios allowed on this provider.
      attr_accessor :allowed_scenarios

      # @return [Array<HealthError>] The recovery services provider health
      # error details.
      attr_accessor :health_error_details

      # @return [String] The DRA Id.
      attr_accessor :dra_identifier

      # @return [IdentityInformation] The identity details.
      attr_accessor :identity_details


      #
      # Mapper for RecoveryServicesProviderProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RecoveryServicesProviderProperties',
          type: {
            name: 'Composite',
            class_name: 'RecoveryServicesProviderProperties',
            model_properties: {
              fabric_type: {
                required: false,
                serialized_name: 'fabricType',
                type: {
                  name: 'String'
                }
              },
              friendly_name: {
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              provider_version: {
                required: false,
                serialized_name: 'providerVersion',
                type: {
                  name: 'String'
                }
              },
              server_version: {
                required: false,
                serialized_name: 'serverVersion',
                type: {
                  name: 'String'
                }
              },
              provider_version_state: {
                required: false,
                serialized_name: 'providerVersionState',
                type: {
                  name: 'String'
                }
              },
              provider_version_expiry_date: {
                required: false,
                serialized_name: 'providerVersionExpiryDate',
                type: {
                  name: 'DateTime'
                }
              },
              fabric_friendly_name: {
                required: false,
                serialized_name: 'fabricFriendlyName',
                type: {
                  name: 'String'
                }
              },
              last_heart_beat: {
                required: false,
                serialized_name: 'lastHeartBeat',
                type: {
                  name: 'DateTime'
                }
              },
              connection_status: {
                required: false,
                serialized_name: 'connectionStatus',
                type: {
                  name: 'String'
                }
              },
              protected_item_count: {
                required: false,
                serialized_name: 'protectedItemCount',
                type: {
                  name: 'Number'
                }
              },
              allowed_scenarios: {
                required: false,
                serialized_name: 'allowedScenarios',
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
              health_error_details: {
                required: false,
                serialized_name: 'healthErrorDetails',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'HealthErrorElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HealthError'
                      }
                  }
                }
              },
              dra_identifier: {
                required: false,
                serialized_name: 'draIdentifier',
                type: {
                  name: 'String'
                }
              },
              identity_details: {
                required: false,
                serialized_name: 'identityDetails',
                type: {
                  name: 'Composite',
                  class_name: 'IdentityInformation'
                }
              }
            }
          }
        }
      end
    end
  end
end
