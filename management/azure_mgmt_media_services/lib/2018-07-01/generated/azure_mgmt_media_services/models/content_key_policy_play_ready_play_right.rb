# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_07_01
  module Models
    #
    # Configures the Play Right in the PlayReady license.
    #
    class ContentKeyPolicyPlayReadyPlayRight

      include MsRestAzure

      # @return [Duration] The amount of time that the license is valid after
      # the license is first used to play content.
      attr_accessor :first_play_expiration

      # @return [Integer] Configures the Serial Copy Management System (SCMS)
      # in the license. Must be between 0 and 3 inclusive.
      attr_accessor :scms_restriction

      # @return [Integer] Configures Automatic Gain Control (AGC) and Color
      # Stripe in the license. Must be between 0 and 3 inclusive.
      attr_accessor :agc_and_color_stripe_restriction

      # @return [ContentKeyPolicyPlayReadyExplicitAnalogTelevisionRestriction]
      # Configures the Explicit Analog Television Output Restriction in the
      # license. Configuration data must be between 0 and 3 inclusive.
      attr_accessor :explicit_analog_television_output_restriction

      # @return [Boolean] Enables the Image Constraint For Analog Component
      # Video Restriction in the license.
      attr_accessor :digital_video_only_content_restriction

      # @return [Boolean] Enables the Image Constraint For Analog Component
      # Video Restriction in the license.
      attr_accessor :image_constraint_for_analog_component_video_restriction

      # @return [Boolean] Enables the Image Constraint For Analog Component
      # Video Restriction in the license.
      attr_accessor :image_constraint_for_analog_computer_monitor_restriction

      # @return [ContentKeyPolicyPlayReadyUnknownOutputPassingOption]
      # Configures Unknown output handling settings of the license. Possible
      # values include: 'Unknown', 'NotAllowed', 'Allowed',
      # 'AllowedWithVideoConstriction'
      attr_accessor :allow_passing_video_content_to_unknown_output

      # @return [Integer] Specifies the output protection level for
      # uncompressed digital video.
      attr_accessor :uncompressed_digital_video_opl

      # @return [Integer] Specifies the output protection level for compressed
      # digital video.
      attr_accessor :compressed_digital_video_opl

      # @return [Integer] Specifies the output protection level for compressed
      # digital audio.
      attr_accessor :analog_video_opl

      # @return [Integer] Specifies the output protection level for compressed
      # digital audio.
      attr_accessor :compressed_digital_audio_opl

      # @return [Integer] Specifies the output protection level for
      # uncompressed digital audio.
      attr_accessor :uncompressed_digital_audio_opl


      #
      # Mapper for ContentKeyPolicyPlayReadyPlayRight class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContentKeyPolicyPlayReadyPlayRight',
          type: {
            name: 'Composite',
            class_name: 'ContentKeyPolicyPlayReadyPlayRight',
            model_properties: {
              first_play_expiration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'firstPlayExpiration',
                type: {
                  name: 'TimeSpan'
                }
              },
              scms_restriction: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scmsRestriction',
                type: {
                  name: 'Number'
                }
              },
              agc_and_color_stripe_restriction: {
                client_side_validation: true,
                required: false,
                serialized_name: 'agcAndColorStripeRestriction',
                type: {
                  name: 'Number'
                }
              },
              explicit_analog_television_output_restriction: {
                client_side_validation: true,
                required: false,
                serialized_name: 'explicitAnalogTelevisionOutputRestriction',
                type: {
                  name: 'Composite',
                  class_name: 'ContentKeyPolicyPlayReadyExplicitAnalogTelevisionRestriction'
                }
              },
              digital_video_only_content_restriction: {
                client_side_validation: true,
                required: true,
                serialized_name: 'digitalVideoOnlyContentRestriction',
                type: {
                  name: 'Boolean'
                }
              },
              image_constraint_for_analog_component_video_restriction: {
                client_side_validation: true,
                required: true,
                serialized_name: 'imageConstraintForAnalogComponentVideoRestriction',
                type: {
                  name: 'Boolean'
                }
              },
              image_constraint_for_analog_computer_monitor_restriction: {
                client_side_validation: true,
                required: true,
                serialized_name: 'imageConstraintForAnalogComputerMonitorRestriction',
                type: {
                  name: 'Boolean'
                }
              },
              allow_passing_video_content_to_unknown_output: {
                client_side_validation: true,
                required: true,
                serialized_name: 'allowPassingVideoContentToUnknownOutput',
                type: {
                  name: 'Enum',
                  module: 'ContentKeyPolicyPlayReadyUnknownOutputPassingOption'
                }
              },
              uncompressed_digital_video_opl: {
                client_side_validation: true,
                required: false,
                serialized_name: 'uncompressedDigitalVideoOpl',
                type: {
                  name: 'Number'
                }
              },
              compressed_digital_video_opl: {
                client_side_validation: true,
                required: false,
                serialized_name: 'compressedDigitalVideoOpl',
                type: {
                  name: 'Number'
                }
              },
              analog_video_opl: {
                client_side_validation: true,
                required: false,
                serialized_name: 'analogVideoOpl',
                type: {
                  name: 'Number'
                }
              },
              compressed_digital_audio_opl: {
                client_side_validation: true,
                required: false,
                serialized_name: 'compressedDigitalAudioOpl',
                type: {
                  name: 'Number'
                }
              },
              uncompressed_digital_audio_opl: {
                client_side_validation: true,
                required: false,
                serialized_name: 'uncompressedDigitalAudioOpl',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
