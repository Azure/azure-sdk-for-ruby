# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement
  module Models
    #
    # Model object.
    #
    #
    class NotificationOptions

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Android 4.1+ only. Multi line message shown in
      # expanded notifications on Android 4.1+ devices. The `notificationType`
      # property must be set to `system`.
      #
      attr_accessor :big_text

      # @return [String] URL of a remote image displayed in expanded
      # notifications on
      # Android 4.1+ devices with the following constraints:
      # * The URL length is limited to 2000 characters.
      # * The image size must be less than 4 MiB.
      # * The following MIME types are supported:
      # ** image/png
      # ** image/jpeg
      # ** image/gif
      # ** image/webp
      # ** image/bmp
      # ** image/x-bmp
      # ** image/x-ms-bmp
      # * URL scheme must be HTTP or HTTPS (with valid SSL certificate).
      # * Incompatible with `bigText`, only one of the fields can be set.
      # * The `notificationType` property must be set to `system`.
      #
      attr_accessor :big_picture

      # @return [String] iOS only. The name of a sound file in the application
      # bundle. The sound in this file is played as an alert. If the sound file
      # doesn’t exist or default is specified as the value, the default alert
      # sound is played. The audio must be in one of the audio data formats
      # that are compatible with system sounds. The `deliveryTime` property
      # must be set to `any` or `background`.
      #
      attr_accessor :sound

      # @return [String] The action text is the title of the right button of
      # the alert or the value of the unlock slider, where the value replaces
      # 'unlock' in 'slide to unlock'. 'View' (localized to the preferred
      # language) is used as the default value. The `deliveryTime` property
      # must be set to `any` or `background`.
      #
      attr_accessor :action_text


      #
      # Mapper for NotificationOptions class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'NotificationOptions',
          type: {
            name: 'Composite',
            class_name: 'NotificationOptions',
            model_properties: {
              big_text: {
                required: false,
                serialized_name: 'bigText',
                constraints: {
                  MaxLength: 4000
                },
                type: {
                  name: 'String'
                }
              },
              big_picture: {
                required: false,
                serialized_name: 'bigPicture',
                constraints: {
                  MaxLength: 2000
                },
                type: {
                  name: 'String'
                }
              },
              sound: {
                required: false,
                serialized_name: 'sound',
                type: {
                  name: 'String'
                }
              },
              action_text: {
                required: false,
                serialized_name: 'actionText',
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
