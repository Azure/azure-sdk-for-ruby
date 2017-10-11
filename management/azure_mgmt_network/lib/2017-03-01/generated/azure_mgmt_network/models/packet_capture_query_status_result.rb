# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network::Api_2017_03_01
  module Models
    #
    # Status of packet capture session.
    #
    class PacketCaptureQueryStatusResult

      include MsRestAzure

      # @return [String] The name of the packet capture resource.
      attr_accessor :name

      # @return [String] The ID of the packet capture resource.
      attr_accessor :id

      # @return [DateTime] The start time of the packet capture session.
      attr_accessor :capture_start_time

      # @return [PcStatus] The status of the packet capture session. Possible
      # values include: 'NotStarted', 'Running', 'Stopped', 'Error', 'Unknown'
      attr_accessor :packet_capture_status

      # @return [String] The reason the current packet capture session was
      # stopped.
      attr_accessor :stop_reason

      # @return [Array<PcError>] List of errors of packet capture session.
      attr_accessor :packet_capture_error


      #
      # Mapper for PacketCaptureQueryStatusResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PacketCaptureQueryStatusResult',
          type: {
            name: 'Composite',
            class_name: 'PacketCaptureQueryStatusResult',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              capture_start_time: {
                required: false,
                serialized_name: 'captureStartTime',
                type: {
                  name: 'DateTime'
                }
              },
              packet_capture_status: {
                required: false,
                serialized_name: 'packetCaptureStatus',
                type: {
                  name: 'String'
                }
              },
              stop_reason: {
                required: false,
                serialized_name: 'stopReason',
                type: {
                  name: 'String'
                }
              },
              packet_capture_error: {
                required: false,
                serialized_name: 'packetCaptureError',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'PcErrorElementType',
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
