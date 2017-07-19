# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # Daily retention format.
    #
    class DailyRetentionFormat

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<Day>] List of days of the month.
      attr_accessor :days_of_the_month


      #
      # Mapper for DailyRetentionFormat class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DailyRetentionFormat',
          type: {
            name: 'Composite',
            class_name: 'DailyRetentionFormat',
            model_properties: {
              days_of_the_month: {
                required: false,
                serialized_name: 'daysOfTheMonth',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DayElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Day'
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
