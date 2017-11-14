# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorSimple8000Series::Mgmt::V2017_06_01
  module Models
    #
    # The cloud appliance settings.
    #
    class CloudApplianceSettings

      include MsRestAzure

      include MsRest::JSONable
      # @return [AsymmetricEncryptedSecret] The service data encryption key
      # (encrypted with DAK).
      attr_accessor :service_data_encryption_key

      # @return [AsymmetricEncryptedSecret] The channel integrity key
      # (encrypted with DAK).
      attr_accessor :channel_integrity_key


      #
      # Mapper for CloudApplianceSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CloudApplianceSettings',
          type: {
            name: 'Composite',
            class_name: 'CloudApplianceSettings',
            model_properties: {
              service_data_encryption_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serviceDataEncryptionKey',
                type: {
                  name: 'Composite',
                  class_name: 'AsymmetricEncryptedSecret'
                }
              },
              channel_integrity_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'channelIntegrityKey',
                type: {
                  name: 'Composite',
                  class_name: 'AsymmetricEncryptedSecret'
                }
              }
            }
          }
        }
      end
    end
  end
end
