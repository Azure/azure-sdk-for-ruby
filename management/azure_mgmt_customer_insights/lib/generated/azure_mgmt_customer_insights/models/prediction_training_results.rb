# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CustomerInsights
  module Models
    #
    # The training results of the prediction.
    #
    class PredictionTrainingResults

      include MsRestAzure

      # @return [String] The hub name.
      attr_accessor :tenant_id

      # @return [String] Score name.
      attr_accessor :score_name

      # @return [PredictionDistributionDefinition] Prediction distribution.
      attr_accessor :prediction_distribution

      # @return [Array<CanonicalProfileDefinition>] Canonical profiles.
      attr_accessor :canonical_profiles

      # @return [Integer] Instance count of the primary profile.
      attr_accessor :primary_profile_instance_count


      #
      # Mapper for PredictionTrainingResults class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PredictionTrainingResults',
          type: {
            name: 'Composite',
            class_name: 'PredictionTrainingResults',
            model_properties: {
              tenant_id: {
                required: false,
                read_only: true,
                serialized_name: 'tenantId',
                type: {
                  name: 'String'
                }
              },
              score_name: {
                required: false,
                read_only: true,
                serialized_name: 'scoreName',
                type: {
                  name: 'String'
                }
              },
              prediction_distribution: {
                required: false,
                read_only: true,
                serialized_name: 'predictionDistribution',
                type: {
                  name: 'Composite',
                  class_name: 'PredictionDistributionDefinition'
                }
              },
              canonical_profiles: {
                required: false,
                read_only: true,
                serialized_name: 'canonicalProfiles',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'CanonicalProfileDefinitionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CanonicalProfileDefinition'
                      }
                  }
                }
              },
              primary_profile_instance_count: {
                required: false,
                read_only: true,
                serialized_name: 'primaryProfileInstanceCount',
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
