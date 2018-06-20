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
    # Sub-protection policy which includes schedule and retention
    #
    class SubProtectionPolicy

      include MsRestAzure

      # @return [String] Type of backup policy type
      attr_accessor :policy_type

      # @return [SchedulePolicy] Backup schedule specified as part of backup
      # policy.
      attr_accessor :schedule_policy

      # @return [RetentionPolicy] Retention policy with the details on backup
      # copy retention ranges.
      attr_accessor :retention_policy


      #
      # Mapper for SubProtectionPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SubProtectionPolicy',
          type: {
            name: 'Composite',
            class_name: 'SubProtectionPolicy',
            model_properties: {
              policy_type: {
                required: false,
                serialized_name: 'policyType',
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
