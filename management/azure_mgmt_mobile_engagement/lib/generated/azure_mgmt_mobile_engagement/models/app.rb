# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement
  module Models
    #
    # The Mobile Engagement App resource.
    #
    class App < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The application unique identifier.
      attr_accessor :backend_id

      # @return [String] The platform of the app.
      attr_accessor :platform

      # @return [String] The state of the application.
      attr_accessor :app_state


      #
      # Mapper for App class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'App',
          type: {
            name: 'Composite',
            class_name: 'App',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              backend_id: {
                required: false,
                serialized_name: 'properties.backendId',
                type: {
                  name: 'String'
                }
              },
              platform: {
                required: false,
                serialized_name: 'properties.platform',
                type: {
                  name: 'String'
                }
              },
              app_state: {
                required: false,
                serialized_name: 'properties.appState',
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
