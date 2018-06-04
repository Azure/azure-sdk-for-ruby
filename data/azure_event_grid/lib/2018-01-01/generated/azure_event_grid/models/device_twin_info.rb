# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::V2018_01_01
  module Models
    #
    # Information about the device twin, which is the cloud represenation of
    # application device metadata.
    #
    class DeviceTwinInfo

      include MsRestAzure

      # @return [String] Authentication type used for this device: either SAS,
      # SelfSigned, or CertificateAuthority.
      attr_accessor :authentication_type

      # @return [Float] Count of cloud to device messages sent to this device.
      attr_accessor :cloud_to_device_message_count

      # @return [String] Whether the device is connected or disconnected.
      attr_accessor :connection_state

      # @return [String] The unique identifier of the device twin.
      attr_accessor :device_id

      # @return [String] A piece of information that describes the content of
      # the device twin. Each etag is guaranteed to be unique per device twin.
      attr_accessor :etag

      # @return [String] The ISO8601 timestamp of the last activity.
      attr_accessor :last_activity_time

      # @return [DeviceTwinInfoProperties] Properties JSON element.
      attr_accessor :properties

      # @return [String] Whether the device twin is enabled or disabled.
      attr_accessor :status

      # @return [String] The ISO8601 timestamp of the last device twin status
      # update.
      attr_accessor :status_update_time

      # @return [Float] An integer that is incremented by one each time the
      # device twin is updated.
      attr_accessor :version

      # @return [DeviceTwinInfoX509Thumbprint] The thumbprint is a unique value
      # for the x509 certificate, commonly used to find a particular
      # certificate in a certificate store. The thumbprint is dynamically
      # generated using the SHA1 algorithm, and does not physically exist in
      # the certificate.
      attr_accessor :x509thumbprint


      #
      # Mapper for DeviceTwinInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DeviceTwinInfo',
          type: {
            name: 'Composite',
            class_name: 'DeviceTwinInfo',
            model_properties: {
              authentication_type: {
                required: false,
                serialized_name: 'authenticationType',
                type: {
                  name: 'String'
                }
              },
              cloud_to_device_message_count: {
                required: false,
                serialized_name: 'cloudToDeviceMessageCount',
                type: {
                  name: 'Double'
                }
              },
              connection_state: {
                required: false,
                serialized_name: 'connectionState',
                type: {
                  name: 'String'
                }
              },
              device_id: {
                required: false,
                serialized_name: 'deviceId',
                type: {
                  name: 'String'
                }
              },
              etag: {
                required: false,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              last_activity_time: {
                required: false,
                serialized_name: 'lastActivityTime',
                type: {
                  name: 'String'
                }
              },
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'DeviceTwinInfoProperties'
                }
              },
              status: {
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              status_update_time: {
                required: false,
                serialized_name: 'statusUpdateTime',
                type: {
                  name: 'String'
                }
              },
              version: {
                required: false,
                serialized_name: 'version',
                type: {
                  name: 'Double'
                }
              },
              x509thumbprint: {
                required: false,
                serialized_name: 'x509Thumbprint',
                type: {
                  name: 'Composite',
                  class_name: 'DeviceTwinInfoX509Thumbprint'
                }
              }
            }
          }
        }
      end
    end
  end
end
