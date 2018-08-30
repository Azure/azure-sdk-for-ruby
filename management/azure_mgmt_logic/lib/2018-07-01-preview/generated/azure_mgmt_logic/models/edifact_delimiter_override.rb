# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2018_07_01_preview
  module Models
    #
    # The Edifact delimiter override settings.
    #
    class EdifactDelimiterOverride

      include MsRestAzure

      # @return [String] The message id.
      attr_accessor :message_id

      # @return [String] The message version.
      attr_accessor :message_version

      # @return [String] The message release.
      attr_accessor :message_release

      # @return [Integer] The data element separator.
      attr_accessor :data_element_separator

      # @return [Integer] The component separator.
      attr_accessor :component_separator

      # @return [Integer] The segment terminator.
      attr_accessor :segment_terminator

      # @return [Integer] The repetition separator.
      attr_accessor :repetition_separator

      # @return [SegmentTerminatorSuffix] The segment terminator suffix.
      # Possible values include: 'NotSpecified', 'None', 'CR', 'LF', 'CRLF'
      attr_accessor :segment_terminator_suffix

      # @return [EdifactDecimalIndicator] The decimal point indicator. Possible
      # values include: 'NotSpecified', 'Comma', 'Decimal'
      attr_accessor :decimal_point_indicator

      # @return [Integer] The release indicator.
      attr_accessor :release_indicator

      # @return [String] The message association assigned code.
      attr_accessor :message_association_assigned_code

      # @return [String] The target namespace on which this delimiter settings
      # has to be applied.
      attr_accessor :target_namespace


      #
      # Mapper for EdifactDelimiterOverride class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EdifactDelimiterOverride',
          type: {
            name: 'Composite',
            class_name: 'EdifactDelimiterOverride',
            model_properties: {
              message_id: {
                required: false,
                serialized_name: 'messageId',
                type: {
                  name: 'String'
                }
              },
              message_version: {
                required: false,
                serialized_name: 'messageVersion',
                type: {
                  name: 'String'
                }
              },
              message_release: {
                required: false,
                serialized_name: 'messageRelease',
                type: {
                  name: 'String'
                }
              },
              data_element_separator: {
                required: true,
                serialized_name: 'dataElementSeparator',
                type: {
                  name: 'Number'
                }
              },
              component_separator: {
                required: true,
                serialized_name: 'componentSeparator',
                type: {
                  name: 'Number'
                }
              },
              segment_terminator: {
                required: true,
                serialized_name: 'segmentTerminator',
                type: {
                  name: 'Number'
                }
              },
              repetition_separator: {
                required: true,
                serialized_name: 'repetitionSeparator',
                type: {
                  name: 'Number'
                }
              },
              segment_terminator_suffix: {
                required: true,
                serialized_name: 'segmentTerminatorSuffix',
                type: {
                  name: 'Enum',
                  module: 'SegmentTerminatorSuffix'
                }
              },
              decimal_point_indicator: {
                required: true,
                serialized_name: 'decimalPointIndicator',
                type: {
                  name: 'Enum',
                  module: 'EdifactDecimalIndicator'
                }
              },
              release_indicator: {
                required: true,
                serialized_name: 'releaseIndicator',
                type: {
                  name: 'Number'
                }
              },
              message_association_assigned_code: {
                required: false,
                serialized_name: 'messageAssociationAssignedCode',
                type: {
                  name: 'String'
                }
              },
              target_namespace: {
                required: false,
                serialized_name: 'targetNamespace',
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
