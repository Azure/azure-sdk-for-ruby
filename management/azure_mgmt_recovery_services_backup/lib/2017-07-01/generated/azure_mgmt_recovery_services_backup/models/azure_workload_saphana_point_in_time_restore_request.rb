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
    # AzureWorkload SAP Hana -specific restore. Specifically for
    # PointInTime/Log restore
    #
    class AzureWorkloadSAPHanaPointInTimeRestoreRequest < AzureWorkloadSAPHanaRestoreRequest

      include MsRestAzure


      def initialize
        @objectType = "AzureWorkloadSAPHanaPointInTimeRestoreRequest"
      end

      attr_accessor :objectType

      # @return [DateTime] PointInTime value
      attr_accessor :point_in_time


      #
      # Mapper for AzureWorkloadSAPHanaPointInTimeRestoreRequest class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AzureWorkloadSAPHanaPointInTimeRestoreRequest',
          type: {
            name: 'Composite',
            class_name: 'AzureWorkloadSAPHanaPointInTimeRestoreRequest',
            model_properties: {
              objectType: {
                required: true,
                serialized_name: 'objectType',
                type: {
                  name: 'String'
                }
              },
              target_info: {
                required: false,
                serialized_name: 'targetInfo',
                type: {
                  name: 'Composite',
                  class_name: 'TargetRestoreInfo'
                }
              },
              recovery_type: {
                required: false,
                serialized_name: 'recoveryType',
                type: {
                  name: 'String'
                }
              },
              source_resource_id: {
                required: false,
                serialized_name: 'sourceResourceId',
                type: {
                  name: 'String'
                }
              },
              property_bag: {
                required: false,
                serialized_name: 'propertyBag',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              point_in_time: {
                required: false,
                serialized_name: 'pointInTime',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
