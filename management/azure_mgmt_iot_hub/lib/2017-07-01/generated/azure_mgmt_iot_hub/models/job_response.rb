# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotHub::Mgmt::V2017_07_01
  module Models
    #
    # The properties of the Job Response object.
    #
    class JobResponse

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The job identifier.
      attr_accessor :job_id

      # @return [DateTime] The start time of the job.
      attr_accessor :start_time_utc

      # @return [DateTime] The time the job stopped processing.
      attr_accessor :end_time_utc

      # @return [JobType] The type of the job. Possible values include:
      # 'unknown', 'export', 'import', 'backup', 'readDeviceProperties',
      # 'writeDeviceProperties', 'updateDeviceConfiguration', 'rebootDevice',
      # 'factoryResetDevice', 'firmwareUpdate'
      attr_accessor :type

      # @return [JobStatus] The status of the job. Possible values include:
      # 'unknown', 'enqueued', 'running', 'completed', 'failed', 'cancelled'
      attr_accessor :status

      # @return [String] If status == failed, this string containing the reason
      # for the failure.
      attr_accessor :failure_reason

      # @return [String] The status message for the job.
      attr_accessor :status_message

      # @return [String] The job identifier of the parent job, if any.
      attr_accessor :parent_job_id


      #
      # Mapper for JobResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'JobResponse',
          type: {
            name: 'Composite',
            class_name: 'JobResponse',
            model_properties: {
              job_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'jobId',
                type: {
                  name: 'String'
                }
              },
              start_time_utc: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'startTimeUtc',
                type: {
                  name: 'DateTimeRfc1123'
                }
              },
              end_time_utc: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'endTimeUtc',
                type: {
                  name: 'DateTimeRfc1123'
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
              status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'status',
                type: {
                  name: 'Enum',
                  module: 'JobStatus'
                }
              },
              failure_reason: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'failureReason',
                type: {
                  name: 'String'
                }
              },
              status_message: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'statusMessage',
                type: {
                  name: 'String'
                }
              },
              parent_job_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'parentJobId',
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
