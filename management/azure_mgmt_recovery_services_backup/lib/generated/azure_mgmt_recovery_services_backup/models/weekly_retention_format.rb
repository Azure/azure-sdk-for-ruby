# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # Weekly retention format.
    #
    class WeeklyRetentionFormat

      include MsRestAzure

      # @return [Array<DayOfWeek>] List of days of the week.
      attr_accessor :days_of_the_week

      # @return [Array<WeekOfMonth>] List of weeks of the month.
      attr_accessor :weeks_of_the_month


      #
      # Mapper for WeeklyRetentionFormat class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'WeeklyRetentionFormat',
          type: {
            name: 'Composite',
            class_name: 'WeeklyRetentionFormat',
            model_properties: {
              days_of_the_week: {
                required: false,
                serialized_name: 'daysOfTheWeek',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DayOfWeekElementType',
                      type: {
                        name: 'Enum',
                        module: 'DayOfWeek'
                      }
                  }
                }
              },
              weeks_of_the_month: {
                required: false,
                serialized_name: 'weeksOfTheMonth',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'WeekOfMonthElementType',
                      type: {
                        name: 'Enum',
                        module: 'WeekOfMonth'
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
