# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web::Api_2016_08_01
  module Models
    #
    # Triggered Web Job History. List of Triggered Web Job Run Information
    # elements.
    #
    class TriggeredJobHistory < ProxyOnlyResource

      include MsRestAzure

      # @return [Array<TriggeredJobRun>] List of triggered web job runs.
      attr_accessor :triggered_job_runs


      #
      # Mapper for TriggeredJobHistory class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'TriggeredJobHistory',
          type: {
            name: 'Composite',
            class_name: 'TriggeredJobHistory',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              triggered_job_runs: {
                required: false,
                serialized_name: 'properties.triggeredJobRuns',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'TriggeredJobRunElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TriggeredJobRun'
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
