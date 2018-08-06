# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MobileEngagement::Mgmt::V2014_12_01
  module Models
    #
    # Used to target devices who received a data push.
    #
    class DatapushFeedbackCriterion < Criterion

      include MsRestAzure


      def initialize
        @type = "datapush-feedback"
      end

      attr_accessor :type

      # @return [Integer] The unique identifier of the data push.
      attr_accessor :content_id

      # @return [CampaignFeedbacks] Action that was performed on the data push
      # (action depends on the return value in the callbacks you declared in
      # the client code).
      # . Possible values include: 'pushed', 'replied', 'actioned', 'exited'
      attr_accessor :action


      #
      # Mapper for DatapushFeedbackCriterion class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'datapush-feedback',
          type: {
            name: 'Composite',
            class_name: 'DatapushFeedbackCriterion',
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