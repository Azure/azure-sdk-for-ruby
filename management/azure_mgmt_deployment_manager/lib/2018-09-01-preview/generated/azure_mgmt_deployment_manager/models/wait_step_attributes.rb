# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DeploymentManager::Mgmt::V2018_09_01_preview
  module Models
    #
    # The parameters for the wait step.
    #
    class WaitStepAttributes

      include MsRestAzure

      # @return [String] The duration in ISO 8601 format of how long the wait
      # should be.
      attr_accessor :duration


      #
      # Mapper for WaitStepAttributes class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WaitStepAttributes',
          type: {
            name: 'Composite',
            class_name: 'WaitStepAttributes',
            model_properties: {
              duration: {
                client_side_validation: true,
                required: true,
                serialized_name: 'duration',
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
