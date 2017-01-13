# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::IotHub
  module Models
    #
    # Use to provide parameters when requesting an export of all devices in the
    # IoT hub.
    #
    class ExportDevicesRequest

      include MsRestAzure

      # @return [String] The export blob container URI.
      attr_accessor :export_blob_container_uri

      # @return [Boolean] The value indicating whether keys should be excluded
      # during export.
      attr_accessor :exclude_keys


      #
      # Mapper for ExportDevicesRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ExportDevicesRequest',
          type: {
            name: 'Composite',
            class_name: 'ExportDevicesRequest',
            model_properties: {
              export_blob_container_uri: {
                required: true,
                serialized_name: 'ExportBlobContainerUri',
                type: {
                  name: 'String'
                }
              },
              exclude_keys: {
                required: true,
                serialized_name: 'ExcludeKeys',
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
