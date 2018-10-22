# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01_preview
  module Models
    #
    # Issue Comment Contract details.
    #
    class IssueCommentContract < Resource

      include MsRestAzure

      # @return [String] Comment text.
      attr_accessor :text

      # @return [DateTime] Date and time when the comment was created.
      attr_accessor :created_date

      # @return [String] A resource identifier for the user who left the
      # comment.
      attr_accessor :user_id


      #
      # Mapper for IssueCommentContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IssueCommentContract',
          type: {
            name: 'Composite',
            class_name: 'IssueCommentContract',
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
              text: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.text',
                type: {
                  name: 'String'
                }
              },
              created_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.createdDate',
                type: {
                  name: 'DateTime'
                }
              },
              user_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.userId',
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
