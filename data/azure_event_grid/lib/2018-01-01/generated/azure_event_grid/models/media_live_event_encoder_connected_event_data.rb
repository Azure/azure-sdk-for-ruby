# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::V2018_01_01
  module Models
    #
    # Encoder connect event data.
    #
    class MediaLiveEventEncoderConnectedEventData

      include MsRestAzure

      # @return [String] Gets the ingest URL provided by the live event.
      attr_accessor :ingest_url

      # @return [String] Gets the stream Id.
      attr_accessor :stream_id

      # @return [String] Gets the remote IP.
      attr_accessor :encoder_ip

      # @return [String] Gets the remote port.
      attr_accessor :encoder_port


      #
      # Mapper for MediaLiveEventEncoderConnectedEventData class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MediaLiveEventEncoderConnectedEventData',
          type: {
            name: 'Composite',
            class_name: 'MediaLiveEventEncoderConnectedEventData',
            model_properties: {
              ingest_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'ingestUrl',
                type: {
                  name: 'String'
                }
              },
              stream_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'streamId',
                type: {
                  name: 'String'
                }
              },
              encoder_ip: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'encoderIp',
                type: {
                  name: 'String'
                }
              },
              encoder_port: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'encoderPort',
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
