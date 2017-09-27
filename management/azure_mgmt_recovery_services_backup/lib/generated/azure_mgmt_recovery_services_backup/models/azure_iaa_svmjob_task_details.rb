# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 2.2.22.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # Azure IaaS VM workload-specific job task details.
    #
    class AzureIaaSVMJobTaskDetails

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The task display name.
      attr_accessor :task_id

      # @return [DateTime] The start time.
      attr_accessor :start_time

      # @return [DateTime] The end time.
      attr_accessor :end_time

      # @return [String] The instanceId.
      attr_accessor :instance_id

      # @return [Duration] Time elapsed for task.
      attr_accessor :duration

      # @return [String] The status.
      attr_accessor :status

      # @return [Float] Progress of the task.
      attr_accessor :progress_percentage


      #
      # Mapper for AzureIaaSVMJobTaskDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AzureIaaSVMJobTaskDetails',
          type: {
            name: 'Composite',
            class_name: 'AzureIaaSVMJobTaskDetails',
            model_properties: {
              task_id: {
                required: false,
                serialized_name: 'taskId',
                type: {
                  name: 'String'
                }
              },
              start_time: {
                required: false,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                required: false,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              instance_id: {
                required: false,
                serialized_name: 'instanceId',
                type: {
                  name: 'String'
                }
              },
              duration: {
                required: false,
                serialized_name: 'duration',
                type: {
                  name: 'TimeSpan'
                }
              },
              status: {
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              progress_percentage: {
                required: false,
                serialized_name: 'progressPercentage',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
