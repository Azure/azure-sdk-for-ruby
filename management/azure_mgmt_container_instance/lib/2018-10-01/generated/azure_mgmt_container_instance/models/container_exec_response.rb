# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerInstance::Mgmt::V2018_10_01
  module Models
    #
    # The information for the container exec command.
    #
    class ContainerExecResponse

      include MsRestAzure

      # @return [String] The uri for the exec websocket.
      attr_accessor :web_socket_uri

      # @return [String] The password to start the exec command.
      attr_accessor :password


      #
      # Mapper for ContainerExecResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ContainerExecResponse',
          type: {
            name: 'Composite',
            class_name: 'ContainerExecResponse',
            model_properties: {
              web_socket_uri: {
                required: false,
                serialized_name: 'webSocketUri',
                type: {
                  name: 'String'
                }
              },
              password: {
                required: false,
                serialized_name: 'password',
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
