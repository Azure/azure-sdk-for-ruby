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
    # Additional information on the DPM workload-specific job.
    #
    class DpmJobExtendedInfo

      include MsRestAzure

      # @return [Array<DpmJobTaskDetails>] List of tasks associated with this
      # job.
      attr_accessor :tasks_list

      # @return [Hash{String => String}] The job properties.
      attr_accessor :property_bag

      # @return [String] Non localized error message on job execution.
      attr_accessor :dynamic_error_message


      #
      # Mapper for DpmJobExtendedInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DpmJobExtendedInfo',
          type: {
            name: 'Composite',
            class_name: 'DpmJobExtendedInfo',
            model_properties: {
              tasks_list: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tasksList',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DpmJobTaskDetailsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DpmJobTaskDetails'
                      }
                  }
                }
              },
              property_bag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'propertyBag',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              dynamic_error_message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dynamicErrorMessage',
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
