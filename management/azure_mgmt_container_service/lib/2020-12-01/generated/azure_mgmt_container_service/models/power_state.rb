# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2020_12_01
  module Models
    #
    # Describes the Power State of the cluster
    #
    class PowerState

      include MsRestAzure

      # @return [Code] Tells whether the cluster is Running or Stopped.
      # Possible values include: 'Running', 'Stopped'
      attr_accessor :code


      #
      # Mapper for PowerState class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PowerState',
          type: {
            name: 'Composite',
            class_name: 'PowerState',
            model_properties: {
              code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'code',
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
