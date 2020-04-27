# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Synapse::Mgmt::V2019_06_01_preview
  module Models
    #
    # Check name availability request

    # A request about whether a workspace name is available
    #
    class CheckNameAvailabilityRequest

      include MsRestAzure

      # @return [String] Workspace name
      attr_accessor :name

      # @return [String] Type: workspace
      attr_accessor :type


      #
      # Mapper for CheckNameAvailabilityRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CheckNameAvailabilityRequest',
          type: {
            name: 'Composite',
            class_name: 'CheckNameAvailabilityRequest',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
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
