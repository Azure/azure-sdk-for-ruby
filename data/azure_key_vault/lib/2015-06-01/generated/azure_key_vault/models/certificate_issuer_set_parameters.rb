# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V2015_06_01
  module Models
    #
    # The certificate issuer set parameters.
    #
    class CertificateIssuerSetParameters

      include MsRestAzure

      # @return [String] The issuer provider.
      attr_accessor :provider

      # @return [IssuerCredentials] The credentials to be used for the issuer.
      attr_accessor :credentials

      # @return [OrganizationDetails] Details of the organization as provided
      # to the issuer.
      attr_accessor :organization_details

      # @return [IssuerAttributes] Attributes of the issuer object.
      attr_accessor :attributes


      #
      # Mapper for CertificateIssuerSetParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CertificateIssuerSetParameters',
          type: {
            name: 'Composite',
            class_name: 'CertificateIssuerSetParameters',
            model_properties: {
              provider: {
                client_side_validation: true,
                required: true,
                serialized_name: 'provider',
                type: {
                  name: 'String'
                }
              },
              credentials: {
                client_side_validation: true,
                required: false,
                serialized_name: 'credentials',
                type: {
                  name: 'Composite',
                  class_name: 'IssuerCredentials'
                }
              },
              organization_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'org_details',
                type: {
                  name: 'Composite',
                  class_name: 'OrganizationDetails'
                }
              },
              attributes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'attributes',
                type: {
                  name: 'Composite',
                  class_name: 'IssuerAttributes'
                }
              }
            }
          }
        }
      end
    end
  end
end
