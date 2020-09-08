# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_06_01
  module Models
    #
    # Bastion Shareable Link.
    #
    class BastionShareableLink

      include MsRestAzure

      # @return [VM] Reference of the virtual machine resource.
      attr_accessor :vm

      # @return [String] The unique Bastion Shareable Link to the virtual
      # machine.
      attr_accessor :bsl

      # @return [String] The time when the link was created.
      attr_accessor :created_at

      # @return [String] Optional field indicating the warning or error message
      # related to the vm in case of partial failure.
      attr_accessor :message


      #
      # Mapper for BastionShareableLink class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BastionShareableLink',
          type: {
            name: 'Composite',
            class_name: 'BastionShareableLink',
            model_properties: {
              vm: {
                client_side_validation: true,
                required: true,
                serialized_name: 'vm',
                type: {
                  name: 'Composite',
                  class_name: 'VM'
                }
              },
              bsl: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'bsl',
                type: {
                  name: 'String'
                }
              },
              created_at: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'createdAt',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'message',
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
