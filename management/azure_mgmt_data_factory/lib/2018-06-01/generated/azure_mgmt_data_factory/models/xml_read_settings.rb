# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Xml read settings.
    #
    class XmlReadSettings < FormatReadSettings

      include MsRestAzure


      def initialize
        @type = "XmlReadSettings"
      end

      attr_accessor :type

      # @return [CompressionReadSettings] Compression settings.
      attr_accessor :compression_properties

      # @return Indicates what validation method is used when reading the xml
      # files. Allowed values: 'none', 'xsd', or 'dtd'. Type: string (or
      # Expression with resultType string).
      attr_accessor :validation_mode

      # @return Indicates whether type detection is enabled when reading the
      # xml files. Type: boolean (or Expression with resultType boolean).
      attr_accessor :detect_data_type

      # @return Indicates whether namespace is enabled when reading the xml
      # files. Type: boolean (or Expression with resultType boolean).
      attr_accessor :namespaces

      # @return Namespace uri to prefix mappings to override the prefixes in
      # column names when namespace is enabled, if no prefix is defined for a
      # namespace uri, the prefix of xml element/attribute name in the xml data
      # file will be used. Example: "{"http://www.example.com/xml":"prefix"}"
      # Type: object (or Expression with resultType object).
      attr_accessor :namespace_prefixes


      #
      # Mapper for XmlReadSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'XmlReadSettings',
          type: {
            name: 'Composite',
            class_name: 'XmlReadSettings',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              compression_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'compressionProperties',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'type',
                  uber_parent: 'CompressionReadSettings',
                  class_name: 'CompressionReadSettings'
                }
              },
              validation_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'validationMode',
                type: {
                  name: 'Object'
                }
              },
              detect_data_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'detectDataType',
                type: {
                  name: 'Object'
                }
              },
              namespaces: {
                client_side_validation: true,
                required: false,
                serialized_name: 'namespaces',
                type: {
                  name: 'Object'
                }
              },
              namespace_prefixes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'namespacePrefixes',
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
