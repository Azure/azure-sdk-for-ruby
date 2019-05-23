# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2017_09_01
  module Models
    #
    # State details.
    #
    class AvailableProvidersListState

      include MsRestAzure

      # @return [String] The state name.
      attr_accessor :state_name

      # @return [Array<String>] A list of Internet service providers.
      attr_accessor :providers

      # @return [Array<AvailableProvidersListCity>] List of available cities or
      # towns in the state.
      attr_accessor :cities


      #
      # Mapper for AvailableProvidersListState class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AvailableProvidersListState',
          type: {
            name: 'Composite',
            class_name: 'AvailableProvidersListState',
            model_properties: {
              state_name: {
                required: false,
                serialized_name: 'stateName',
                type: {
                  name: 'String'
                }
              },
              providers: {
                required: false,
                serialized_name: 'providers',
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
              },
              cities: {
                required: false,
                serialized_name: 'cities',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'AvailableProvidersListCityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AvailableProvidersListCity'
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
