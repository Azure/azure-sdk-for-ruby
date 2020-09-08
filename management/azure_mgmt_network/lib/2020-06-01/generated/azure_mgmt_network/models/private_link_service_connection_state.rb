# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_06_01
  module Models
    #
    # A collection of information about the state of the connection between
    # service consumer and provider.
    #
    class PrivateLinkServiceConnectionState

      include MsRestAzure

      # @return [String] Indicates whether the connection has been
      # Approved/Rejected/Removed by the owner of the service.
      attr_accessor :status

      # @return [String] The reason for approval/rejection of the connection.
      attr_accessor :description

      # @return [String] A message indicating if changes on the service
      # provider require any updates on the consumer.
      attr_accessor :actions_required


      #
      # Mapper for PrivateLinkServiceConnectionState class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PrivateLinkServiceConnectionState',
          type: {
            name: 'Composite',
            class_name: 'PrivateLinkServiceConnectionState',
            model_properties: {
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              actions_required: {
                client_side_validation: true,
                required: false,
                serialized_name: 'actionsRequired',
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
