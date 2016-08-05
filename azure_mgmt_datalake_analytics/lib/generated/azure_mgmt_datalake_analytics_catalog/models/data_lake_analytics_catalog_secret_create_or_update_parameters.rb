# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DataLakeAnalytics::Catalog
  module Models
    #
    # DataLakeAnalytics DataLakeAnalyticsAccount information.
    #
    class DataLakeAnalyticsCatalogSecretCreateOrUpdateParameters

      include MsRestAzure

      # @return [String] the password for the secret to pass in
      attr_accessor :password

      # @return [String] the URI identifier for the secret in the format
      # <hostname>:<port>
      attr_accessor :uri


      #
      # Mapper for DataLakeAnalyticsCatalogSecretCreateOrUpdateParameters
      # class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DataLakeAnalyticsCatalogSecretCreateOrUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'DataLakeAnalyticsCatalogSecretCreateOrUpdateParameters',
            model_properties: {
              password: {
                required: true,
                serialized_name: 'password',
                type: {
                  name: 'String'
                }
              },
              uri: {
                required: false,
                serialized_name: 'uri',
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
