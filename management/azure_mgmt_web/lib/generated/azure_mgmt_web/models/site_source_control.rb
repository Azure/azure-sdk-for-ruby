# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Source control configuration for an app.
    #
    class SiteSourceControl < MsRestAzure::ProxyOnlyResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Repository or source control URL.
      attr_accessor :repo_url

      # @return [String] Name of branch to use for deployment.
      attr_accessor :branch

      # @return [Boolean] <code>true</code> to limit to manual integration;
      # <code>false</code> to enable continuous integration (which configures
      # webhooks into online repos like GitHub).
      attr_accessor :is_manual_integration

      # @return [Boolean] <code>true</code> to enable deployment rollback;
      # otherwise, <code>false</code>.
      attr_accessor :deployment_rollback_enabled

      # @return [Boolean] <code>true</code> for a Mercurial repository;
      # <code>false</code> for a Git repository.
      attr_accessor :is_mercurial


      #
      # Mapper for SiteSourceControl class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SiteSourceControl',
          type: {
            name: 'Composite',
            class_name: 'SiteSourceControl',
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
              repo_url: {
                required: false,
                serialized_name: 'properties.repoUrl',
                type: {
                  name: 'String'
                }
              },
              branch: {
                required: false,
                serialized_name: 'properties.branch',
                type: {
                  name: 'String'
                }
              },
              is_manual_integration: {
                required: false,
                serialized_name: 'properties.isManualIntegration',
                type: {
                  name: 'Boolean'
                }
              },
              deployment_rollback_enabled: {
                required: false,
                serialized_name: 'properties.deploymentRollbackEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              is_mercurial: {
                required: false,
                serialized_name: 'properties.isMercurial',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
