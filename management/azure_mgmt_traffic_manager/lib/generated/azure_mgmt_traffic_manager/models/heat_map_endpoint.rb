# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::TrafficManager
  module Models
    #
    # Class which is a sparse representation of a Traffic Manager endpoint.
    #
    class HeatMapEndpoint

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The ARM Resource ID of this Traffic Manager endpoint.
      attr_accessor :resource_id

      # @return [Integer] A number uniquely identifying this endpoint in query
      # experiences.
      attr_accessor :endpoint_id


      #
      # Mapper for HeatMapEndpoint class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'HeatMapEndpoint',
          type: {
            name: 'Composite',
            class_name: 'HeatMapEndpoint',
            model_properties: {
              resource_id: {
                required: false,
                serialized_name: 'resourceId',
                type: {
                  name: 'String'
                }
              },
              endpoint_id: {
                required: false,
                serialized_name: 'endpointId',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
