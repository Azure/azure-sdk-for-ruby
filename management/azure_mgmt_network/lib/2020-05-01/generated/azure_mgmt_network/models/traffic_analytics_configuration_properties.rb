# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_05_01
  module Models
    #
    # Parameters that define the configuration of traffic analytics.
    #
    class TrafficAnalyticsConfigurationProperties

      include MsRestAzure

      # @return [Boolean] Flag to enable/disable traffic analytics.
      attr_accessor :enabled

      # @return [String] The resource guid of the attached workspace.
      attr_accessor :workspace_id

      # @return [String] The location of the attached workspace.
      attr_accessor :workspace_region

      # @return [String] Resource Id of the attached workspace.
      attr_accessor :workspace_resource_id

      # @return [Integer] The interval in minutes which would decide how
      # frequently TA service should do flow analytics.
      attr_accessor :traffic_analytics_interval


      #
      # Mapper for TrafficAnalyticsConfigurationProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TrafficAnalyticsConfigurationProperties',
          type: {
            name: 'Composite',
            class_name: 'TrafficAnalyticsConfigurationProperties',
            model_properties: {
              enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
                }
              },
              workspace_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'workspaceId',
                type: {
                  name: 'String'
                }
              },
              workspace_region: {
                client_side_validation: true,
                required: false,
                serialized_name: 'workspaceRegion',
                type: {
                  name: 'String'
                }
              },
              workspace_resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'workspaceResourceId',
                type: {
                  name: 'String'
                }
              },
              traffic_analytics_interval: {
                client_side_validation: true,
                required: false,
                serialized_name: 'trafficAnalyticsInterval',
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
