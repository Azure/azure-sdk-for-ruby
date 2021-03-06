# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SecurityInsights::Mgmt::V2019_01_01_preview
  module Models
    #
    # Grouping configuration property bag.
    #
    class GroupingConfiguration

      include MsRestAzure

      # @return [Boolean] Grouping enabled
      attr_accessor :enabled

      # @return [Boolean] Re-open closed matching incidents
      attr_accessor :reopen_closed_incident

      # @return [Duration] Limit the group to alerts created within the
      # lookback duration (in ISO 8601 duration format)
      attr_accessor :lookback_duration

      # @return [EntitiesMatchingMethod] Grouping matching method. Possible
      # values include: 'All', 'None', 'Custom'
      attr_accessor :entities_matching_method

      # @return [Array<GroupingEntityType>] A list of entity types to group by
      # (when entitiesMatchingMethod is Custom)
      attr_accessor :group_by_entities


      #
      # Mapper for GroupingConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GroupingConfiguration',
          type: {
            name: 'Composite',
            class_name: 'GroupingConfiguration',
            model_properties: {
              enabled: {
                client_side_validation: true,
                required: true,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
                }
              },
              reopen_closed_incident: {
                client_side_validation: true,
                required: true,
                serialized_name: 'reopenClosedIncident',
                type: {
                  name: 'Boolean'
                }
              },
              lookback_duration: {
                client_side_validation: true,
                required: true,
                serialized_name: 'lookbackDuration',
                type: {
                  name: 'TimeSpan'
                }
              },
              entities_matching_method: {
                client_side_validation: true,
                required: true,
                serialized_name: 'entitiesMatchingMethod',
                type: {
                  name: 'String'
                }
              },
              group_by_entities: {
                client_side_validation: true,
                required: false,
                serialized_name: 'groupByEntities',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'GroupingEntityTypeElementType',
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
