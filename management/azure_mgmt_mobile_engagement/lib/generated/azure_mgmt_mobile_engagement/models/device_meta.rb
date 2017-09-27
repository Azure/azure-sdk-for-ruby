# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement
  module Models
    #
    # Model object.
    #
    #
    class DeviceMeta

      include MsRestAzure

      include MsRest::JSONable
      # @return [Integer] First time the device used the application in
      # milliseconds since January 1st, 1970 UTC.
      attr_accessor :first_seen

      # @return [Integer] Last time the device used the application in
      # milliseconds since January 1st, 1970 UTC.
      attr_accessor :last_seen

      # @return [Integer] Timestamp corresponding to the info object in
      # milliseconds since January 1st, 1970 UTC.
      attr_accessor :last_info

      # @return [Integer] Timestamp corresponding to the location object in
      # milliseconds since January 1st, 1970 UTC.
      attr_accessor :last_location

      # @return [Boolean] Boolean indicating if native push notifications (like
      # Android’s GCM or Apple’s APNS) are enabled for the application. This
      # boolean is set to true when the application registers successfully to
      # the native push service, and set to false when the native push service
      # reports to Mobile Engagement that the application can no longer be
      # pushed (which means that it has been uninstalled). This report is
      # performed a few hours after Mobile Engagement has tried to perform a
      # native push to a device on which the application has been uninstalled.
      attr_accessor :native_push_enabled


      #
      # Mapper for DeviceMeta class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DeviceMeta',
          type: {
            name: 'Composite',
            class_name: 'DeviceMeta',
            model_properties: {
              first_seen: {
                required: false,
                serialized_name: 'firstSeen',
                type: {
                  name: 'Number'
                }
              },
              last_seen: {
                required: false,
                serialized_name: 'lastSeen',
                type: {
                  name: 'Number'
                }
              },
              last_info: {
                required: false,
                serialized_name: 'lastInfo',
                type: {
                  name: 'Number'
                }
              },
              last_location: {
                required: false,
                serialized_name: 'lastLocation',
                type: {
                  name: 'Number'
                }
              },
              native_push_enabled: {
                required: false,
                serialized_name: 'nativePushEnabled',
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
