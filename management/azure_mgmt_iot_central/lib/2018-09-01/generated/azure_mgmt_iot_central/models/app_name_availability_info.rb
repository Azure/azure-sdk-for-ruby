# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotCentral::Mgmt::V2018_09_01
  module Models
    #
    # The properties indicating whether a given IoT Central application name is
    # available.
    #
    class AppNameAvailabilityInfo

      include MsRestAzure

      # @return [Boolean] The value which indicates whether the provided name
      # is available.
      attr_accessor :name_available

      # @return [AppNameUnavailabilityReason] The reason for unavailability.
      # Possible values include: 'Invalid', 'AlreadyExists'
      attr_accessor :reason

      # @return [String] The detailed reason message.
      attr_accessor :message


      #
      # Mapper for AppNameAvailabilityInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AppNameAvailabilityInfo',
          type: {
            name: 'Composite',
            class_name: 'AppNameAvailabilityInfo',
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
                  name: 'Enum',
                  module: 'AppNameUnavailabilityReason'
                }
              },
              message: {
                required: false,
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
