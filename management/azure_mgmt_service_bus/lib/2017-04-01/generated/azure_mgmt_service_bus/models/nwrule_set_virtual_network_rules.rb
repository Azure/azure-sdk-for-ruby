# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceBus::Mgmt::V2017_04_01
  module Models
    #
    # The response from the List namespace operation.
    #
    class NWRuleSetVirtualNetworkRules

      include MsRestAzure

      # @return [Subnet] Subnet properties
      attr_accessor :subnet

      # @return [Boolean] Value that indicates whether to ignore missing VNet
      # Service Endpoint
      attr_accessor :ignore_missing_vnet_service_endpoint


      #
      # Mapper for NWRuleSetVirtualNetworkRules class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'NWRuleSetVirtualNetworkRules',
          type: {
            name: 'Composite',
            class_name: 'NWRuleSetVirtualNetworkRules',
            model_properties: {
              subnet: {
                required: false,
                serialized_name: 'subnet',
                type: {
                  name: 'Composite',
                  class_name: 'Subnet'
                }
              },
              ignore_missing_vnet_service_endpoint: {
                required: false,
                serialized_name: 'ignoreMissingVnetServiceEndpoint',
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
