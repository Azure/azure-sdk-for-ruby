# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_5_0_36
  module Models
    #
    # Describes the properties of a secret resource.
    #
    class SecretResourceProperties < SecretResourcePropertiesBase

      include MsRestAzure


      def initialize
        @kind = "SecretResourceProperties"
      end

      attr_accessor :kind

      # @return [String] User readable description of the secret.
      attr_accessor :description

      # @return [ResourceStatus] Status of the resource. Possible values
      # include: 'Unknown', 'Ready', 'Upgrading', 'Creating', 'Deleting',
      # 'Failed'
      attr_accessor :status

      # @return [String] Gives additional information about the current status
      # of the secret.
      attr_accessor :status_details

      # @return [String] The type of the content stored in the secret value.
      # The value of this property is opaque to Service Fabric. Once set, the
      # value of this property cannot be changed.
      attr_accessor :content_type


      #
      # Mapper for SecretResourceProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SecretResourceProperties',
          type: {
            name: 'Composite',
            class_name: 'SecretResourceProperties',
            model_properties: {
              kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              status_details: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'statusDetails',
                type: {
                  name: 'String'
                }
              },
              content_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'contentType',
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
