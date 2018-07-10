# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2018_01_01
  module Models
    #
    # Result of the List Topics operation
    #
    class TopicsListResult

      include MsRestAzure

      # @return [Array<Topic>] A collection of Topics
      attr_accessor :value


      #
      # Mapper for TopicsListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'TopicsListResult',
          type: {
            name: 'Composite',
            class_name: 'TopicsListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'TopicElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Topic'
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
