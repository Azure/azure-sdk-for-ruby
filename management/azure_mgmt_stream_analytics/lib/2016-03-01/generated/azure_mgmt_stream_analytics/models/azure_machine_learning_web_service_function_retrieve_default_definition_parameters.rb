# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StreamAnalytics::Mgmt::V2016_03_01
  module Models
    #
    # The parameters needed to retrieve the default function definition for an
    # Azure Machine Learning web service function.
    #
    class AzureMachineLearningWebServiceFunctionRetrieveDefaultDefinitionParameters < FunctionRetrieveDefaultDefinitionParameters

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @bindingType = "Microsoft.MachineLearning/WebService"
      end

      attr_accessor :bindingType

      # @return [String] The Request-Response execute endpoint of the Azure
      # Machine Learning web service. Find out more here:
      # https://docs.microsoft.com/en-us/azure/machine-learning/machine-learning-consume-web-services#request-response-service-rrs
      attr_accessor :execute_endpoint

      # @return [UdfType] The function type. Possible values include: 'Scalar'
      attr_accessor :udf_type


      #
      # Mapper for
      # AzureMachineLearningWebServiceFunctionRetrieveDefaultDefinitionParameters
      # class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Microsoft.MachineLearning/WebService',
          type: {
            name: 'Composite',
            class_name: 'AzureMachineLearningWebServiceFunctionRetrieveDefaultDefinitionParameters',
            model_properties: {
              bindingType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'bindingType',
                type: {
                  name: 'String'
                }
              },
              execute_endpoint: {
                client_side_validation: true,
                required: false,
                serialized_name: 'bindingRetrievalProperties.executeEndpoint',
                type: {
                  name: 'String'
                }
              },
              udf_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'bindingRetrievalProperties.udfType',
                type: {
                  name: 'Enum',
                  module: 'UdfType'
                }
              }
            }
          }
        }
      end
    end
  end
end
