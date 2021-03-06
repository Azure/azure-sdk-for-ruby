# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2020_05_01
  module Models
    #
    # Base type for all TrackDescriptor types, which define the metadata and
    # selection for tracks that should be processed by a Job
    #
    class TrackDescriptor

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["#Microsoft.Media.AudioTrackDescriptor"] = "AudioTrackDescriptor"
      @@discriminatorMap["#Microsoft.Media.SelectAudioTrackByAttribute"] = "SelectAudioTrackByAttribute"
      @@discriminatorMap["#Microsoft.Media.SelectAudioTrackById"] = "SelectAudioTrackById"
      @@discriminatorMap["#Microsoft.Media.VideoTrackDescriptor"] = "VideoTrackDescriptor"
      @@discriminatorMap["#Microsoft.Media.SelectVideoTrackByAttribute"] = "SelectVideoTrackByAttribute"
      @@discriminatorMap["#Microsoft.Media.SelectVideoTrackById"] = "SelectVideoTrackById"

      def initialize
        @odatatype = "TrackDescriptor"
      end

      attr_accessor :odatatype


      #
      # Mapper for TrackDescriptor class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TrackDescriptor',
          type: {
            name: 'Composite',
            polymorphic_discriminator: '@odata.type',
            uber_parent: 'TrackDescriptor',
            class_name: 'TrackDescriptor',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
