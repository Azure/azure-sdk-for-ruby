# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Labservices::Mgmt::V2018_10_15
  module Models
    #
    # Lists the labs owned by a user
    #
    class ListLabsResponse

      include MsRestAzure

      # @return [Array<LabDetails>] List of all the labs
      attr_accessor :labs


      #
      # Mapper for ListLabsResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ListLabsResponse',
          type: {
            name: 'Composite',
            class_name: 'ListLabsResponse',
            model_properties: {
              labs: {
                client_side_validation: true,
                required: false,
                serialized_name: 'labs',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'LabDetailsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'LabDetails'
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
