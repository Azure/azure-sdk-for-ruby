# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2020_07_01_preview
  module Models
    #
    # Rule results properties.
    #
    class RuleResultsProperties

      include MsRestAzure

      # @return [Array<Array<String>>] Expected results in the baseline.
      attr_accessor :results


      #
      # Mapper for RuleResultsProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RuleResultsProperties',
          type: {
            name: 'Composite',
            class_name: 'RuleResultsProperties',
            model_properties: {
              results: {
                client_side_validation: true,
                required: false,
                serialized_name: 'results',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ArrayElementType',
                      type: {
                        name: 'Sequence',
                        element: {
                            client_side_validation: true,
                            required: false,
                            serialized_name: 'StringElementType',
                            type: {
                              name: 'String'
                            }
                        }
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
