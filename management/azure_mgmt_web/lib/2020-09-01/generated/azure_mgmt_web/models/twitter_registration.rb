# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2020_09_01
  module Models
    #
    # Model object.
    #
    #
    class TwitterRegistration < ProxyOnlyResource

      include MsRestAzure

      # @return [String]
      attr_accessor :consumer_key

      # @return [String]
      attr_accessor :consumer_secret_setting_name


      #
      # Mapper for TwitterRegistration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TwitterRegistration',
          type: {
            name: 'Composite',
            class_name: 'TwitterRegistration',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              system_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'systemData',
                type: {
                  name: 'Composite',
                  class_name: 'SystemData'
                }
              },
              consumer_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.consumerKey',
                type: {
                  name: 'String'
                }
              },
              consumer_secret_setting_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.consumerSecretSettingName',
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
