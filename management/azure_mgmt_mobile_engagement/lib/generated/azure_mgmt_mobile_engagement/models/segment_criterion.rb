# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement
  module Models
    #
    # Target devices based on an existing segment.
    #
    class SegmentCriterion < Criterion

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @type = "segment"
      end

      attr_accessor :type

      # @return [Integer] Segment identifier.
      attr_accessor :id

      # @return [Boolean] If value is true, the criterion will target users
      # that are NOT part of the segment.
      attr_accessor :exclude


      #
      # Mapper for SegmentCriterion class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'segment',
          type: {
            name: 'Composite',
            class_name: 'SegmentCriterion',
            model_properties: {
              type: {
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'Number'
                }
              },
              exclude: {
                required: false,
                serialized_name: 'exclude',
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
