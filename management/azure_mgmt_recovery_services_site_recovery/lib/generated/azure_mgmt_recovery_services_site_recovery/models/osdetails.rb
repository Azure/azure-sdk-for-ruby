# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # Disk Details.
    #
    class OSDetails

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] VM Disk details.
      attr_accessor :os_type

      # @return [String] Product type.
      attr_accessor :product_type

      # @return [String] The OSEdition.
      attr_accessor :os_edition

      # @return [String] The OS Version.
      attr_accessor :o_sversion

      # @return [String] The OS Major Version.
      attr_accessor :o_smajor_version

      # @return [String] The OS Minor Version.
      attr_accessor :o_sminor_version


      #
      # Mapper for OSDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'OSDetails',
          type: {
            name: 'Composite',
            class_name: 'OSDetails',
            model_properties: {
              os_type: {
                required: false,
                serialized_name: 'osType',
                type: {
                  name: 'String'
                }
              },
              product_type: {
                required: false,
                serialized_name: 'productType',
                type: {
                  name: 'String'
                }
              },
              os_edition: {
                required: false,
                serialized_name: 'osEdition',
                type: {
                  name: 'String'
                }
              },
              o_sversion: {
                required: false,
                serialized_name: 'oSVersion',
                type: {
                  name: 'String'
                }
              },
              o_smajor_version: {
                required: false,
                serialized_name: 'oSMajorVersion',
                type: {
                  name: 'String'
                }
              },
              o_sminor_version: {
                required: false,
                serialized_name: 'oSMinorVersion',
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
