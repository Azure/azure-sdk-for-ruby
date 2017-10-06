# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::TrafficManager::Api_2017_03_01
  module Models
    #
    # Class containing endpoint monitoring settings in a Traffic Manager
    # profile.
    #
    class MonitorConfig

      include MsRestAzure

      # @return [String] Gets or sets the profile-level monitoring status of
      # the Traffic Manager profile.
      attr_accessor :profile_monitor_status

      # @return [String] Gets or sets the protocol (HTTP or HTTPS) used to
      # probe for endpoint health.
      attr_accessor :protocol

      # @return [Integer] Gets or sets the TCP port used to probe for endpoint
      # health.
      attr_accessor :port

      # @return [String] Gets or sets the path relative to the endpoint domain
      # name used to probe for endpoint health.
      attr_accessor :path


      #
      # Mapper for MonitorConfig class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MonitorConfig',
          type: {
            name: 'Composite',
            class_name: 'MonitorConfig',
            model_properties: {
              profile_monitor_status: {
                required: false,
                serialized_name: 'profileMonitorStatus',
                type: {
                  name: 'String'
                }
              },
              protocol: {
                required: false,
                serialized_name: 'protocol',
                type: {
                  name: 'String'
                }
              },
              port: {
                required: false,
                serialized_name: 'port',
                type: {
                  name: 'Number'
                }
              },
              path: {
                required: false,
                serialized_name: 'path',
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
