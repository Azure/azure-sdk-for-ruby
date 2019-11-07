# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LuisAuthoring::V3_0_preview
  module Models
    #
    # Intent Classifier.
    #
    class IntentClassifier < ModelInfo

      include MsRestAzure

      # @return [String] The domain name.
      attr_accessor :custom_prebuilt_domain_name

      # @return [String] The intent name or entity name.
      attr_accessor :custom_prebuilt_model_name


      #
      # Mapper for IntentClassifier class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Intent Classifier',
          type: {
            name: 'Composite',
            class_name: 'IntentClassifier',
            model_properties: {
              id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeId',
                type: {
                  name: 'Number'
                }
              },
              readable_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'readableType',
                type: {
                  name: 'String'
                }
              },
              custom_prebuilt_domain_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'customPrebuiltDomainName',
                type: {
                  name: 'String'
                }
              },
              custom_prebuilt_model_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'customPrebuiltModelName',
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
