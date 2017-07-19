# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # Defines workload agnostic properties for a job.
    #
    class Job

      include MsRestAzure

      include MsRest::JSONable
      @@discriminatorMap = Hash.new
      @@discriminatorMap["AzureIaaSVMJob"] = "AzureIaaSVMJob"
      @@discriminatorMap["DpmJob"] = "DpmJob"
      @@discriminatorMap["MabJob"] = "MabJob"

      def initialize
        @jobType = "Job"
      end

      attr_accessor :jobType

      # @return [String] Friendly name of the entity on which the current job
      # is executing.
      attr_accessor :entity_friendly_name

      # @return [BackupManagementType] Backup management type to execute the
      # current job. Possible values include: 'Invalid', 'AzureIaasVM', 'MAB',
      # 'DPM', 'AzureBackupServer', 'AzureSql'
      attr_accessor :backup_management_type

      # @return [String] The operation name.
      attr_accessor :operation

      # @return [String] Job status.
      attr_accessor :status

      # @return [DateTime] The start time.
      attr_accessor :start_time

      # @return [DateTime] The end time.
      attr_accessor :end_time

      # @return [String] ActivityId of job.
      attr_accessor :activity_id


      #
      # Mapper for Job class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Job',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'jobType',
            uber_parent: 'Job',
            class_name: 'Job',
            model_properties: {
              entity_friendly_name: {
                required: false,
                serialized_name: 'entityFriendlyName',
                type: {
                  name: 'String'
                }
              },
              backup_management_type: {
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              operation: {
                required: false,
                serialized_name: 'operation',
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
              activity_id: {
                required: false,
                serialized_name: 'activityId',
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
