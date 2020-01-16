# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::TimeSeriesInsights::Mgmt::V2017_02_28_preview
  module Models
    #
    # Properties of an event source that reads events from an event broker in
    # Azure.
    #
    class AzureEventSourceProperties < EventSourceCommonProperties

      include MsRestAzure

      # @return [String] The resource id of the event source in Azure Resource
      # Manager.
      attr_accessor :event_source_resource_id


      #
      # Mapper for AzureEventSourceProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureEventSourceProperties',
          type: {
            name: 'Composite',
            class_name: 'AzureEventSourceProperties',
            model_properties: {
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'provisioningState',
                type: {
                  name: 'Enum',
                  module: 'ProvisioningState'
                }
              },
              creation_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'creationTime',
                type: {
                  name: 'DateTime'
                }
              },
              timestamp_property_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timestampPropertyName',
                type: {
                  name: 'String'
                }
              },
              event_source_resource_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'eventSourceResourceId',
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
