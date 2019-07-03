# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_5_0_36
  module Models
    #
    # This type describes a network resource.
    #
    class NetworkResourceDescription

      include MsRestAzure

      # @return [String] Name of the Network resource.
      attr_accessor :name

      # @return [NetworkResourceProperties] Describes properties of a network
      # resource.
      attr_accessor :properties


      #
      # Mapper for NetworkResourceDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NetworkResourceDescription',
          type: {
            name: 'Composite',
            class_name: 'NetworkResourceDescription',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              properties: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'NetworkResourceProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
