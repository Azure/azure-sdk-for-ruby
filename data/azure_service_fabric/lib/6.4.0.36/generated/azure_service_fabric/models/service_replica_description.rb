# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Describes a replica of a service resource.
    #
    class ServiceReplicaDescription < ServiceReplicaProperties

      include MsRestAzure

      # @return [String] Name of the replica.
      attr_accessor :replica_name


      #
      # Mapper for ServiceReplicaDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceReplicaDescription',
          type: {
            name: 'Composite',
            class_name: 'ServiceReplicaDescription',
            model_properties: {
              os_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'osType',
                type: {
                  name: 'String'
                }
              },
              code_packages: {
                client_side_validation: true,
                required: true,
                serialized_name: 'codePackages',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ContainerCodePackagePropertiesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ContainerCodePackageProperties'
                      }
                  }
                }
              },
              network_refs: {
                client_side_validation: true,
                required: false,
                serialized_name: 'networkRefs',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NetworkRefElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NetworkRef'
                      }
                  }
                }
              },
              diagnostics: {
                client_side_validation: true,
                required: false,
                serialized_name: 'diagnostics',
                type: {
                  name: 'Composite',
                  class_name: 'DiagnosticsRef'
                }
              },
              replica_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'replicaName',
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