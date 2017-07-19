# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Monitor
  module Models
    #
    # An alert incident indicates the activation status of an alert rule.
    #
    class Incident

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Incident name.
      attr_accessor :name

      # @return [String] Rule name that is associated with the incident.
      attr_accessor :rule_name

      # @return [Boolean] A boolean to indicate whether the incident is active
      # or resolved.
      attr_accessor :is_active

      # @return [DateTime] The time at which the incident was activated in
      # ISO8601 format.
      attr_accessor :activated_time

      # @return [DateTime] The time at which the incident was resolved in
      # ISO8601 format. If null, it means the incident is still active.
      attr_accessor :resolved_time


      #
      # Mapper for Incident class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Incident',
          type: {
            name: 'Composite',
            class_name: 'Incident',
            model_properties: {
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              rule_name: {
                required: false,
                read_only: true,
                serialized_name: 'ruleName',
                type: {
                  name: 'String'
                }
              },
              is_active: {
                required: false,
                read_only: true,
                serialized_name: 'isActive',
                type: {
                  name: 'Boolean'
                }
              },
              activated_time: {
                required: false,
                read_only: true,
                serialized_name: 'activatedTime',
                type: {
                  name: 'DateTime'
                }
              },
              resolved_time: {
                required: false,
                read_only: true,
                serialized_name: 'resolvedTime',
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
