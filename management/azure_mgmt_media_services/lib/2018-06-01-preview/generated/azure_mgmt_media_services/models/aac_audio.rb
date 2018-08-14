# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_06_01_preview
  module Models
    #
    # Describes Advanced Audio Codec (AAC) audio encoding settings.
    #
    class AacAudio < Audio

      include MsRestAzure


      def initialize
        @@odatatype = "#Microsoft.Media.AacAudio"
      end

      attr_accessor :@odatatype

      # @return [AacAudioProfile] The encoding profile to be used when encoding
      # audio with AAC. Possible values include: 'AacLc', 'HeAacV1', 'HeAacV2'
      attr_accessor :profile


      #
      # Mapper for AacAudio class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: '#Microsoft.Media.AacAudio',
          type: {
            name: 'Composite',
            class_name: 'AacAudio',
            model_properties: {
              label: {
                required: false,
                serialized_name: 'label',
                type: {
                  name: 'String'
                }
              },
              @odatatype: {
                required: true,
                serialized_name: '@odata\\.type',
                type: {
                  name: 'String'
                }
              },
              channels: {
                required: false,
                serialized_name: 'channels',
                type: {
                  name: 'Number'
                }
              },
              sampling_rate: {
                required: false,
                serialized_name: 'samplingRate',
                type: {
                  name: 'Number'
                }
              },
              bitrate: {
                required: false,
                serialized_name: 'bitrate',
                type: {
                  name: 'Number'
                }
              },
              profile: {
                required: false,
                serialized_name: 'profile',
                type: {
                  name: 'Enum',
                  module: 'AacAudioProfile'
                }
              }
            }
          }
        }
      end
    end
  end
end