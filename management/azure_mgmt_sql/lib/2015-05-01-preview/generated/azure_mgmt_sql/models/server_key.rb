# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2015_05_01_preview
  module Models
    #
    # A server key.
    #
    class ServerKey < ProxyResource

      include MsRestAzure

      # @return [String] Kind of encryption protector. This is metadata used
      # for the Azure portal experience.
      attr_accessor :kind

      # @return [String] Resource location.
      attr_accessor :location

      # @return [String] Subregion of the server key.
      attr_accessor :subregion

      # @return [ServerKeyType] The server key type like 'ServiceManaged',
      # 'AzureKeyVault'. Possible values include: 'ServiceManaged',
      # 'AzureKeyVault'
      attr_accessor :server_key_type

      # @return [String] The URI of the server key.
      attr_accessor :uri

      # @return [String] Thumbprint of the server key.
      attr_accessor :thumbprint

      # @return [DateTime] The server key creation date.
      attr_accessor :creation_date


      #
      # Mapper for ServerKey class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ServerKey',
          type: {
            name: 'Composite',
            class_name: 'ServerKey',
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
              subregion: {
                required: false,
                read_only: true,
                serialized_name: 'properties.subregion',
                type: {
                  name: 'String'
                }
              },
              server_key_type: {
                required: true,
                serialized_name: 'properties.serverKeyType',
                type: {
                  name: 'String'
                }
              },
              uri: {
                required: false,
                serialized_name: 'properties.uri',
                type: {
                  name: 'String'
                }
              },
              thumbprint: {
                required: false,
                serialized_name: 'properties.thumbprint',
                type: {
                  name: 'String'
                }
              },
              creation_date: {
                required: false,
                serialized_name: 'properties.creationDate',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
