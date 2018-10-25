# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::V2018_01_01
  module Models
    #
    # Ingest fragment dropped event event data.
    #
    class MediaLiveEventIngestHeartbeatEventData

      include MsRestAzure

      # @return [String] Gets the type of the track (Audio / Video).
      attr_accessor :track_type

      # @return [String] Gets the track name.
      attr_accessor :track_name

      # @return [Integer] Gets the bitrate of the track.
      attr_accessor :bitrate

      # @return [Integer] Gets the incoming bitrate.
      attr_accessor :incoming_bitrate

      # @return [String] Gets the last timestamp.
      attr_accessor :last_timestamp

      # @return [String] Gets the timescale of the last timestamp.
      attr_accessor :timescale

      # @return [Integer] Gets the fragment Overlap count.
      attr_accessor :overlap_count

      # @return [Integer] Gets the fragment Discontinuity count.
      attr_accessor :discontinuity_count

      # @return [Integer] Gets Non increasing count.
      attr_accessor :nonincreasing_count

      # @return [Boolean] Gets a value indicating whether unexpected bitrate is
      # present or not.
      attr_accessor :unexpected_bitrate

      # @return [String] Gets the state of the live event.
      attr_accessor :state

      # @return [Boolean] Gets a value indicating whether preview is healthy or
      # not.
      attr_accessor :healthy


      #
      # Mapper for MediaLiveEventIngestHeartbeatEventData class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MediaLiveEventIngestHeartbeatEventData',
          type: {
            name: 'Composite',
            class_name: 'MediaLiveEventIngestHeartbeatEventData',
            model_properties: {
              track_type: {
                required: false,
                read_only: true,
                serialized_name: 'trackType',
                type: {
                  name: 'String'
                }
              },
              track_name: {
                required: false,
                read_only: true,
                serialized_name: 'trackName',
                type: {
                  name: 'String'
                }
              },
              bitrate: {
                required: false,
                read_only: true,
                serialized_name: 'bitrate',
                type: {
                  name: 'Number'
                }
              },
              incoming_bitrate: {
                required: false,
                read_only: true,
                serialized_name: 'incomingBitrate',
                type: {
                  name: 'Number'
                }
              },
              last_timestamp: {
                required: false,
                read_only: true,
                serialized_name: 'lastTimestamp',
                type: {
                  name: 'String'
                }
              },
              timescale: {
                required: false,
                read_only: true,
                serialized_name: 'timescale',
                type: {
                  name: 'String'
                }
              },
              overlap_count: {
                required: false,
                read_only: true,
                serialized_name: 'overlapCount',
                type: {
                  name: 'Number'
                }
              },
              discontinuity_count: {
                required: false,
                read_only: true,
                serialized_name: 'discontinuityCount',
                type: {
                  name: 'Number'
                }
              },
              nonincreasing_count: {
                required: false,
                read_only: true,
                serialized_name: 'nonincreasingCount',
                type: {
                  name: 'Number'
                }
              },
              unexpected_bitrate: {
                required: false,
                read_only: true,
                serialized_name: 'unexpectedBitrate',
                type: {
                  name: 'Boolean'
                }
              },
              state: {
                required: false,
                read_only: true,
                serialized_name: 'state',
                type: {
                  name: 'String'
                }
              },
              healthy: {
                required: false,
                read_only: true,
                serialized_name: 'healthy',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
