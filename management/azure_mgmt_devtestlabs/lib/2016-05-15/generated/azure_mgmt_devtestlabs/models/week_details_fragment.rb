# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs::Api_2016_05_15
  module Models
    #
    # Properties of a weekly schedule.
    #
    class WeekDetailsFragment

      include MsRestAzure

      # @return [Array<String>] The days of the week for which the schedule is
      # set (e.g. Sunday, Monday, Tuesday, etc.).
      attr_accessor :weekdays

      # @return [String] The time of the day the schedule will occur.
      attr_accessor :time


      #
      # Mapper for WeekDetailsFragment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'WeekDetailsFragment',
          type: {
            name: 'Composite',
            class_name: 'WeekDetailsFragment',
            model_properties: {
              weekdays: {
                required: false,
                serialized_name: 'weekdays',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              time: {
                required: false,
                serialized_name: 'time',
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
