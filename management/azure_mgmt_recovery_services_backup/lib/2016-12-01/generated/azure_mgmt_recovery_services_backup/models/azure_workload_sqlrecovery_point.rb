# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 2.2.27.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  module Models
    #
    # SQL specific recovery point, specifically encapsulates full/diff recovery
    # point along with extended info
    #
    class AzureWorkloadSQLRecoveryPoint < AzureWorkloadRecoveryPoint

      include MsRestAzure


      def initialize
        @objectType = "AzureWorkloadSQLRecoveryPoint"
      end

      attr_accessor :objectType

      # @return [AzureWorkloadSQLRecoveryPointExtendedInfo] Extended Info that
      # provides data directory details. Will be populated in two cases:
      # When a specific recovery point is accessed using GetRecoveryPoint
      # Or when ListRecoveryPoints is called for Log RP only with ExtendedInfo
      # query filter
      attr_accessor :extended_info


      #
      # Mapper for AzureWorkloadSQLRecoveryPoint class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AzureWorkloadSQLRecoveryPoint',
          type: {
            name: 'Composite',
            class_name: 'AzureWorkloadSQLRecoveryPoint',
            model_properties: {
              objectType: {
                required: true,
                serialized_name: 'objectType',
                type: {
                  name: 'String'
                }
              },
              recovery_point_time_in_utc: {
                required: false,
                serialized_name: 'recoveryPointTimeInUTC',
                type: {
                  name: 'DateTime'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              extended_info: {
                required: false,
                serialized_name: 'extendedInfo',
                type: {
                  name: 'Composite',
                  class_name: 'AzureWorkloadSQLRecoveryPointExtendedInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end
