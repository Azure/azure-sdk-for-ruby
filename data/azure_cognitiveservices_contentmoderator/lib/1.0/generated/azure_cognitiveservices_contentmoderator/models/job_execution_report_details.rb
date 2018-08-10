# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ContentModerator::V1_0
  module Models
    #
    # Job Execution Report Values.
    #
    class JobExecutionReportDetails

      include MsRestAzure

      # @return [String] Time details.
      attr_accessor :ts

      # @return [String] Message details.
      attr_accessor :msg


      #
      # Mapper for JobExecutionReportDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'JobExecutionReportDetails',
          type: {
            name: 'Composite',
            class_name: 'JobExecutionReportDetails',
            model_properties: {
              ts: {
                required: false,
                serialized_name: 'Ts',
                type: {
                  name: 'String'
                }
              },
              msg: {
                required: false,
                serialized_name: 'Msg',
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
