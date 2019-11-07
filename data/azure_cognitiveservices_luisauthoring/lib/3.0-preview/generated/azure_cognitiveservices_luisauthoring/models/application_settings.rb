# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LuisAuthoring::V3_0_preview
  module Models
    #
    # The application settings.
    #
    class ApplicationSettings

      include MsRestAzure

      # @return The application ID.
      attr_accessor :id

      # @return [Boolean] Setting your application as public allows other
      # people to use your application's endpoint using their own keys for
      # billing purposes.
      attr_accessor :is_public


      #
      # Mapper for ApplicationSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationSettings',
          type: {
            name: 'Composite',
            class_name: 'ApplicationSettings',
            model_properties: {
              id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              is_public: {
                client_side_validation: true,
                required: true,
                serialized_name: 'public',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
