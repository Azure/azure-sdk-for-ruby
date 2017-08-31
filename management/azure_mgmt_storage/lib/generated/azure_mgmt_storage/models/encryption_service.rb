# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Storage
  module Models
    #
    # A service that allows server-side encryption to be used.
    #
    class EncryptionService

      include MsRestAzure

      include MsRest::JSONable
      # @return [Boolean] A boolean indicating whether or not the service
      # encrypts the data as it is stored.
      attr_accessor :enabled

      # @return [DateTime] Gets a rough estimate of the date/time when the
      # encryption was last enabled by the user. Only returned when encryption
      # is enabled. There might be some unencrypted blobs which were written
      # after this time, as it is just a rough estimate.
      attr_accessor :last_enabled_time


      #
      # Mapper for EncryptionService class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EncryptionService',
          type: {
            name: 'Composite',
            class_name: 'EncryptionService',
            model_properties: {
              enabled: {
                required: false,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
                }
              },
              last_enabled_time: {
                required: false,
                read_only: true,
                serialized_name: 'lastEnabledTime',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
