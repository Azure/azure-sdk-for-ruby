# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Face::V1_0
  module Models
    #
    # Person object.
    #
    class Person < NameAndUserDataContract

      include MsRestAzure

      # @return PersonId of the target face list.
      attr_accessor :person_id

      # @return PersistedFaceIds of registered faces in the person. These
      # persistedFaceIds are returned from Person - Add a Person Face, and will
      # not expire.
      attr_accessor :persisted_face_ids


      #
      # Mapper for Person class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Person',
          type: {
            name: 'Composite',
            class_name: 'Person',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                constraints: {
                  MaxLength: 128
                },
                type: {
                  name: 'String'
                }
              },
              user_data: {
                required: false,
                serialized_name: 'userData',
                constraints: {
                  MaxLength: 16384
                },
                type: {
                  name: 'String'
                }
              },
              person_id: {
                required: true,
                serialized_name: 'personId',
                type: {
                  name: 'String'
                }
              },
              persisted_face_ids: {
                required: false,
                serialized_name: 'persistedFaceIds',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'UuidElementType',
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
