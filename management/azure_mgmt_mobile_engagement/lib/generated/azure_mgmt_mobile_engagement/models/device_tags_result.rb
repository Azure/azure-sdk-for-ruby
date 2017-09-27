# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement
  module Models
    #
    # Model object.
    #
    #
    class DeviceTagsResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<String>] A JSON array containing all identifiers that
      # have been rejected. Please note that if the request parameters are
      # valid but all the specified devices are rejected, the status code is
      # still `200` with a response including all the devices as being
      # rejected.
      #
      attr_accessor :invalid_ids


      #
      # Mapper for DeviceTagsResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DeviceTagsResult',
          type: {
            name: 'Composite',
            class_name: 'DeviceTagsResult',
            model_properties: {
              invalid_ids: {
                required: true,
                serialized_name: 'invalidIds',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
