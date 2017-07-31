# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # The source control OAuth token.
    #
    class SourceControl < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Name or source control type.
      attr_accessor :source_control_name

      # @return [String] OAuth access token.
      attr_accessor :token

      # @return [String] OAuth access token secret.
      attr_accessor :token_secret

      # @return [String] OAuth refresh token.
      attr_accessor :refresh_token

      # @return [DateTime] OAuth token expiration.
      attr_accessor :expiration_time


      #
      # Mapper for SourceControl class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SourceControl',
          type: {
            name: 'Composite',
            class_name: 'SourceControl',
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
              kind: {
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
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
              source_control_name: {
                required: false,
                serialized_name: 'properties.name',
                type: {
                  name: 'String'
                }
              },
              token: {
                required: false,
                serialized_name: 'properties.token',
                type: {
                  name: 'String'
                }
              },
              token_secret: {
                required: false,
                serialized_name: 'properties.tokenSecret',
                type: {
                  name: 'String'
                }
              },
              refresh_token: {
                required: false,
                serialized_name: 'properties.refreshToken',
                type: {
                  name: 'String'
                }
              },
              expiration_time: {
                required: false,
                serialized_name: 'properties.expirationTime',
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
