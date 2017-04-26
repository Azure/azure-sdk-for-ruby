# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # A Policy.
    #
    class PolicyFragment < MsRestAzure::Resource

      include MsRestAzure

      # @return [String] The description of the policy.
      attr_accessor :description

      # @return [PolicyStatus] The status of the policy. Possible values
      # include: 'Enabled', 'Disabled'
      attr_accessor :status

      # @return [PolicyFactName] The fact name of the policy (e.g. LabVmCount,
      # LabVmSize, MaxVmsAllowedPerLab, etc. Possible values include:
      # 'UserOwnedLabVmCount', 'UserOwnedLabPremiumVmCount', 'LabVmCount',
      # 'LabPremiumVmCount', 'LabVmSize', 'GalleryImage',
      # 'UserOwnedLabVmCountInSubnet', 'LabTargetCost'
      attr_accessor :fact_name

      # @return [String] The fact data of the policy.
      attr_accessor :fact_data

      # @return [String] The threshold of the policy (i.e. a number for
      # MaxValuePolicy, and a JSON array of values for AllowedValuesPolicy).
      attr_accessor :threshold

      # @return [PolicyEvaluatorType] The evaluator type of the policy (i.e.
      # AllowedValuesPolicy, MaxValuePolicy). Possible values include:
      # 'AllowedValuesPolicy', 'MaxValuePolicy'
      attr_accessor :evaluator_type

      # @return [String] The provisioning status of the resource.
      attr_accessor :provisioning_state

      # @return [String] The unique immutable identifier of a resource (Guid).
      attr_accessor :unique_identifier


      #
      # Mapper for PolicyFragment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PolicyFragment',
          type: {
            name: 'Composite',
            class_name: 'PolicyFragment',
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
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              description: {
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              status: {
                required: false,
                serialized_name: 'properties.status',
                type: {
                  name: 'String'
                }
              },
              fact_name: {
                required: false,
                serialized_name: 'properties.factName',
                type: {
                  name: 'String'
                }
              },
              fact_data: {
                required: false,
                serialized_name: 'properties.factData',
                type: {
                  name: 'String'
                }
              },
              threshold: {
                required: false,
                serialized_name: 'properties.threshold',
                type: {
                  name: 'String'
                }
              },
              evaluator_type: {
                required: false,
                serialized_name: 'properties.evaluatorType',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              unique_identifier: {
                required: false,
                serialized_name: 'properties.uniqueIdentifier',
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
