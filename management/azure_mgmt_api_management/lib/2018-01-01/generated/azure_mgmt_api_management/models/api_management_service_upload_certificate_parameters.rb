# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01_preview
  module Models
    #
    # Parameters supplied to the Upload SSL certificate for an API Management
    # service operation.
    #
    class ApiManagementServiceUploadCertificateParameters

      include MsRestAzure

      # @return [HostnameType] Hostname type. Possible values include: 'Proxy',
      # 'Portal', 'Management', 'Scm'
      attr_accessor :type

      # @return [String] Base64 Encoded certificate.
      attr_accessor :certificate

      # @return [String] Certificate password.
      attr_accessor :certificate_password


      #
      # Mapper for ApiManagementServiceUploadCertificateParameters class as
      # Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApiManagementServiceUploadCertificateParameters',
          type: {
            name: 'Composite',
            class_name: 'ApiManagementServiceUploadCertificateParameters',
            model_properties: {
              type: {
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'Enum',
                  module: 'HostnameType'
                }
              },
              certificate: {
                required: true,
                serialized_name: 'certificate',
                type: {
                  name: 'String'
                }
              },
              certificate_password: {
                required: true,
                serialized_name: 'certificate_password',
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
