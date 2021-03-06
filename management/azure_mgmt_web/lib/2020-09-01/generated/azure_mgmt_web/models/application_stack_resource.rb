# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2020_09_01
  module Models
    #
    # ARM resource for a ApplicationStack.
    #
    class ApplicationStackResource < ProxyOnlyResource

      include MsRestAzure

      # @return [String] Application stack name.
      attr_accessor :application_stack_resource_name

      # @return [String] Application stack display name.
      attr_accessor :display

      # @return [String] Application stack dependency.
      attr_accessor :dependency

      # @return [Array<StackMajorVersion>] List of major versions available.
      attr_accessor :major_versions

      # @return [Array<ApplicationStack>] List of frameworks associated with
      # application stack.
      attr_accessor :frameworks


      #
      # Mapper for ApplicationStackResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationStackResource',
          type: {
            name: 'Composite',
            class_name: 'ApplicationStackResource',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              system_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'systemData',
                type: {
                  name: 'Composite',
                  class_name: 'SystemData'
                }
              },
              application_stack_resource_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.name',
                type: {
                  name: 'String'
                }
              },
              display: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.display',
                type: {
                  name: 'String'
                }
              },
              dependency: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.dependency',
                type: {
                  name: 'String'
                }
              },
              major_versions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.majorVersions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StackMajorVersionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'StackMajorVersion'
                      }
                  }
                }
              },
              frameworks: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.frameworks',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationStackElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationStack'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
