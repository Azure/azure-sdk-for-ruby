# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic
  module Models
    #
    # Model object.
    #
    class EdifactAcknowledgementSettings

      include MsRestAzure

      # @return [Boolean] The value indicating whether technical
      # acknowledgement is needed.
      attr_accessor :need_technical_acknowledgement

      # @return [Boolean] The value indicating whether to batch the technical
      # acknowledgements.
      attr_accessor :batch_technical_acknowledgements

      # @return [Boolean] The value indicating whether functional
      # acknowledgement is needed.
      attr_accessor :need_functional_acknowledgement

      # @return [Boolean] The value indicating whether to batch functional
      # acknowledgements.
      attr_accessor :batch_functional_acknowledgements

      # @return [Boolean] The value indicating whether a loop is needed for
      # valid messages.
      attr_accessor :need_loop_for_valid_messages

      # @return [Boolean] The value indicating whether to send synchronous
      # acknowledgement.
      attr_accessor :send_synchronous_acknowledgement

      # @return [String] The acknowledgement control number prefix.
      attr_accessor :acknowledgement_control_number_prefix

      # @return [String] The acknowledgement control number suffix.
      attr_accessor :acknowledgement_control_number_suffix

      # @return [Integer] The acknowledgement control number lower bound.
      attr_accessor :acknowledgement_control_number_lower_bound

      # @return [Integer] The acknowledgement control number upper bound.
      attr_accessor :acknowledgement_control_number_upper_bound

      # @return [Boolean] The value indicating whether to rollover
      # acknowledgement control number.
      attr_accessor :rollover_acknowledgement_control_number


      #
      # Mapper for EdifactAcknowledgementSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EdifactAcknowledgementSettings',
          type: {
            name: 'Composite',
            class_name: 'EdifactAcknowledgementSettings',
            model_properties: {
              need_technical_acknowledgement: {
                required: false,
                serialized_name: 'needTechnicalAcknowledgement',
                type: {
                  name: 'Boolean'
                }
              },
              batch_technical_acknowledgements: {
                required: false,
                serialized_name: 'batchTechnicalAcknowledgements',
                type: {
                  name: 'Boolean'
                }
              },
              need_functional_acknowledgement: {
                required: false,
                serialized_name: 'needFunctionalAcknowledgement',
                type: {
                  name: 'Boolean'
                }
              },
              batch_functional_acknowledgements: {
                required: false,
                serialized_name: 'batchFunctionalAcknowledgements',
                type: {
                  name: 'Boolean'
                }
              },
              need_loop_for_valid_messages: {
                required: false,
                serialized_name: 'needLoopForValidMessages',
                type: {
                  name: 'Boolean'
                }
              },
              send_synchronous_acknowledgement: {
                required: false,
                serialized_name: 'sendSynchronousAcknowledgement',
                type: {
                  name: 'Boolean'
                }
              },
              acknowledgement_control_number_prefix: {
                required: false,
                serialized_name: 'acknowledgementControlNumberPrefix',
                type: {
                  name: 'String'
                }
              },
              acknowledgement_control_number_suffix: {
                required: false,
                serialized_name: 'acknowledgementControlNumberSuffix',
                type: {
                  name: 'String'
                }
              },
              acknowledgement_control_number_lower_bound: {
                required: false,
                serialized_name: 'acknowledgementControlNumberLowerBound',
                type: {
                  name: 'Number'
                }
              },
              acknowledgement_control_number_upper_bound: {
                required: false,
                serialized_name: 'acknowledgementControlNumberUpperBound',
                type: {
                  name: 'Number'
                }
              },
              rollover_acknowledgement_control_number: {
                required: false,
                serialized_name: 'rolloverAcknowledgementControlNumber',
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
