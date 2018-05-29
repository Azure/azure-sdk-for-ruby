# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01_preview
  module Models
    #
    # Contract details.
    #
    class TagDescriptionContract < Resource

      include MsRestAzure

      # @return [String] Description of the Tag.
      attr_accessor :description

      # @return [String] Absolute URL of external resources describing the tag.
      attr_accessor :external_docs_url

      # @return [String] Description of the external resources describing the
      # tag.
      attr_accessor :external_docs_description

      # @return [String] Tag name.
      attr_accessor :display_name


      #
      # Mapper for TagDescriptionContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'TagDescriptionContract',
          type: {
            name: 'Composite',
            class_name: 'TagDescriptionContract',
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
              description: {
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              external_docs_url: {
                required: false,
                serialized_name: 'properties.externalDocsUrl',
                constraints: {
                  MaxLength: 2000
                },
                type: {
                  name: 'String'
                }
              },
              external_docs_description: {
                required: false,
                serialized_name: 'properties.externalDocsDescription',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                required: false,
                serialized_name: 'properties.displayName',
                constraints: {
                  MaxLength: 160,
                  MinLength: 1
                },
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
