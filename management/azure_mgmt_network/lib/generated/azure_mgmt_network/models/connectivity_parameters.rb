# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # Parameters that determine how the connectivity check will be performed.
    #
    class ConnectivityParameters

      include MsRestAzure

      include MsRest::JSONable
      # @return [ConnectivitySource]
      attr_accessor :source

      # @return [ConnectivityDestination]
      attr_accessor :destination


      #
      # Mapper for ConnectivityParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ConnectivityParameters',
          type: {
            name: 'Composite',
            class_name: 'ConnectivityParameters',
            model_properties: {
              source: {
                required: true,
                serialized_name: 'source',
                type: {
                  name: 'Composite',
                  class_name: 'ConnectivitySource'
                }
              },
              destination: {
                required: true,
                serialized_name: 'destination',
                type: {
                  name: 'Composite',
                  class_name: 'ConnectivityDestination'
                }
              }
            }
          }
        }
      end
    end
  end
end
