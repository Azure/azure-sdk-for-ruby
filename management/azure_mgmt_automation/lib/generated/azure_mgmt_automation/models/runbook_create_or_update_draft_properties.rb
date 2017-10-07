# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Automation
  module Models
    #
    # The parameters supplied to the create or update dratft runbook
    # properties.
    #
    class RunbookCreateOrUpdateDraftProperties

      include MsRestAzure

      # @return [Boolean] Gets or sets verbose log option.
      attr_accessor :log_verbose

      # @return [Boolean] Gets or sets progress log option.
      attr_accessor :log_progress

      # @return [RunbookTypeEnum] Gets or sets the type of the runbook.
      # Possible values include: 'Script', 'Graph', 'PowerShellWorkflow',
      # 'PowerShell', 'GraphPowerShellWorkflow', 'GraphPowerShell'
      attr_accessor :runbook_type

      # @return [RunbookDraft] Gets or sets the draft runbook properties.
      attr_accessor :draft

      # @return [String] Gets or sets the description of the runbook.
      attr_accessor :description

      # @return [Integer] Gets or sets the activity-level tracing options of
      # the runbook.
      attr_accessor :log_activity_trace


      #
      # Mapper for RunbookCreateOrUpdateDraftProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RunbookCreateOrUpdateDraftProperties',
          type: {
            name: 'Composite',
            class_name: 'RunbookCreateOrUpdateDraftProperties',
            model_properties: {
              log_verbose: {
                required: false,
                serialized_name: 'logVerbose',
                type: {
                  name: 'Boolean'
                }
              },
              log_progress: {
                required: false,
                serialized_name: 'logProgress',
                type: {
                  name: 'Boolean'
                }
              },
              runbook_type: {
                required: true,
                serialized_name: 'runbookType',
                type: {
                  name: 'String'
                }
              },
              draft: {
                required: true,
                serialized_name: 'draft',
                type: {
                  name: 'Composite',
                  class_name: 'RunbookDraft'
                }
              },
              description: {
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              log_activity_trace: {
                required: false,
                serialized_name: 'logActivityTrace',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
