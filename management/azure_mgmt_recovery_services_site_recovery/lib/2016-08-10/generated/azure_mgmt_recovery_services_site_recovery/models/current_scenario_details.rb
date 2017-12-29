# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Current scenario details of the protected entity.
    #
    class CurrentScenarioDetails

      include MsRestAzure

      # @return [String] Scenario name.
      attr_accessor :scenario_name

      # @return [String] ARM Id of the job being executed.
      attr_accessor :job_id

      # @return [DateTime] Start time of the workflow.
      attr_accessor :start_time


      #
      # Mapper for CurrentScenarioDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CurrentScenarioDetails',
          type: {
            name: 'Composite',
            class_name: 'CurrentScenarioDetails',
            model_properties: {
              scenario_name: {
                required: false,
                serialized_name: 'scenarioName',
                type: {
                  name: 'String'
                }
              },
              job_id: {
                required: false,
                serialized_name: 'jobId',
                type: {
                  name: 'String'
                }
              },
              start_time: {
                required: false,
                serialized_name: 'startTime',
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
