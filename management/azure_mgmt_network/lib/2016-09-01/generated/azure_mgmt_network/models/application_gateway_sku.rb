# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network::Api_2016_09_01
  module Models
    #
    # SKU of an application gateway
    #
    class ApplicationGatewaySku

      include MsRestAzure

      # @return [ApplicationGatewaySkuName] Name of an application gateway SKU.
      # Possible values are: 'Standard_Small', 'Standard_Medium',
      # 'Standard_Large', 'WAF_Medium', and 'WAF_Large'. Possible values
      # include: 'Standard_Small', 'Standard_Medium', 'Standard_Large',
      # 'WAF_Medium', 'WAF_Large'
      attr_accessor :name

      # @return [ApplicationGatewayTier] Tier of an application gateway.
      # Possible values are: 'Standard' and 'WAF'. Possible values include:
      # 'Standard', 'WAF'
      attr_accessor :tier

      # @return [Integer] Capacity (instance count) of an application gateway.
      attr_accessor :capacity


      #
      # Mapper for ApplicationGatewaySku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApplicationGatewaySku',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewaySku',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              tier: {
                required: false,
                serialized_name: 'tier',
                type: {
                  name: 'String'
                }
              },
              capacity: {
                required: false,
                serialized_name: 'capacity',
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
