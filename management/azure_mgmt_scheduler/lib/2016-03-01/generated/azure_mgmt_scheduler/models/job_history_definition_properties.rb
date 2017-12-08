# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Scheduler::Mgmt::V2016_03_01
  module Models
    #
    # Model object.
    #
    #
    class JobHistoryDefinitionProperties

      include MsRestAzure

      # @return [DateTime] Gets the start time for this job.
      attr_accessor :start_time

      # @return [DateTime] Gets the end time for this job.
      attr_accessor :end_time

      # @return [DateTime] Gets the expected execution time for this job.
      attr_accessor :expected_execution_time

      # @return [JobHistoryActionName] Gets the job history action name.
      # Possible values include: 'MainAction', 'ErrorAction'
      attr_accessor :action_name

      # @return [JobExecutionStatus] Gets the job history status. Possible
      # values include: 'Completed', 'Failed', 'Postponed'
      attr_accessor :status

      # @return [String] Gets the message for the job history.
      attr_accessor :message

      # @return [Integer] Gets the retry count for job.
      attr_accessor :retry_count

      # @return [Integer] Gets the repeat count for the job.
      attr_accessor :repeat_count


      #
      # Mapper for JobHistoryDefinitionProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'JobHistoryDefinitionProperties',
          type: {
            name: 'Composite',
            class_name: 'JobHistoryDefinitionProperties',
            model_properties: {
              start_time: {
                required: false,
                read_only: true,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                required: false,
                read_only: true,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              expected_execution_time: {
                required: false,
                read_only: true,
                serialized_name: 'expectedExecutionTime',
                type: {
                  name: 'DateTime'
                }
              },
              action_name: {
                required: false,
                read_only: true,
                serialized_name: 'actionName',
                type: {
                  name: 'Enum',
                  module: 'JobHistoryActionName'
                }
              },
              status: {
                required: false,
                read_only: true,
                serialized_name: 'status',
                type: {
                  name: 'Enum',
                  module: 'JobExecutionStatus'
                }
              },
              message: {
                required: false,
                read_only: true,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              retry_count: {
                required: false,
                read_only: true,
                serialized_name: 'retryCount',
                type: {
                  name: 'Number'
                }
              },
              repeat_count: {
                required: false,
                read_only: true,
                serialized_name: 'repeatCount',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
