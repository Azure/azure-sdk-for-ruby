# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2018_02_01
  module Models
    #
    # Virtual Network rule.
    #
    class VirtualNetworkRule

      include MsRestAzure

      # @return [String] Resource ID of a subnet, for example:
      # /subscriptions/{subscriptionId}/resourceGroups/{groupName}/providers/Microsoft.Network/virtualNetworks/{vnetName}/subnets/{subnetName}.
      attr_accessor :virtual_network_resource_id

      # @return [Action] The action of virtual network rule. Possible values
      # include: 'Allow'. Default value: 'Allow' .
      attr_accessor :action

      # @return [State] Gets the state of virtual network rule. Possible values
      # include: 'provisioning', 'deprovisioning', 'succeeded', 'failed',
      # 'networkSourceDeleted'
      attr_accessor :state


      #
      # Mapper for VirtualNetworkRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualNetworkRule',
          type: {
            name: 'Composite',
            class_name: 'VirtualNetworkRule',
            model_properties: {
              virtual_network_resource_id: {
                required: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              action: {
                required: false,
                serialized_name: 'action',
                default_value: 'Allow',
                type: {
                  name: 'Enum',
                  module: 'Action'
                }
              },
              state: {
                required: false,
                serialized_name: 'state',
                type: {
                  name: 'Enum',
                  module: 'State'
                }
              }
            }
          }
        }
      end
    end
  end
end
