# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_07_01
  module Models
    #
    # Describes the basic properties for generating thumbnails from the input
    # video
    #
    class Image < Video

      include MsRestAzure


      def initialize
        @odatatype = "#Microsoft.Media.Image"
      end

      attr_accessor :odatatype

      # @return [String] The position in the input video from where to start
      # generating thumbnails. The value can be in absolute timestamp (ISO
      # 8601, e.g: PT05S), or a frame count (For example, 10 for the 10th
      # frame), or a relative value (For example, 1%). Also supports a macro
      # {Best}, which tells the encoder to select the best thumbnail from the
      # first few seconds of the video.
      attr_accessor :start

      # @return [String] The intervals at which thumbnails are generated. The
      # value can be in absolute timestamp (ISO 8601, e.g: PT05S for one image
      # every 5 seconds), or a frame count (For example, 30 for every 30
      # frames), or a relative value (For example, 1%).
      attr_accessor :step

      # @return [String] The position in the input video at which to stop
      # generating thumbnails. The value can be in absolute timestamp (ISO
      # 8601, e.g: PT5M30S to stop at 5 minutes and 30 seconds), or a frame
      # count (For example, 300 to stop at the 300th frame), or a relative
      # value (For example, 100%).
      attr_accessor :range


      #
      # Mapper for Image class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: '#Microsoft.Media.Image',
          type: {
            name: 'Composite',
            class_name: 'Image',
            model_properties: {
              label: {
                client_side_validation: true,
                required: false,
                serialized_name: 'label',
                type: {
                  name: 'String'
                }
              },
              odatatype: {
                client_side_validation: true,
                required: true,
                serialized_name: '@odata\\.type',
                type: {
                  name: 'String'
                }
              },
              key_frame_interval: {
                client_side_validation: true,
                required: false,
                serialized_name: 'keyFrameInterval',
                type: {
                  name: 'TimeSpan'
                }
              },
              stretch_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'stretchMode',
                type: {
                  name: 'String'
                }
              },
              start: {
                client_side_validation: true,
                required: false,
                serialized_name: 'start',
                type: {
                  name: 'String'
                }
              },
              step: {
                client_side_validation: true,
                required: false,
                serialized_name: 'step',
                type: {
                  name: 'String'
                }
              },
              range: {
                client_side_validation: true,
                required: false,
                serialized_name: 'range',
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
