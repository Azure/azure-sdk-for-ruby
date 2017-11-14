# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2016_06_01
  module Models
    #
    # The workflow run.
    #
    class WorkflowRun < SubResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [DateTime] Gets the start time.
      attr_accessor :start_time

      # @return [DateTime] Gets the end time.
      attr_accessor :end_time

      # @return [WorkflowStatus] Gets the status. Possible values include:
      # 'NotSpecified', 'Paused', 'Running', 'Waiting', 'Succeeded', 'Skipped',
      # 'Suspended', 'Cancelled', 'Failed', 'Faulted', 'TimedOut', 'Aborted',
      # 'Ignored'
      attr_accessor :status

      # @return [String] Gets the code.
      attr_accessor :code

      # @return Gets the error.
      attr_accessor :error

      # @return [String] Gets the correlation id.
      attr_accessor :correlation_id

      # @return [Correlation] The run correlation.
      attr_accessor :correlation

      # @return [ResourceReference] Gets the reference to workflow version.
      attr_accessor :workflow

      # @return [WorkflowRunTrigger] Gets the fired trigger.
      attr_accessor :trigger

      # @return [Hash{String => WorkflowOutputParameter}] Gets the outputs.
      attr_accessor :outputs

      # @return [WorkflowRunTrigger] Gets the response of the flow run.
      attr_accessor :response

      # @return [String] Gets the workflow run name.
      attr_accessor :name

      # @return [String] Gets the workflow run type.
      attr_accessor :type


      #
      # Mapper for WorkflowRun class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WorkflowRun',
          type: {
            name: 'Composite',
            class_name: 'WorkflowRun',
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
              start_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.endTime',
                type: {
                  name: 'DateTime'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.status',
                type: {
                  name: 'Enum',
                  module: 'WorkflowStatus'
                }
              },
              code: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.code',
                type: {
                  name: 'String'
                }
              },
              error: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.error',
                type: {
                  name: 'Object'
                }
              },
              correlation_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.correlationId',
                type: {
                  name: 'String'
                }
              },
              correlation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.correlation',
                type: {
                  name: 'Composite',
                  class_name: 'Correlation'
                }
              },
              workflow: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.workflow',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceReference'
                }
              },
              trigger: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.trigger',
                type: {
                  name: 'Composite',
                  class_name: 'WorkflowRunTrigger'
                }
              },
              outputs: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.outputs',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'WorkflowOutputParameterElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'WorkflowOutputParameter'
                      }
                  }
                }
              },
              response: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.response',
                type: {
                  name: 'Composite',
                  class_name: 'WorkflowRunTrigger'
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
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
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
