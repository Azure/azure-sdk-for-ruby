# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2016_03_30
  module Models
    #
    # AddressSpace contains an array of IP address ranges that can be used by
    # subnets
    #
    class AddressSpace

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<String>] Gets or sets List of address blocks reserved
      # for this virtual network in CIDR notation
      attr_accessor :address_prefixes


      #
      # Mapper for AddressSpace class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AddressSpace',
          type: {
            name: 'Composite',
            class_name: 'AddressSpace',
            model_properties: {
              address_prefixes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'addressPrefixes',
                type: {
                  name: 'Sequence',
                  element: {
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
