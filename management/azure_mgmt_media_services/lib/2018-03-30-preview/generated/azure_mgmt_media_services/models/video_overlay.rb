# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_03_30_preview
  module Models
    #
    # Describes the properties of a video overlay.
    #
    class VideoOverlay < Overlay

      include MsRestAzure


      def initialize
        @odatatype = "#Microsoft.Media.VideoOverlay"
      end

      attr_accessor :odatatype

      # @return [Rectangle] The location in the input video where the overlay
      # is applied.
      attr_accessor :position

      # @return [Float] The opacity of the overlay. This is a value in the
      # range [0 - 1.0]. Default is 1.0 which mean the overlay is opaque.
      attr_accessor :opacity

      # @return [Rectangle] An optional rectangular window used to crop the
      # overlay image or video.
      attr_accessor :crop_rectangle


      #
      # Mapper for VideoOverlay class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: '#Microsoft.Media.VideoOverlay',
          type: {
            name: 'Composite',
            class_name: 'VideoOverlay',
            model_properties: {
              input_label: {
                client_side_validation: true,
                required: false,
                serialized_name: 'inputLabel',
                type: {
                  name: 'String'
                }
              },
              start: {
                client_side_validation: true,
                required: false,
                serialized_name: 'start',
                type: {
                  name: 'TimeSpan'
                }
              },
              end_property: {
                client_side_validation: true,
                required: false,
                serialized_name: 'end',
                type: {
                  name: 'TimeSpan'
                }
              },
              fade_in_duration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fadeInDuration',
                type: {
                  name: 'TimeSpan'
                }
              },
              fade_out_duration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fadeOutDuration',
                type: {
                  name: 'TimeSpan'
                }
              },
              audio_gain_level: {
                client_side_validation: true,
                required: false,
                serialized_name: 'audioGainLevel',
                type: {
                  name: 'Double'
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
              position: {
                client_side_validation: true,
                required: false,
                serialized_name: 'position',
                type: {
                  name: 'Composite',
                  class_name: 'Rectangle'
                }
              },
              opacity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'opacity',
                type: {
                  name: 'Double'
                }
              },
              crop_rectangle: {
                client_side_validation: true,
                required: false,
                serialized_name: 'cropRectangle',
                type: {
                  name: 'Composite',
                  class_name: 'Rectangle'
                }
              }
            }
          }
        }
      end
    end
  end
end
