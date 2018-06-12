# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2015_05_01_preview
  module Models
    #
    # The arp table associated with the ExpressRouteCircuit
    #
    class ExpressRouteCircuitArpTable

      include MsRestAzure

      # @return [String] Gets ipAddress.
      attr_accessor :ip_address

      # @return [String] Gets macAddress.
      attr_accessor :mac_address


      #
      # Mapper for ExpressRouteCircuitArpTable class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ExpressRouteCircuitArpTable',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteCircuitArpTable',
            model_properties: {
              ip_address: {
                required: false,
                serialized_name: 'ipAddress',
                type: {
                  name: 'String'
                }
              },
              mac_address: {
                required: false,
                serialized_name: 'macAddress',
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
