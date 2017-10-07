# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Resources
  module Models
    #
    # Tag details.
    #
    class TagDetails

      include MsRestAzure

      # @return [String] The tag ID.
      attr_accessor :id

      # @return [String] The tag name.
      attr_accessor :tag_name

      # @return [TagCount] The total number of resources that use the resource
      # tag. When a tag is initially created and has no associated resources,
      # the value is 0.
      attr_accessor :count

      # @return [Array<TagValue>] The list of tag values.
      attr_accessor :values


      #
      # Mapper for TagDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'TagDetails',
          type: {
            name: 'Composite',
            class_name: 'TagDetails',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              tag_name: {
                required: false,
                serialized_name: 'tagName',
                type: {
                  name: 'String'
                }
              },
              count: {
                required: false,
                serialized_name: 'count',
                type: {
                  name: 'Composite',
                  class_name: 'TagCount'
                }
              },
              values: {
                required: false,
                serialized_name: 'values',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'TagValueElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TagValue'
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
