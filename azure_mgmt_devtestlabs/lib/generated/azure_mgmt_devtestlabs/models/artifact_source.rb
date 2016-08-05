# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # Properties of an artifact source.
    #
    class ArtifactSource

      include MsRestAzure

      # @return [String] The display name of the artifact source.
      attr_accessor :display_name

      # @return [String] The URI of the artifact source.
      attr_accessor :uri

      # @return [SourceControlType] The type of the artifact source. Possible
      # values include: 'VsoGit', 'GitHub'
      attr_accessor :source_type

      # @return [String] The folder path of the artifact source.
      attr_accessor :folder_path

      # @return [String] The branch reference of the artifact source.
      attr_accessor :branch_ref

      # @return [String] The security token of the artifact source.
      attr_accessor :security_token

      # @return [EnableStatus] The status of the artifact source. Possible
      # values include: 'Enabled', 'Disabled'
      attr_accessor :status

      # @return [String] The provisioning status of the resource.
      attr_accessor :provisioning_state

      # @return [String] The unique immutable identifier of a resource (Guid).
      attr_accessor :unique_identifier

      # @return [String] The identifier of the resource.
      attr_accessor :id

      # @return [String] The name of the resource.
      attr_accessor :name

      # @return [String] The type of the resource.
      attr_accessor :type

      # @return [String] The location of the resource.
      attr_accessor :location

      # @return [Hash{String => String}] The tags of the resource.
      attr_accessor :tags


      #
      # Mapper for ArtifactSource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ArtifactSource',
          type: {
            name: 'Composite',
            class_name: 'ArtifactSource',
            model_properties: {
              display_name: {
                required: false,
                serialized_name: 'properties.displayName',
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
              source_type: {
                required: false,
                serialized_name: 'properties.sourceType',
                type: {
                  name: 'String'
                }
              },
              folder_path: {
                required: false,
                serialized_name: 'properties.folderPath',
                type: {
                  name: 'String'
                }
              },
              branch_ref: {
                required: false,
                serialized_name: 'properties.branchRef',
                type: {
                  name: 'String'
                }
              },
              security_token: {
                required: false,
                serialized_name: 'properties.securityToken',
                type: {
                  name: 'String'
                }
              },
              status: {
                required: false,
                serialized_name: 'properties.status',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              unique_identifier: {
                required: false,
                serialized_name: 'properties.uniqueIdentifier',
                type: {
                  name: 'String'
                }
              },
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
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
              }
            }
          }
        }
      end
    end
  end
end
