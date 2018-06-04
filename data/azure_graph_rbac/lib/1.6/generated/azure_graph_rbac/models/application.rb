# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::GraphRbac::V1_6
  module Models
    #
    # Active Directory application information.
    #
    class Application < DirectoryObject

      include MsRestAzure


      def initialize
        @objectType = "Application"
      end

      attr_accessor :objectType

      # @return [String] The application ID.
      attr_accessor :app_id

      # @return [Array<String>] The application permissions.
      attr_accessor :app_permissions

      # @return [Array<AppRole>] The collection of application roles that an
      # application may declare.
      attr_accessor :app_roles

      # @return [Boolean] Whether the application is be available to other
      # tenants.
      attr_accessor :available_to_other_tenants

      # @return [String] The display name of the application.
      attr_accessor :display_name

      # @return [Array<String>] A collection of URIs for the application.
      attr_accessor :identifier_uris

      # @return [Array<String>] A collection of reply URLs for the application.
      attr_accessor :reply_urls

      # @return [String] The home page of the application.
      attr_accessor :homepage

      # @return [Boolean] Whether to allow implicit grant flow for OAuth2
      attr_accessor :oauth2allow_implicit_flow


      #
      # Mapper for Application class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Application',
          type: {
            name: 'Composite',
            class_name: 'Application',
            model_properties: {
              additional_properties: {
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              object_id: {
                required: false,
                read_only: true,
                serialized_name: 'objectId',
                type: {
                  name: 'String'
                }
              },
              deletion_timestamp: {
                required: false,
                read_only: true,
                serialized_name: 'deletionTimestamp',
                type: {
                  name: 'DateTime'
                }
              },
              objectType: {
                required: true,
                serialized_name: 'objectType',
                type: {
                  name: 'String'
                }
              },
              app_id: {
                required: false,
                serialized_name: 'appId',
                type: {
                  name: 'String'
                }
              },
              app_permissions: {
                required: false,
                serialized_name: 'appPermissions',
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
              app_roles: {
                required: false,
                serialized_name: 'appRoles',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'AppRoleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AppRole'
                      }
                  }
                }
              },
              available_to_other_tenants: {
                required: false,
                serialized_name: 'availableToOtherTenants',
                type: {
                  name: 'Boolean'
                }
              },
              display_name: {
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              identifier_uris: {
                required: false,
                serialized_name: 'identifierUris',
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
              reply_urls: {
                required: false,
                serialized_name: 'replyUrls',
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
              homepage: {
                required: false,
                serialized_name: 'homepage',
                type: {
                  name: 'String'
                }
              },
              oauth2allow_implicit_flow: {
                required: false,
                serialized_name: 'oauth2AllowImplicitFlow',
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
