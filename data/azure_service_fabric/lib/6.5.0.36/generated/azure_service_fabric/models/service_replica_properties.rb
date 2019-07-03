# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_5_0_36
  module Models
    #
    # Describes the properties of a service replica.
    #
    class ServiceReplicaProperties

      include MsRestAzure

      # @return [OperatingSystemType] The operation system required by the code
      # in service. Possible values include: 'Linux', 'Windows'
      attr_accessor :os_type

      # @return [Array<ContainerCodePackageProperties>] Describes the set of
      # code packages that forms the service. A code package describes the
      # container and the properties for running it. All the code packages are
      # started together on the same host and share the same context (network,
      # process etc.).
      attr_accessor :code_packages

      # @return [Array<NetworkRef>] The names of the private networks that this
      # service needs to be part of.
      attr_accessor :network_refs

      # @return [DiagnosticsRef] Reference to sinks in DiagnosticsDescription.
      attr_accessor :diagnostics


      #
      # Mapper for ServiceReplicaProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceReplicaProperties',
          type: {
            name: 'Composite',
            class_name: 'ServiceReplicaProperties',
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
              }
            }
          }
        }
      end
    end
  end
end
