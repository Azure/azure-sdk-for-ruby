# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2016_05_15
  module Models
    #
    # Properties of a virtual machine that determine how it is connected to a
    # load balancer.
    #
    class SharedPublicIpAddressConfigurationFragment

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<InboundNatRuleFragment>] The incoming NAT rules
      attr_accessor :inbound_nat_rules


      #
      # Mapper for SharedPublicIpAddressConfigurationFragment class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SharedPublicIpAddressConfigurationFragment',
          type: {
            name: 'Composite',
            class_name: 'SharedPublicIpAddressConfigurationFragment',
            model_properties: {
              inbound_nat_rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'inboundNatRules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'InboundNatRuleFragmentElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'InboundNatRuleFragment'
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
