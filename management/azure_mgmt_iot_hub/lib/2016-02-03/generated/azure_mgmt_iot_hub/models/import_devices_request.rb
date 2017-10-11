# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::IotHub::Api_2016_02_03
  module Models
    #
    # Use to provide parameters when requesting an import of all devices in the
    # hub.
    #
    class ImportDevicesRequest

      include MsRestAzure

      # @return [String] The input blob container URI.
      attr_accessor :input_blob_container_uri

      # @return [String] The output blob container URI.
      attr_accessor :output_blob_container_uri


      #
      # Mapper for ImportDevicesRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ImportDevicesRequest',
          type: {
            name: 'Composite',
            class_name: 'ImportDevicesRequest',
            model_properties: {
              input_blob_container_uri: {
                required: true,
                serialized_name: 'InputBlobContainerUri',
                type: {
                  name: 'String'
                }
              },
              output_blob_container_uri: {
                required: true,
                serialized_name: 'OutputBlobContainerUri',
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
