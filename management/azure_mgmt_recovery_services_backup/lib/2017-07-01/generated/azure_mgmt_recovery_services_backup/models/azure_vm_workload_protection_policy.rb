# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 2.2.27.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2017_07_01
  module Models
    #
    # Azure VM (Mercury) workload-specific backup policy.
    #
    class AzureVmWorkloadProtectionPolicy < ProtectionPolicy

      include MsRestAzure


      def initialize
        @backupManagementType = "AzureWorkload"
      end

      attr_accessor :backupManagementType

      # @return [WorkloadType] Type of workload for the backup management.
      # Possible values include: 'Invalid', 'VM', 'FileFolder', 'AzureSqlDb',
      # 'SQLDB', 'Exchange', 'Sharepoint', 'VMwareVM', 'SystemState', 'Client',
      # 'GenericDataSource', 'SQLDataBase', 'AzureFileShare', 'SAPHanaDatabase'
      attr_accessor :work_load_type

      # @return [Settings] Common settings for the backup management
      attr_accessor :settings

      # @return [Array<SubProtectionPolicy>] List of sub-protection policies
      # which includes schedule and retention
      attr_accessor :sub_protection_policy


      #
      # Mapper for AzureVmWorkloadProtectionPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AzureWorkload',
          type: {
            name: 'Composite',
            class_name: 'AzureVmWorkloadProtectionPolicy',
            model_properties: {
              protected_items_count: {
                required: false,
                serialized_name: 'protectedItemsCount',
                type: {
                  name: 'Number'
                }
              },
              backupManagementType: {
                required: true,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              work_load_type: {
                required: false,
                serialized_name: 'workLoadType',
                type: {
                  name: 'String'
                }
              },
              settings: {
                required: false,
                serialized_name: 'settings',
                type: {
                  name: 'Composite',
                  class_name: 'Settings'
                }
              },
              sub_protection_policy: {
                required: false,
                serialized_name: 'subProtectionPolicy',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SubProtectionPolicyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubProtectionPolicy'
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
