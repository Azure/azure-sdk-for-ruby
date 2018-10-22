# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventHub::Mgmt::V2018_01_01_preview
  module Models
    #
    # Contains all settings for the cluster.
    #
    class ClusterQuotaConfigurationProperties

      include MsRestAzure

      # @return [Hash{String => String}] All possible Cluster settings - a
      # collection of key/value paired settings which apply to quotas and
      # configurations imposed on the cluster.
      attr_accessor :settings


      #
      # Mapper for ClusterQuotaConfigurationProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ClusterQuotaConfigurationProperties',
          type: {
            name: 'Composite',
            class_name: 'ClusterQuotaConfigurationProperties',
            model_properties: {
              settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'settings',
                type: {
                  name: 'Dictionary',
                  value: {
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
      end
    end
  end
end
