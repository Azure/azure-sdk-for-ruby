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
    # Mab container-specific backup policy.
    #
    class MabProtectionPolicy < ProtectionPolicy

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @backupManagementType = "MAB"
      end

      attr_accessor :backupManagementType

      # @return [SchedulePolicy] Backup schedule of backup policy.
      attr_accessor :schedule_policy

      # @return [RetentionPolicy] Retention policy details.
      attr_accessor :retention_policy


      #
      # Mapper for MabProtectionPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MAB',
          type: {
            name: 'Composite',
            class_name: 'MabProtectionPolicy',
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
              schedule_policy: {
                required: false,
                serialized_name: 'schedulePolicy',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'schedulePolicyType',
                  uber_parent: 'SchedulePolicy',
                  class_name: 'SchedulePolicy'
                }
              },
              retention_policy: {
                required: false,
                serialized_name: 'retentionPolicy',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'retentionPolicyType',
                  uber_parent: 'RetentionPolicy',
                  class_name: 'RetentionPolicy'
                }
              }
            }
          }
        }
      end
    end
  end
end
