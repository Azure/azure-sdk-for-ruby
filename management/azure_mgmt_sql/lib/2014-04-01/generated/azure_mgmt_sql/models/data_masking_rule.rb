# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2014_04_01
  module Models
    #
    # Represents a database data masking rule.
    #
    class DataMaskingRule < ProxyResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The rule Id.
      attr_accessor :data_masking_rule_id

      # @return [String] The alias name. This is a legacy parameter and is no
      # longer used.
      attr_accessor :alias_name

      # @return [DataMaskingRuleState] The rule state. Used to delete a rule.
      # To delete an existing rule, specify the schemaName, tableName,
      # columnName, maskingFunction, and specify ruleState as disabled.
      # However, if the rule doesn't already exist, the rule will be created
      # with ruleState set to enabled, regardless of the provided value of
      # ruleState. Possible values include: 'Disabled', 'Enabled'
      attr_accessor :rule_state

      # @return [String] The schema name on which the data masking rule is
      # applied.
      attr_accessor :schema_name

      # @return [String] The table name on which the data masking rule is
      # applied.
      attr_accessor :table_name

      # @return [String] The column name on which the data masking rule is
      # applied.
      attr_accessor :column_name

      # @return [DataMaskingFunction] The masking function that is used for the
      # data masking rule. Possible values include: 'Default', 'CCN', 'Email',
      # 'Number', 'SSN', 'Text'
      attr_accessor :masking_function

      # @return [String] The numberFrom property of the masking rule. Required
      # if maskingFunction is set to Number, otherwise this parameter will be
      # ignored.
      attr_accessor :number_from

      # @return [String] The numberTo property of the data masking rule.
      # Required if maskingFunction is set to Number, otherwise this parameter
      # will be ignored.
      attr_accessor :number_to

      # @return [String] If maskingFunction is set to Text, the number of
      # characters to show unmasked in the beginning of the string. Otherwise,
      # this parameter will be ignored.
      attr_accessor :prefix_size

      # @return [String] If maskingFunction is set to Text, the number of
      # characters to show unmasked at the end of the string. Otherwise, this
      # parameter will be ignored.
      attr_accessor :suffix_size

      # @return [String] If maskingFunction is set to Text, the character to
      # use for masking the unexposed part of the string. Otherwise, this
      # parameter will be ignored.
      attr_accessor :replacement_string

      # @return [String] The location of the data masking rule.
      attr_accessor :location

      # @return [String] The kind of Data Masking Rule. Metadata, used for
      # Azure portal.
      attr_accessor :kind


      #
      # Mapper for DataMaskingRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DataMaskingRule',
          type: {
            name: 'Composite',
            class_name: 'DataMaskingRule',
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
              data_masking_rule_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.id',
                type: {
                  name: 'String'
                }
              },
              alias_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.aliasName',
                type: {
                  name: 'String'
                }
              },
              rule_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.ruleState',
                type: {
                  name: 'Enum',
                  module: 'DataMaskingRuleState'
                }
              },
              schema_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.schemaName',
                type: {
                  name: 'String'
                }
              },
              table_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.tableName',
                type: {
                  name: 'String'
                }
              },
              column_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.columnName',
                type: {
                  name: 'String'
                }
              },
              masking_function: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.maskingFunction',
                type: {
                  name: 'Enum',
                  module: 'DataMaskingFunction'
                }
              },
              number_from: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.numberFrom',
                type: {
                  name: 'String'
                }
              },
              number_to: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.numberTo',
                type: {
                  name: 'String'
                }
              },
              prefix_size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.prefixSize',
                type: {
                  name: 'String'
                }
              },
              suffix_size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.suffixSize',
                type: {
                  name: 'String'
                }
              },
              replacement_string: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.replacementString',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'kind',
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
