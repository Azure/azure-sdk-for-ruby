# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01_preview
  module Models
    #
    # Parameters supplied to the Deploy Configuration operation.
    #
    class DeployConfigurationParameters

      include MsRestAzure

      # @return [String] The name of the Git branch from which the
      # configuration is to be deployed to the configuration database.
      attr_accessor :branch

      # @return [Boolean] The value enforcing deleting subscriptions to
      # products that are deleted in this update.
      attr_accessor :force


      #
      # Mapper for DeployConfigurationParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DeployConfigurationParameters',
          type: {
            name: 'Composite',
            class_name: 'DeployConfigurationParameters',
            model_properties: {
              branch: {
                required: true,
                serialized_name: 'branch',
                type: {
                  name: 'String'
                }
              },
              force: {
                required: false,
                serialized_name: 'force',
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
