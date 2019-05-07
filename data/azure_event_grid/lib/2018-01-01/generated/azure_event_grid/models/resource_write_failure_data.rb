# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::V2018_01_01
  module Models
    #
    # Schema of the Data property of an EventGridEvent for a
    # Microsoft.Resources.ResourceWriteFailure event. This is raised when a
    # resource create or update operation fails.
    #
    class ResourceWriteFailureData

      include MsRestAzure

      # @return [String] The tenant ID of the resource.
      attr_accessor :tenant_id

      # @return [String] The subscription ID of the resource.
      attr_accessor :subscription_id

      # @return [String] The resource group of the resource.
      attr_accessor :resource_group

      # @return [String] The resource provider performing the operation.
      attr_accessor :resource_provider

      # @return [String] The URI of the resource in the operation.
      attr_accessor :resource_uri

      # @return [String] The operation that was performed.
      attr_accessor :operation_name

      # @return [String] The status of the operation.
      attr_accessor :status

      # @return [String] The requested authorization for the operation.
      attr_accessor :authorization

      # @return [String] The properties of the claims.
      attr_accessor :claims

      # @return [String] An operation ID used for troubleshooting.
      attr_accessor :correlation_id

      # @return [String] The details of the operation.
      attr_accessor :http_request


      #
      # Mapper for ResourceWriteFailureData class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ResourceWriteFailureData',
          type: {
            name: 'Composite',
            class_name: 'ResourceWriteFailureData',
            model_properties: {
              tenant_id: {
                required: false,
                serialized_name: 'tenantId',
                type: {
                  name: 'String'
                }
              },
              subscription_id: {
                required: false,
                serialized_name: 'subscriptionId',
                type: {
                  name: 'String'
                }
              },
              resource_group: {
                required: false,
                serialized_name: 'resourceGroup',
                type: {
                  name: 'String'
                }
              },
              resource_provider: {
                required: false,
                serialized_name: 'resourceProvider',
                type: {
                  name: 'String'
                }
              },
              resource_uri: {
                required: false,
                serialized_name: 'resourceUri',
                type: {
                  name: 'String'
                }
              },
              operation_name: {
                required: false,
                serialized_name: 'operationName',
                type: {
                  name: 'String'
                }
              },
              status: {
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              authorization: {
                required: false,
                serialized_name: 'authorization',
                type: {
                  name: 'String'
                }
              },
              claims: {
                required: false,
                serialized_name: 'claims',
                type: {
                  name: 'String'
                }
              },
              correlation_id: {
                required: false,
                serialized_name: 'correlationId',
                type: {
                  name: 'String'
                }
              },
              http_request: {
                required: false,
                serialized_name: 'httpRequest',
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
