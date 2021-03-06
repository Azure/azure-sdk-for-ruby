# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::PolicyInsights::Mgmt::V2019_07_01
  module Models
    #
    # The deployment status summary for all deployments created by the
    # remediation.
    #
    class RemediationDeploymentSummary

      include MsRestAzure

      # @return [Integer] The number of deployments required by the
      # remediation.
      attr_accessor :total_deployments

      # @return [Integer] The number of deployments required by the remediation
      # that have succeeded.
      attr_accessor :successful_deployments

      # @return [Integer] The number of deployments required by the remediation
      # that have failed.
      attr_accessor :failed_deployments


      #
      # Mapper for RemediationDeploymentSummary class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RemediationDeploymentSummary',
          type: {
            name: 'Composite',
            class_name: 'RemediationDeploymentSummary',
            model_properties: {
              total_deployments: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'totalDeployments',
                type: {
                  name: 'Number'
                }
              },
              successful_deployments: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'successfulDeployments',
                type: {
                  name: 'Number'
                }
              },
              failed_deployments: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'failedDeployments',
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
