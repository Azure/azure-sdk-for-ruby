# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::PolicyInsights::Mgmt::V2017_08_09_preview
  module Models
    #
    # List of columns included in query results.
    #
    class PolicyStatesQueryResultsTableColumns

      include MsRestAzure

      # @return Unmatched properties from the message are deserialized this
      # collection
      attr_accessor :additional_properties

      # @return [Column] Timestamp for the policy state record.
      attr_accessor :timestamp

      # @return [Column] Resource ID.
      attr_accessor :resource_id

      # @return [Column] Policy assignment ID.
      attr_accessor :policy_assignment_id

      # @return [Column] Policy definition ID.
      attr_accessor :policy_definition_id

      # @return [Column] Effective parameters for the policy assignment.
      attr_accessor :effective_parameters

      # @return [Column] Flag which states whether the resource is compliant
      # against the policy assignment it was evaluated against.
      attr_accessor :is_compliant

      # @return [Column] Subscription ID.
      attr_accessor :subscription_id

      # @return [Column] Resource type.
      attr_accessor :resource_type

      # @return [Column] Resource location.
      attr_accessor :resource_location

      # @return [Column] Resource group name.
      attr_accessor :resource_group

      # @return [Column] List of resource tags.
      attr_accessor :resource_tags

      # @return [Column] Policy assignment name.
      attr_accessor :policy_assignment_name

      # @return [Column] Policy assignment owner.
      attr_accessor :policy_assignment_owner

      # @return [Column] Policy assignment parameters.
      attr_accessor :policy_assignment_parameters

      # @return [Column] Policy assignment scope.
      attr_accessor :policy_assignment_scope

      # @return [Column] Policy definition name.
      attr_accessor :policy_definition_name

      # @return [Column] Policy definition action, i.e. effect.
      attr_accessor :policy_definition_action

      # @return [Column] Policy definition category.
      attr_accessor :policy_definition_category

      # @return [Column] Policy set definition ID, if the policy assignment is
      # for a policy set.
      attr_accessor :policy_set_definition_id

      # @return [Column] Policy set definition name, if the policy assignment
      # is for a policy set.
      attr_accessor :policy_set_definition_name

      # @return [Column] Policy set definition owner, if the policy assignment
      # is for a policy set.
      attr_accessor :policy_set_definition_owner

      # @return [Column] Policy set definition category, if the policy
      # assignment is for a policy set.
      attr_accessor :policy_set_definition_category

      # @return [Column] Policy set definition parameters, if the policy
      # assignment is for a policy set.
      attr_accessor :policy_set_definition_parameters

      # @return [Column] Comma seperated list of management group IDs, which
      # represent the hierarchy of the management groups the resource is under.
      attr_accessor :management_group_ids

      # @return [Column] Reference ID for the policy definition inside the
      # policy set, if the policy assignment is for a policy set.
      attr_accessor :policy_definition_reference_id


      #
      # Mapper for PolicyStatesQueryResultsTableColumns class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PolicyStatesQueryResultsTable_columns',
          type: {
            name: 'Composite',
            class_name: 'PolicyStatesQueryResultsTableColumns',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              timestamp: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Timestamp',
                type: {
                  name: 'Composite',
                  class_name: 'Column'
                }
              },
              resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ResourceId',
                type: {
                  name: 'Composite',
                  class_name: 'Column'
                }
              },
              policy_assignment_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PolicyAssignmentId',
                type: {
                  name: 'Composite',
                  class_name: 'Column'
                }
              },
              policy_definition_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PolicyDefinitionId',
                type: {
                  name: 'Composite',
                  class_name: 'Column'
                }
              },
              effective_parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'EffectiveParameters',
                type: {
                  name: 'Composite',
                  class_name: 'Column'
                }
              },
              is_compliant: {
                client_side_validation: true,
                required: false,
                serialized_name: 'IsCompliant',
                type: {
                  name: 'Composite',
                  class_name: 'Column'
                }
              },
              subscription_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'SubscriptionId',
                type: {
                  name: 'Composite',
                  class_name: 'Column'
                }
              },
              resource_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ResourceType',
                type: {
                  name: 'Composite',
                  class_name: 'Column'
                }
              },
              resource_location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ResourceLocation',
                type: {
                  name: 'Composite',
                  class_name: 'Column'
                }
              },
              resource_group: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ResourceGroup',
                type: {
                  name: 'Composite',
                  class_name: 'Column'
                }
              },
              resource_tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ResourceTags',
                type: {
                  name: 'Composite',
                  class_name: 'Column'
                }
              },
              policy_assignment_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PolicyAssignmentName',
                type: {
                  name: 'Composite',
                  class_name: 'Column'
                }
              },
              policy_assignment_owner: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PolicyAssignmentOwner',
                type: {
                  name: 'Composite',
                  class_name: 'Column'
                }
              },
              policy_assignment_parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PolicyAssignmentParameters',
                type: {
                  name: 'Composite',
                  class_name: 'Column'
                }
              },
              policy_assignment_scope: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PolicyAssignmentScope',
                type: {
                  name: 'Composite',
                  class_name: 'Column'
                }
              },
              policy_definition_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PolicyDefinitionName',
                type: {
                  name: 'Composite',
                  class_name: 'Column'
                }
              },
              policy_definition_action: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PolicyDefinitionAction',
                type: {
                  name: 'Composite',
                  class_name: 'Column'
                }
              },
              policy_definition_category: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PolicyDefinitionCategory',
                type: {
                  name: 'Composite',
                  class_name: 'Column'
                }
              },
              policy_set_definition_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PolicySetDefinitionId',
                type: {
                  name: 'Composite',
                  class_name: 'Column'
                }
              },
              policy_set_definition_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PolicySetDefinitionName',
                type: {
                  name: 'Composite',
                  class_name: 'Column'
                }
              },
              policy_set_definition_owner: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PolicySetDefinitionOwner',
                type: {
                  name: 'Composite',
                  class_name: 'Column'
                }
              },
              policy_set_definition_category: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PolicySetDefinitionCategory',
                type: {
                  name: 'Composite',
                  class_name: 'Column'
                }
              },
              policy_set_definition_parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PolicySetDefinitionParameters',
                type: {
                  name: 'Composite',
                  class_name: 'Column'
                }
              },
              management_group_ids: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ManagementGroupIds',
                type: {
                  name: 'Composite',
                  class_name: 'Column'
                }
              },
              policy_definition_reference_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PolicyDefinitionReferenceId',
                type: {
                  name: 'Composite',
                  class_name: 'Column'
                }
              }
            }
          }
        }
      end
    end
  end
end
