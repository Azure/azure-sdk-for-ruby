# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2016_09_01
  module Models
    #
    # Part of MultiTenantDiagnosticSettings. Specifies the settings for a
    # particular log.
    #
    class LogSettings

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Name of a Diagnostic Log category for a resource type
      # this setting is applied to. To obtain the list of Diagnostic Log
      # categories for a resource, first perform a GET diagnostic settings
      # operation.
      attr_accessor :category

      # @return [Boolean] a value indicating whether this log is enabled.
      attr_accessor :enabled

      # @return [RetentionPolicy] the retention policy for this log.
      attr_accessor :retention_policy


      #
      # Mapper for LogSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LogSettings',
          type: {
            name: 'Composite',
            class_name: 'LogSettings',
            model_properties: {
              category: {
                client_side_validation: true,
                required: false,
                serialized_name: 'category',
                type: {
                  name: 'String'
                }
              },
              enabled: {
                client_side_validation: true,
                required: true,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
                }
              },
              retention_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'retentionPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'RetentionPolicy'
                }
              }
            }
          }
        }
      end
    end
  end
end
