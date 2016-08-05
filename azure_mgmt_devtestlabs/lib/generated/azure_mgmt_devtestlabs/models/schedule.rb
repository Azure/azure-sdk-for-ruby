# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # A schedule.
    #
    class Schedule

      include MsRestAzure

      # @return [EnableStatus] The status of the schedule. Possible values
      # include: 'Enabled', 'Disabled'
      attr_accessor :status

      # @return [String] The task type of the schedule.
      attr_accessor :task_type

      # @return [WeekDetails] The weekly recurrence of the schedule.
      attr_accessor :weekly_recurrence

      # @return [DayDetails] The daily recurrence of the schedule.
      attr_accessor :daily_recurrence

      # @return [HourDetails] The hourly recurrence of the schedule.
      attr_accessor :hourly_recurrence

      # @return [String] The time zone id.
      attr_accessor :time_zone_id

      # @return [String] The provisioning status of the resource.
      attr_accessor :provisioning_state

      # @return [String] The unique immutable identifier of a resource (Guid).
      attr_accessor :unique_identifier

      # @return [String] The identifier of the resource.
      attr_accessor :id

      # @return [String] The name of the resource.
      attr_accessor :name

      # @return [String] The type of the resource.
      attr_accessor :type

      # @return [String] The location of the resource.
      attr_accessor :location

      # @return [Hash{String => String}] The tags of the resource.
      attr_accessor :tags


      #
      # Mapper for Schedule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Schedule',
          type: {
            name: 'Composite',
            class_name: 'Schedule',
            model_properties: {
              status: {
                required: false,
                serialized_name: 'properties.status',
                type: {
                  name: 'String'
                }
              },
              task_type: {
                required: false,
                serialized_name: 'properties.taskType',
                type: {
                  name: 'String'
                }
              },
              weekly_recurrence: {
                required: false,
                serialized_name: 'properties.weeklyRecurrence',
                type: {
                  name: 'Composite',
                  class_name: 'WeekDetails'
                }
              },
              daily_recurrence: {
                required: false,
                serialized_name: 'properties.dailyRecurrence',
                type: {
                  name: 'Composite',
                  class_name: 'DayDetails'
                }
              },
              hourly_recurrence: {
                required: false,
                serialized_name: 'properties.hourlyRecurrence',
                type: {
                  name: 'Composite',
                  class_name: 'HourDetails'
                }
              },
              time_zone_id: {
                required: false,
                serialized_name: 'properties.timeZoneId',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              unique_identifier: {
                required: false,
                serialized_name: 'properties.uniqueIdentifier',
                type: {
                  name: 'String'
                }
              },
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
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
              }
            }
          }
        }
      end
    end
  end
end
