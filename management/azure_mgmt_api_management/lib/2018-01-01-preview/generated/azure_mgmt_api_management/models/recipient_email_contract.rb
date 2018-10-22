# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01_preview
  module Models
    #
    # Recipient Email details.
    #
    class RecipientEmailContract < Resource

      include MsRestAzure

      # @return [String] User Email subscribed to notification.
      attr_accessor :email


      #
      # Mapper for RecipientEmailContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RecipientEmailContract',
          type: {
            name: 'Composite',
            class_name: 'RecipientEmailContract',
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
              email: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.email',
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
