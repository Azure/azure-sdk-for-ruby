# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Signalr::Mgmt::V2018_10_01
  module Models
    #
    # Data POST-ed to the nameAvailability action
    #
    class NameAvailabilityParameters

      include MsRestAzure

      # @return [String] The resource type. Should be always
      # "Microsoft.SignalRService/SignalR".
      attr_accessor :type

      # @return [String] The SignalR service name to validate.
      # e.g."my-signalR-name-here"
      attr_accessor :name


      #
      # Mapper for NameAvailabilityParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'NameAvailabilityParameters',
          type: {
            name: 'Composite',
            class_name: 'NameAvailabilityParameters',
            model_properties: {
              type: {
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: true,
                serialized_name: 'name',
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
