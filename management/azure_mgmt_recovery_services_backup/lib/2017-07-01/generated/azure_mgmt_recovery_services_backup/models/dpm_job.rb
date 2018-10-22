# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2017_07_01
  module Models
    #
    # DPM workload-specifc job object.
    #
    class DpmJob < Job

      include MsRestAzure


      def initialize
        @jobType = "DpmJob"
      end

      attr_accessor :jobType

      # @return [Duration] Time elapsed for job.
      attr_accessor :duration

      # @return [String] DPM server name managing the backup item or backup
      # job.
      attr_accessor :dpm_server_name

      # @return [String] Name of cluster/server protecting current backup item,
      # if any.
      attr_accessor :container_name

      # @return [String] Type of container.
      attr_accessor :container_type

      # @return [String] Type of backup item.
      attr_accessor :workload_type

      # @return [Array<JobSupportedAction>] The state/actions applicable on
      # this job like cancel/retry.
      attr_accessor :actions_info

      # @return [Array<DpmErrorInfo>] The errors.
      attr_accessor :error_details

      # @return [DpmJobExtendedInfo] Additional information for this job.
      attr_accessor :extended_info


      #
      # Mapper for DpmJob class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DpmJob',
          type: {
            name: 'Composite',
            class_name: 'DpmJob',
            model_properties: {
              entity_friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'entityFriendlyName',
                type: {
                  name: 'String'
                }
              },
              backup_management_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              operation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'operation',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              start_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              activity_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'activityId',
                type: {
                  name: 'String'
                }
              },
              jobType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'jobType',
                type: {
                  name: 'String'
                }
              },
              duration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'duration',
                type: {
                  name: 'TimeSpan'
                }
              },
              dpm_server_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dpmServerName',
                type: {
                  name: 'String'
                }
              },
              container_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'containerName',
                type: {
                  name: 'String'
                }
              },
              container_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'containerType',
                type: {
                  name: 'String'
                }
              },
              workload_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'workloadType',
                type: {
                  name: 'String'
                }
              },
              actions_info: {
                client_side_validation: true,
                required: false,
                serialized_name: 'actionsInfo',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'JobSupportedActionElementType',
                      type: {
                        name: 'Enum',
                        module: 'JobSupportedAction'
                      }
                  }
                }
              },
              error_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'errorDetails',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DpmErrorInfoElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DpmErrorInfo'
                      }
                  }
                }
              },
              extended_info: {
                client_side_validation: true,
                required: false,
                serialized_name: 'extendedInfo',
                type: {
                  name: 'Composite',
                  class_name: 'DpmJobExtendedInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end
