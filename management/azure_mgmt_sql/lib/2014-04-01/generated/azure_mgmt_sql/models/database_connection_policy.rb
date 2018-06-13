# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2014_04_01
  module Models
    #
    # A database connection policy.
    #
    class DatabaseConnectionPolicy < ProxyResource

      include MsRestAzure

      # @return [String] Resource kind.
      attr_accessor :kind

      # @return [String] Resource location.
      attr_accessor :location

      # @return [String] The state of security access.
      attr_accessor :security_enabled_access

      # @return [String] The fully qualified host name of the auditing proxy.
      attr_accessor :proxy_dns_name

      # @return [String] The port number of the auditing proxy.
      attr_accessor :proxy_port

      # @return [String] The visibility of the auditing proxy.
      attr_accessor :visibility

      # @return [String] Whether server default is enabled or disabled.
      attr_accessor :use_server_default

      # @return [String] The state of proxy redirection.
      attr_accessor :redirection_state

      # @return [String] The connection policy state.
      attr_accessor :state


      #
      # Mapper for DatabaseConnectionPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DatabaseConnectionPolicy',
          type: {
            name: 'Composite',
            class_name: 'DatabaseConnectionPolicy',
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
              location: {
                required: false,
                read_only: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              security_enabled_access: {
                required: false,
                serialized_name: 'properties.securityEnabledAccess',
                type: {
                  name: 'String'
                }
              },
              proxy_dns_name: {
                required: false,
                serialized_name: 'properties.proxyDnsName',
                type: {
                  name: 'String'
                }
              },
              proxy_port: {
                required: false,
                serialized_name: 'properties.proxyPort',
                type: {
                  name: 'String'
                }
              },
              visibility: {
                required: false,
                serialized_name: 'properties.visibility',
                type: {
                  name: 'String'
                }
              },
              use_server_default: {
                required: false,
                serialized_name: 'properties.useServerDefault',
                type: {
                  name: 'String'
                }
              },
              redirection_state: {
                required: false,
                serialized_name: 'properties.redirectionState',
                type: {
                  name: 'String'
                }
              },
              state: {
                required: false,
                serialized_name: 'properties.state',
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
