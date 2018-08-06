# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MobileEngagement::Mgmt::V2014_12_01
  module Models
    #
    # Used to target devices who received a poll.
    #
    class PollFeedbackCriterion < Criterion

      include MsRestAzure


      def initialize
        @type = "poll-feedback"
      end

      attr_accessor :type

      # @return [Integer] The unique identifier of the poll.
      attr_accessor :content_id

      # @return [CampaignFeedbacks] Action that was performed on the poll.
      # Possible values include: 'pushed', 'replied', 'actioned', 'exited'
      attr_accessor :action


      #
      # Mapper for PollFeedbackCriterion class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'poll-feedback',
          type: {
            name: 'Composite',
            class_name: 'PollFeedbackCriterion',
            model_properties: {
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              content_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'content-id',
                type: {
                  name: 'Number'
                }
              },
              action: {
                client_side_validation: true,
                required: false,
                serialized_name: 'action',
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