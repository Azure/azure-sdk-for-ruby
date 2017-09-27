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
    # Operation status.
    #
    class OperationStatus

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] ID of the operation.
      attr_accessor :id

      # @return [String] Name of the operation.
      attr_accessor :name

      # @return [OperationStatusValues] Operation status. Possible values
      # include: 'Invalid', 'InProgress', 'Succeeded', 'Failed', 'Canceled'
      attr_accessor :status

      # @return [DateTime] Operation start time. Format: ISO-8601.
      attr_accessor :start_time

      # @return [DateTime] Operation end time. Format: ISO-8601.
      attr_accessor :end_time

      # @return [OperationStatusError] Error information related to this
      # operation.
      attr_accessor :error

      # @return [OperationStatusExtendedInfo] Additional information associated
      # with this operation.
      attr_accessor :properties


      #
      # Mapper for OperationStatus class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'OperationStatus',
          type: {
            name: 'Composite',
            class_name: 'OperationStatus',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
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
              error: {
                required: false,
                serialized_name: 'error',
                type: {
                  name: 'Composite',
                  class_name: 'OperationStatusError'
                }
              },
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'objectType',
                  uber_parent: 'OperationStatusExtendedInfo',
                  class_name: 'OperationStatusExtendedInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end
