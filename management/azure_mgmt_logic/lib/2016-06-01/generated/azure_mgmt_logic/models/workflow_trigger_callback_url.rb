# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2016_06_01
  module Models
    #
    # The workflow trigger callback URL.
    #
    class WorkflowTriggerCallbackUrl

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Gets the workflow trigger callback URL.
      attr_accessor :value

      # @return [String] Gets the workflow trigger callback URL HTTP method.
      attr_accessor :method

      # @return [String] Gets the workflow trigger callback URL base path.
      attr_accessor :base_path

      # @return [String] Gets the workflow trigger callback URL relative path.
      attr_accessor :relative_path

      # @return [Array<String>] Gets the workflow trigger callback URL relative
      # path parameters.
      attr_accessor :relative_path_parameters

      # @return [WorkflowTriggerListCallbackUrlQueries] Gets the workflow
      # trigger callback URL query parameters.
      attr_accessor :queries


      #
      # Mapper for WorkflowTriggerCallbackUrl class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WorkflowTriggerCallbackUrl',
          type: {
            name: 'Composite',
            class_name: 'WorkflowTriggerCallbackUrl',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'String'
                }
              },
              method: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'method',
                type: {
                  name: 'String'
                }
              },
              base_path: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'basePath',
                type: {
                  name: 'String'
                }
              },
              relative_path: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'relativePath',
                type: {
                  name: 'String'
                }
              },
              relative_path_parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'relativePathParameters',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              queries: {
                client_side_validation: true,
                required: false,
                serialized_name: 'queries',
                type: {
                  name: 'Composite',
                  class_name: 'WorkflowTriggerListCallbackUrlQueries'
                }
              }
            }
          }
        }
      end
    end
  end
end
