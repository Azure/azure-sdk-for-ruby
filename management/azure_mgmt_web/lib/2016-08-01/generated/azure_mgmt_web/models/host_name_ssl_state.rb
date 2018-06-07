# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_08_01
  module Models
    #
    # SSL-enabled hostname.
    #
    class HostNameSslState

      include MsRestAzure

      # @return [String] Hostname.
      attr_accessor :name

      # @return [SslState] SSL type. Possible values include: 'Disabled',
      # 'SniEnabled', 'IpBasedEnabled'
      attr_accessor :ssl_state

      # @return [String] Virtual IP address assigned to the hostname if IP
      # based SSL is enabled.
      attr_accessor :virtual_ip

      # @return [String] SSL certificate thumbprint.
      attr_accessor :thumbprint

      # @return [Boolean] Set to <code>true</code> to update existing hostname.
      attr_accessor :to_update

      # @return [HostType] Indicates whether the hostname is a standard or
      # repository hostname. Possible values include: 'Standard', 'Repository'
      attr_accessor :host_type


      #
      # Mapper for HostNameSslState class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'HostNameSslState',
          type: {
            name: 'Composite',
            class_name: 'HostNameSslState',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              ssl_state: {
                required: false,
                serialized_name: 'sslState',
                type: {
                  name: 'Enum',
                  module: 'SslState'
                }
              },
              virtual_ip: {
                required: false,
                serialized_name: 'virtualIP',
                type: {
                  name: 'String'
                }
              },
              thumbprint: {
                required: false,
                serialized_name: 'thumbprint',
                type: {
                  name: 'String'
                }
              },
              to_update: {
                required: false,
                serialized_name: 'toUpdate',
                type: {
                  name: 'Boolean'
                }
              },
              host_type: {
                required: false,
                serialized_name: 'hostType',
                type: {
                  name: 'Enum',
                  module: 'HostType'
                }
              }
            }
          }
        }
      end
    end
  end
end
