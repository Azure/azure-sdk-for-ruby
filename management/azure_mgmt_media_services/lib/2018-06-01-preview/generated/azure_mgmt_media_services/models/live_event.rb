# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_06_01_preview
  module Models
    #
    # The Live Event.
    #
    class LiveEvent < TrackedResource

      include MsRestAzure

      # @return [String] The Live Event description.
      attr_accessor :description

      # @return [LiveEventInput] The Live Event input.
      attr_accessor :input

      # @return [LiveEventPreview] The Live Event preview.
      attr_accessor :preview

      # @return [LiveEventEncoding] The Live Event encoding.
      attr_accessor :encoding

      # @return [String] The provisioning state of the Live Event.
      attr_accessor :provisioning_state

      # @return [LiveEventResourceState] The resource state of the Live Event.
      # Possible values include: 'Stopped', 'Starting', 'Running', 'Stopping',
      # 'Deleting'
      attr_accessor :resource_state

      # @return [CrossSiteAccessPolicies] The Live Event access policies.
      attr_accessor :cross_site_access_policies

      # @return [Boolean] The Live Event vanity URL flag.
      attr_accessor :vanity_url

      # @return [Array<StreamOptionsFlag>] The stream options.
      attr_accessor :stream_options

      # @return [DateTime] The exact time the Live Event was created.
      attr_accessor :created

      # @return [DateTime] The exact time the Live Event was last modified.
      attr_accessor :last_modified


      #
      # Mapper for LiveEvent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LiveEvent',
          type: {
            name: 'Composite',
            class_name: 'LiveEvent',
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
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
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
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              input: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.input',
                type: {
                  name: 'Composite',
                  class_name: 'LiveEventInput'
                }
              },
              preview: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.preview',
                type: {
                  name: 'Composite',
                  class_name: 'LiveEventPreview'
                }
              },
              encoding: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.encoding',
                type: {
                  name: 'Composite',
                  class_name: 'LiveEventEncoding'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              resource_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceState',
                type: {
                  name: 'Enum',
                  module: 'LiveEventResourceState'
                }
              },
              cross_site_access_policies: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.crossSiteAccessPolicies',
                type: {
                  name: 'Composite',
                  class_name: 'CrossSiteAccessPolicies'
                }
              },
              vanity_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vanityUrl',
                type: {
                  name: 'Boolean'
                }
              },
              stream_options: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.streamOptions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StreamOptionsFlagElementType',
                      type: {
                        name: 'Enum',
                        module: 'StreamOptionsFlag'
                      }
                  }
                }
              },
              created: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.created',
                type: {
                  name: 'DateTime'
                }
              },
              last_modified: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.lastModified',
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
