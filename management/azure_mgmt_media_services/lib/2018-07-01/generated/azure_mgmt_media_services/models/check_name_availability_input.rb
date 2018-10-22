# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_07_01
  module Models
    #
    # The input to the check name availability request.
    #
    class CheckNameAvailabilityInput

      include MsRestAzure

      # @return [String] The account name.
      attr_accessor :name

      # @return [String] The account type. For a Media Services account, this
      # should be 'MediaServices'.
      attr_accessor :type


      #
      # Mapper for CheckNameAvailabilityInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CheckNameAvailabilityInput',
          type: {
            name: 'Composite',
            class_name: 'CheckNameAvailabilityInput',
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
