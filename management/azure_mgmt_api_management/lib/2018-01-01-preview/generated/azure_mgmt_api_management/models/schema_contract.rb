# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01_preview
  module Models
    #
    # Schema Contract details.
    #
    class SchemaContract < Resource

      include MsRestAzure

      # @return [String] Must be a valid a media type used in a Content-Type
      # header as defined in the RFC 2616. Media type of the schema document
      # (e.g. application/json, application/xml).
      attr_accessor :content_type

      # @return [String] Json escaped string defining the document representing
      # the Schema.
      attr_accessor :value


      #
      # Mapper for SchemaContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SchemaContract',
          type: {
            name: 'Composite',
            class_name: 'SchemaContract',
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
              content_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.contentType',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.document.value',
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
