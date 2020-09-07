# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::OperationalInsights::Mgmt::V2020_08_01
  module Models
    #
    # The shared keys for a workspace.
    #
    class SharedKeys

      include MsRestAzure

      # @return [String] The primary shared key of a workspace.
      attr_accessor :primary_shared_key

      # @return [String] The secondary shared key of a workspace.
      attr_accessor :secondary_shared_key


      #
      # Mapper for SharedKeys class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SharedKeys',
          type: {
            name: 'Composite',
            class_name: 'SharedKeys',
            model_properties: {
              primary_shared_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'primarySharedKey',
                type: {
                  name: 'String'
                }
              },
              secondary_shared_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'secondarySharedKey',
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
