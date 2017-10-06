# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ContainerInsights
  module Models
    #
    # Property definition.
    #
    class PropertyDefinition

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Array value separator for properties with isArray set.
      attr_accessor :array_value_separator

      # @return [Array<ProfileEnumValidValuesFormat>] Describes valid values
      # for an enum property.
      attr_accessor :enum_valid_values

      # @return [String] Name of the property.
      attr_accessor :field_name

      # @return [String] Type of the property.
      attr_accessor :field_type

      # @return [Boolean] Indicates if the property is actually an array of the
      # fieldType above on the data api.
      attr_accessor :is_array

      # @return [Boolean] Indicates if the property is an enum.
      attr_accessor :is_enum

      # @return [Boolean] Indicates if the property is an flag enum.
      attr_accessor :is_flag_enum

      # @return [Boolean] Whether the property is an Image.
      attr_accessor :is_image

      # @return [Boolean] Whether the property is a localized string.
      attr_accessor :is_localized_string

      # @return [Boolean] Whether the property is a name or a part of name.
      attr_accessor :is_name

      # @return [Boolean] Whether property value is required on instances,
      # IsRequired field only for Intercation. Profile Instance will not check
      # for required field.
      attr_accessor :is_required

      # @return [String] The ID associated with the property.
      attr_accessor :property_id

      # @return [String] URL encoded schema.org item prop link for the
      # property.
      attr_accessor :schema_item_prop_link

      # @return [Integer] Max length of string. Used only if type is string.
      attr_accessor :max_length

      # @return [Boolean] Whether property is available in graph or not.
      attr_accessor :is_available_in_graph

      # @return [Array<DataSourcePrecedence>] This is specific to interactions
      # modeled as activities. Data sources are used to determine where data is
      # stored and also in precedence rules.
      attr_accessor :data_source_precedence_rules


      #
      # Mapper for PropertyDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PropertyDefinition',
          type: {
            name: 'Composite',
            class_name: 'PropertyDefinition',
            model_properties: {
              array_value_separator: {
                required: false,
                serialized_name: 'arrayValueSeparator',
                type: {
                  name: 'String'
                }
              },
              enum_valid_values: {
                required: false,
                serialized_name: 'enumValidValues',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ProfileEnumValidValuesFormatElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ProfileEnumValidValuesFormat'
                      }
                  }
                }
              },
              field_name: {
                required: true,
                serialized_name: 'fieldName',
                type: {
                  name: 'String'
                }
              },
              field_type: {
                required: true,
                serialized_name: 'fieldType',
                type: {
                  name: 'String'
                }
              },
              is_array: {
                required: false,
                serialized_name: 'isArray',
                type: {
                  name: 'Boolean'
                }
              },
              is_enum: {
                required: false,
                serialized_name: 'isEnum',
                type: {
                  name: 'Boolean'
                }
              },
              is_flag_enum: {
                required: false,
                serialized_name: 'isFlagEnum',
                type: {
                  name: 'Boolean'
                }
              },
              is_image: {
                required: false,
                serialized_name: 'isImage',
                type: {
                  name: 'Boolean'
                }
              },
              is_localized_string: {
                required: false,
                serialized_name: 'isLocalizedString',
                type: {
                  name: 'Boolean'
                }
              },
              is_name: {
                required: false,
                serialized_name: 'isName',
                type: {
                  name: 'Boolean'
                }
              },
              is_required: {
                required: false,
                serialized_name: 'isRequired',
                type: {
                  name: 'Boolean'
                }
              },
              property_id: {
                required: false,
                serialized_name: 'propertyId',
                type: {
                  name: 'String'
                }
              },
              schema_item_prop_link: {
                required: false,
                serialized_name: 'schemaItemPropLink',
                type: {
                  name: 'String'
                }
              },
              max_length: {
                required: false,
                serialized_name: 'maxLength',
                type: {
                  name: 'Number'
                }
              },
              is_available_in_graph: {
                required: false,
                serialized_name: 'isAvailableInGraph',
                type: {
                  name: 'Boolean'
                }
              },
              data_source_precedence_rules: {
                required: false,
                read_only: true,
                serialized_name: 'dataSourcePrecedenceRules',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DataSourcePrecedenceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DataSourcePrecedence'
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
