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
    # Recovery point tier information.
    #
    class RecoveryPointTierInformation

      include MsRestAzure

      include MsRest::JSONable
      # @return [RecoveryPointTierType] Recovery point tier type. Possible
      # values include: 'Invalid', 'InstantRP', 'HardenedRP'
      attr_accessor :type

      # @return [RecoveryPointTierStatus] Recovery point tier status. Possible
      # values include: 'Invalid', 'Valid', 'Disabled', 'Deleted'
      attr_accessor :status


      #
      # Mapper for RecoveryPointTierInformation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RecoveryPointTierInformation',
          type: {
            name: 'Composite',
            class_name: 'RecoveryPointTierInformation',
            model_properties: {
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'Enum',
                  module: 'RecoveryPointTierType'
                }
              },
              status: {
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'Enum',
                  module: 'RecoveryPointTierStatus'
                }
              }
            }
          }
        }
      end
    end
  end
end
