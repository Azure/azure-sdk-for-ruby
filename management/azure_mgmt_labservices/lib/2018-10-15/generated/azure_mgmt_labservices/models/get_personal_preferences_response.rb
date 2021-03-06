# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Labservices::Mgmt::V2018_10_15
  module Models
    #
    # Represents the PersonalPreferences for the user
    #
    class GetPersonalPreferencesResponse

      include MsRestAzure

      # @return [String] Id to be used by the cache orchestrator
      attr_accessor :id

      # @return [Array<String>] Array of favorite lab resource ids
      attr_accessor :favorite_lab_resource_ids


      #
      # Mapper for GetPersonalPreferencesResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GetPersonalPreferencesResponse',
          type: {
            name: 'Composite',
            class_name: 'GetPersonalPreferencesResponse',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              favorite_lab_resource_ids: {
                client_side_validation: true,
                required: false,
                serialized_name: 'favoriteLabResourceIds',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
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
