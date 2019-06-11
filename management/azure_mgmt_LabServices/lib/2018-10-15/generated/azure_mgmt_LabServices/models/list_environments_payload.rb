# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::LabServices::Mgmt::V2018_10_15
  module Models
    #
    # Represents the payload to list environments owned by a user
    #
    class ListEnvironmentsPayload

      include MsRestAzure

      # @return [String] The resource Id of the lab
      attr_accessor :lab_id


      #
      # Mapper for ListEnvironmentsPayload class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ListEnvironmentsPayload',
          type: {
            name: 'Composite',
            class_name: 'ListEnvironmentsPayload',
            model_properties: {
              lab_id: {
                required: false,
                serialized_name: 'labId',
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