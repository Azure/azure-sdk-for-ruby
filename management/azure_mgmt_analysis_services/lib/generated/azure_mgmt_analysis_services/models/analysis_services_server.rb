# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::AnalysisServices
  module Models
    #
    # Represents an instance of an Analysis Services resource.
    #
    class AnalysisServicesServer < MsRestAzure::Resource

      include MsRestAzure

      # @return [ServerAdministrators] A collection of AS server administrators
      attr_accessor :as_administrators

      # @return [String] The container URI of backup blob.
      attr_accessor :backup_blob_container_uri

      # @return [State] The current state of Analysis Services resource. The
      # state is to indicate more states outside of resource provisioning.
      # Possible values include: 'Deleting', 'Succeeded', 'Failed', 'Paused',
      # 'Suspended', 'Provisioning', 'Updating', 'Suspending', 'Pausing',
      # 'Resuming', 'Preparing', 'Scaling'
      attr_accessor :state

      # @return [ProvisioningState] The current deployment state of Analysis
      # Services resource. The provisioningState is to indicate states for
      # resource provisioning. Possible values include: 'Deleting',
      # 'Succeeded', 'Failed', 'Paused', 'Suspended', 'Provisioning',
      # 'Updating', 'Suspending', 'Pausing', 'Resuming', 'Preparing', 'Scaling'
      attr_accessor :provisioning_state

      # @return [String] The full name of the Analysis Services resource.
      attr_accessor :server_full_name


      #
      # Mapper for AnalysisServicesServer class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AnalysisServicesServer',
          type: {
            name: 'Composite',
            class_name: 'AnalysisServicesServer',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              sku: {
                required: true,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceSku'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              as_administrators: {
                required: false,
                serialized_name: 'properties.asAdministrators',
                type: {
                  name: 'Composite',
                  class_name: 'ServerAdministrators'
                }
              },
              backup_blob_container_uri: {
                required: false,
                serialized_name: 'properties.backupBlobContainerUri',
                type: {
                  name: 'String'
                }
              },
              state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.state',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              server_full_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.serverFullName',
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
