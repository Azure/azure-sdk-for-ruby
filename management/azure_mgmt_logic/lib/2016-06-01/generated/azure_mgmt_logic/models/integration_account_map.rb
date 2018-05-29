# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2016_06_01
  module Models
    #
    # The integration account map.
    #
    class IntegrationAccountMap < Resource

      include MsRestAzure

      # @return [MapType] The map type. Possible values include:
      # 'NotSpecified', 'Xslt', 'Xslt20', 'Xslt30', 'Liquid'
      attr_accessor :map_type

      # @return [IntegrationAccountMapPropertiesParametersSchema] The
      # parameters schema of integration account map.
      attr_accessor :parameters_schema

      # @return [DateTime] The created time.
      attr_accessor :created_time

      # @return [DateTime] The changed time.
      attr_accessor :changed_time

      # @return [String] The content.
      attr_accessor :content

      # @return [String] The content type.
      attr_accessor :content_type

      # @return [ContentLink] The content link.
      attr_accessor :content_link

      # @return The metadata.
      attr_accessor :metadata


      #
      # Mapper for IntegrationAccountMap class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'IntegrationAccountMap',
          type: {
            name: 'Composite',
            class_name: 'IntegrationAccountMap',
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
              },
              map_type: {
                required: true,
                serialized_name: 'properties.mapType',
                type: {
                  name: 'Enum',
                  module: 'MapType'
                }
              },
              parameters_schema: {
                required: false,
                serialized_name: 'properties.parametersSchema',
                type: {
                  name: 'Composite',
                  class_name: 'IntegrationAccountMapPropertiesParametersSchema'
                }
              },
              created_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.createdTime',
                type: {
                  name: 'DateTime'
                }
              },
              changed_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.changedTime',
                type: {
                  name: 'DateTime'
                }
              },
              content: {
                required: false,
                serialized_name: 'properties.content',
                type: {
                  name: 'String'
                }
              },
              content_type: {
                required: false,
                serialized_name: 'properties.contentType',
                type: {
                  name: 'String'
                }
              },
              content_link: {
                required: false,
                read_only: true,
                serialized_name: 'properties.contentLink',
                type: {
                  name: 'Composite',
                  class_name: 'ContentLink'
                }
              },
              metadata: {
                required: false,
                serialized_name: 'properties.metadata',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
