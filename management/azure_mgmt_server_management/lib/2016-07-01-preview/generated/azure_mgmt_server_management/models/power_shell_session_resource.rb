# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServerManagement::Mgmt::V2016_07_01_preview
  module Models
    #
    # A PowerShell session resource (practically equivalent to a runspace
    # instance).
    #
    class PowerShellSessionResource < Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The PowerShell Session ID.
      attr_accessor :session_id

      # @return [String] The runspace state.
      attr_accessor :state

      # @return [String] The availability of the runspace.
      attr_accessor :runspace_availability

      # @return [DateTime] Timestamp of last time the service disconnected from
      # the runspace.
      attr_accessor :disconnected_on

      # @return [DateTime] Timestamp when the runspace expires.
      attr_accessor :expires_on

      # @return [Version]
      attr_accessor :version

      # @return [String] Name of the runspace.
      attr_accessor :power_shell_session_resource_name


      #
      # Mapper for PowerShellSessionResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PowerShellSessionResource',
          type: {
            name: 'Composite',
            class_name: 'PowerShellSessionResource',
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
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
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
              location: {
                client_side_validation: true,
                required: false,
                read_only: true,
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
              etag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              session_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sessionId',
                type: {
                  name: 'String'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.state',
                type: {
                  name: 'String'
                }
              },
              runspace_availability: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.runspaceAvailability',
                type: {
                  name: 'String'
                }
              },
              disconnected_on: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.disconnectedOn',
                type: {
                  name: 'DateTime'
                }
              },
              expires_on: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.expiresOn',
                type: {
                  name: 'DateTime'
                }
              },
              version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.version',
                type: {
                  name: 'Composite',
                  class_name: 'Version'
                }
              },
              power_shell_session_resource_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.name',
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
