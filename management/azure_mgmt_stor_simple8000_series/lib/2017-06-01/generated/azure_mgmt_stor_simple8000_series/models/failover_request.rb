# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorSimple8000Series::Mgmt::V2017_06_01
  module Models
    #
    # The request object for triggering a failover of volume containers, from a
    # source device to a target device.
    #
    class FailoverRequest

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The ARM path ID of the device which will act as the
      # failover target.
      attr_accessor :target_device_id

      # @return [Array<String>] The list of path IDs of the volume containers
      # which needs to be failed-over to the target device.
      attr_accessor :volume_containers


      #
      # Mapper for FailoverRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FailoverRequest',
          type: {
            name: 'Composite',
            class_name: 'FailoverRequest',
            model_properties: {
              target_device_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetDeviceId',
                type: {
                  name: 'String'
                }
              },
              volume_containers: {
                client_side_validation: true,
                required: false,
                serialized_name: 'volumeContainers',
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
