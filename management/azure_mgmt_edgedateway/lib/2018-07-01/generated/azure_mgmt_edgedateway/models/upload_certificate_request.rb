# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2018_07_01
  module Models
    #
    # The Upload certificate request.
    #
    class UploadCertificateRequest

      include MsRestAzure

      # @return [AuthenticationType] The authentication type. Possible values
      # include: 'Invalid', 'AzureActiveDirectory'
      attr_accessor :authentication_type

      # @return [String] The base64 encoded certificate raw data.
      attr_accessor :certificate


      #
      # Mapper for UploadCertificateRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'UploadCertificateRequest',
          type: {
            name: 'Composite',
            class_name: 'UploadCertificateRequest',
            model_properties: {
              authentication_type: {
                required: false,
                serialized_name: 'properties.authenticationType',
                type: {
                  name: 'String'
                }
              },
              certificate: {
                required: true,
                serialized_name: 'properties.certificate',
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
