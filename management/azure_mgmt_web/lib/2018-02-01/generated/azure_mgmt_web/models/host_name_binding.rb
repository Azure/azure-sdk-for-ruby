# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2018_02_01
  module Models
    #
    # A hostname binding object.
    #
    class HostNameBinding < ProxyOnlyResource

      include MsRestAzure

      # @return [String] App Service app name.
      attr_accessor :site_name

      # @return [String] Fully qualified ARM domain resource URI.
      attr_accessor :domain_id

      # @return [String] Azure resource name.
      attr_accessor :azure_resource_name

      # @return [AzureResourceType] Azure resource type. Possible values
      # include: 'Website', 'TrafficManager'
      attr_accessor :azure_resource_type

      # @return [CustomHostNameDnsRecordType] Custom DNS record type. Possible
      # values include: 'CName', 'A'
      attr_accessor :custom_host_name_dns_record_type

      # @return [HostNameType] Hostname type. Possible values include:
      # 'Verified', 'Managed'
      attr_accessor :host_name_type

      # @return [SslState] SSL type. Possible values include: 'Disabled',
      # 'SniEnabled', 'IpBasedEnabled'
      attr_accessor :ssl_state

      # @return [String] SSL certificate thumbprint
      attr_accessor :thumbprint

      # @return [String] Virtual IP address assigned to the hostname if IP
      # based SSL is enabled.
      attr_accessor :virtual_ip


      #
      # Mapper for HostNameBinding class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HostNameBinding',
          type: {
            name: 'Composite',
            class_name: 'HostNameBinding',
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
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
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
              site_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.siteName',
                type: {
                  name: 'String'
                }
              },
              domain_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.domainId',
                type: {
                  name: 'String'
                }
              },
              azure_resource_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.azureResourceName',
                type: {
                  name: 'String'
                }
              },
              azure_resource_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.azureResourceType',
                type: {
                  name: 'Enum',
                  module: 'AzureResourceType'
                }
              },
              custom_host_name_dns_record_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.customHostNameDnsRecordType',
                type: {
                  name: 'Enum',
                  module: 'CustomHostNameDnsRecordType'
                }
              },
              host_name_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.hostNameType',
                type: {
                  name: 'Enum',
                  module: 'HostNameType'
                }
              },
              ssl_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sslState',
                type: {
                  name: 'Enum',
                  module: 'SslState'
                }
              },
              thumbprint: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.thumbprint',
                type: {
                  name: 'String'
                }
              },
              virtual_ip: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.virtualIP',
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
