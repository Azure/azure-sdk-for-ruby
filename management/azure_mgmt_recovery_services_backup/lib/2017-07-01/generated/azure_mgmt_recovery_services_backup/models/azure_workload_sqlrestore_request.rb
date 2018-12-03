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
    # AzureWorkload SQL -specific restore. Specifically for full/diff restore
    #
    class AzureWorkloadSQLRestoreRequest < AzureWorkloadRestoreRequest

      include MsRestAzure


      def initialize
        @objectType = "AzureWorkloadSQLRestoreRequest"
      end

      attr_accessor :objectType

      # @return [Boolean] Default option set to true. If this is set to false,
      # alternate data directory must be provided
      attr_accessor :should_use_alternate_target_location

      # @return [Boolean] SQL specific property where user can chose to set
      # no-recovery when restore operation is tried
      attr_accessor :is_non_recoverable

      # @return [TargetRestoreInfo] Details of target database
      attr_accessor :target_info

      # @return [Array<SQLDataDirectoryMapping>] Data directory details
      attr_accessor :alternate_directory_paths


      #
      # Mapper for AzureWorkloadSQLRestoreRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AzureWorkloadSQLRestoreRequest',
          type: {
            name: 'Composite',
            class_name: 'AzureWorkloadSQLRestoreRequest',
            model_properties: {
              objectType: {
                required: true,
                serialized_name: 'objectType',
                type: {
                  name: 'String'
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
              should_use_alternate_target_location: {
                required: false,
                serialized_name: 'shouldUseAlternateTargetLocation',
                type: {
                  name: 'Boolean'
                }
              },
              is_non_recoverable: {
                required: false,
                serialized_name: 'isNonRecoverable',
                type: {
                  name: 'Boolean'
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
              alternate_directory_paths: {
                required: false,
                serialized_name: 'alternateDirectoryPaths',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SQLDataDirectoryMappingElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SQLDataDirectoryMapping'
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
