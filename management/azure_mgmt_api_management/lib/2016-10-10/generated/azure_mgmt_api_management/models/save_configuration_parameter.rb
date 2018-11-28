# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_10_10
  module Models
    #
    # Parameters supplied to the Save Tenant Configuration operation.
    #
    class SaveConfigurationParameter

      include MsRestAzure

      # @return [String] The name of the Git branch in which to commit the
      # current configuration snapshot.
      attr_accessor :branch

      # @return [Boolean] The value if true, the current configuration database
      # is committed to the Git repository, even if the Git repository has
      # newer changes that would be overwritten.
      attr_accessor :force


      #
      # Mapper for SaveConfigurationParameter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SaveConfigurationParameter',
          type: {
            name: 'Composite',
            class_name: 'SaveConfigurationParameter',
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
