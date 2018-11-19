# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EngagementFabric::Mgmt::V2018_09_01_preview
  module Models
    #
    # The result of name availability check
    #
    class CheckNameAvailabilityResult

      include MsRestAzure

      # @return [Boolean] The name to be checked
      attr_accessor :name_available

      # @return [CheckNameUnavailableReason] The reason if name is unavailable.
      # Possible values include: 'Invalid', 'AlreadyExists'
      attr_accessor :reason

      # @return [String] The message if name is unavailable
      attr_accessor :message


      #
      # Mapper for CheckNameAvailabilityResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CheckNameAvailabilityResult',
          type: {
            name: 'Composite',
            class_name: 'CheckNameAvailabilityResult',
            model_properties: {
              name_available: {
                required: false,
                read_only: true,
                serialized_name: 'nameAvailable',
                type: {
                  name: 'Boolean'
                }
              },
              reason: {
                required: false,
                read_only: true,
                serialized_name: 'reason',
                type: {
                  name: 'String'
                }
              },
              message: {
                required: false,
                read_only: true,
                serialized_name: 'message',
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
