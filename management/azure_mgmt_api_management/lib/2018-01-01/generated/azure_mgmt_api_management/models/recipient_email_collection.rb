# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01_preview
  module Models
    #
    # Paged Recipient User list representation.
    #
    class RecipientEmailCollection

      include MsRestAzure

      # @return [Array<RecipientEmailContract>] Page values.
      attr_accessor :value

      # @return [String] Next page link if any.
      attr_accessor :next_link


      #
      # Mapper for RecipientEmailCollection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RecipientEmailCollection',
          type: {
            name: 'Composite',
            class_name: 'RecipientEmailCollection',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'RecipientEmailContractElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RecipientEmailContract'
                      }
                  }
                }
              },
              next_link: {
                required: false,
                serialized_name: 'nextLink',
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
