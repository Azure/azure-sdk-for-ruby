# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Represents health information reported on a health entity, such as
    # cluster, application or node, with additional metadata added by the
    # Health Manager.
    #
    class HealthEvent < HealthInformation

      include MsRestAzure

      # @return [Boolean] Returns true if the health event is expired,
      # otherwise false.
      attr_accessor :is_expired

      # @return [DateTime] The date and time when the health report was sent by
      # the source.
      attr_accessor :source_utc_timestamp

      # @return [DateTime] The date and time when the health report was last
      # modified by the health store.
      attr_accessor :last_modified_utc_timestamp

      # @return [DateTime] If the current health state is 'Ok', this property
      # returns the time at which the health report was first reported with
      # 'Ok'.
      # For periodic reporting, many reports with the same state may have been
      # generated.
      # This property returns the date and time when the first 'Ok' health
      # report was received.
      #
      # If the current health state is 'Error' or 'Warning', returns the date
      # and time at which the health state was last in 'Ok', before
      # transitioning to a different state.
      #
      # If the health state was never 'Ok', the value will be zero date-time.
      attr_accessor :last_ok_transition_at

      # @return [DateTime] If the current health state is 'Warning', this
      # property returns the time at which the health report was first reported
      # with 'Warning'. For periodic reporting, many reports with the same
      # state may have been generated however, this property returns only the
      # date and time at the first 'Warning' health report was received.
      #
      # If the current health state is 'Ok' or 'Error', returns the date and
      # time at which the health state was last in 'Warning', before
      # transitioning to a different state.
      #
      # If the health state was never 'Warning', the value will be zero
      # date-time.
      attr_accessor :last_warning_transition_at

      # @return [DateTime] If the current health state is 'Error', this
      # property returns the time at which the health report was first reported
      # with 'Error'. For periodic reporting, many reports with the same state
      # may have been generated however, this property returns only the date
      # and time at the first 'Error' health report was received.
      #
      # If the current health state is 'Ok' or 'Warning', returns the date and
      # time at which the health state was last in 'Error', before
      # transitioning to a different state.
      #
      # If the health state was never 'Error', the value will be zero
      # date-time.
      attr_accessor :last_error_transition_at


      #
      # Mapper for HealthEvent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HealthEvent',
          type: {
            name: 'Composite',
            class_name: 'HealthEvent',
            model_properties: {
              source_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'SourceId',
                type: {
                  name: 'String'
                }
              },
              property: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Property',
                type: {
                  name: 'String'
                }
              },
              health_state: {
                client_side_validation: true,
                required: true,
                serialized_name: 'HealthState',
                type: {
                  name: 'String'
                }
              },
              time_to_live_in_milli_seconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'TimeToLiveInMilliSeconds',
                type: {
                  name: 'TimeSpan'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Description',
                type: {
                  name: 'String'
                }
              },
              sequence_number: {
                client_side_validation: true,
                required: false,
                serialized_name: 'SequenceNumber',
                type: {
                  name: 'String'
                }
              },
              remove_when_expired: {
                client_side_validation: true,
                required: false,
                serialized_name: 'RemoveWhenExpired',
                type: {
                  name: 'Boolean'
                }
              },
              health_report_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HealthReportId',
                type: {
                  name: 'String'
                }
              },
              is_expired: {
                client_side_validation: true,
                required: false,
                serialized_name: 'IsExpired',
                type: {
                  name: 'Boolean'
                }
              },
              source_utc_timestamp: {
                client_side_validation: true,
                required: false,
                serialized_name: 'SourceUtcTimestamp',
                type: {
                  name: 'DateTime'
                }
              },
              last_modified_utc_timestamp: {
                client_side_validation: true,
                required: false,
                serialized_name: 'LastModifiedUtcTimestamp',
                type: {
                  name: 'DateTime'
                }
              },
              last_ok_transition_at: {
                client_side_validation: true,
                required: false,
                serialized_name: 'LastOkTransitionAt',
                type: {
                  name: 'DateTime'
                }
              },
              last_warning_transition_at: {
                client_side_validation: true,
                required: false,
                serialized_name: 'LastWarningTransitionAt',
                type: {
                  name: 'DateTime'
                }
              },
              last_error_transition_at: {
                client_side_validation: true,
                required: false,
                serialized_name: 'LastErrorTransitionAt',
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
