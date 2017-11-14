# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StreamAnalytics::Mgmt::V2016_03_01
  module Models
    #
    # The physical binding of the function. For example, in the Azure Machine
    # Learning web service’s case, this describes the endpoint.
    #
    class FunctionBinding

      include MsRestAzure

      include MsRest::JSONable
      @@discriminatorMap = Hash.new
      @@discriminatorMap["Microsoft.StreamAnalytics/JavascriptUdf"] = "JavaScriptFunctionBinding"
      @@discriminatorMap["Microsoft.MachineLearning/WebService"] = "AzureMachineLearningWebServiceFunctionBinding"

      def initialize
        @type = "FunctionBinding"
      end

      attr_accessor :type


      #
      # Mapper for FunctionBinding class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FunctionBinding',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'type',
            uber_parent: 'FunctionBinding',
            class_name: 'FunctionBinding',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
