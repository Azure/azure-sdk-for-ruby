# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ServiceBus
  module Models
    #
    # Properties to configure capture description for eventhub
    #
    class CaptureDescription
      # @return [Boolean] A value that indicates whether capture description is
      # enabled.
      attr_accessor :enabled

      # @return [EncodingCaptureDescription] Enumerates the possible values for
      # the encoding format of capture description. Possible values include:
      # 'Avro', 'AvroDeflate'
      attr_accessor :encoding

      # @return [Integer] The time window allows you to set the frequency with
      # which the capture to Azure Blobs will happen, value should between 60
      # to 900 seconds
      attr_accessor :interval_in_seconds

      # @return [Integer] The size window defines the amount of data built up
      # in your Event Hub before an capture operation, value should be between
      # 10485760 and 524288000 bytes
      attr_accessor :size_limit_in_bytes

      # @return [Destination] Properties of Destination where capture will be
      # stored. (Storage Account, Blob Names)
      attr_accessor :destination


      #
      # Mapper for CaptureDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CaptureDescription',
          type: {
            name: 'Composite',
            class_name: 'CaptureDescription',
            model_properties: {
              enabled: {
                required: false,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
                }
              },
              encoding: {
                required: false,
                serialized_name: 'encoding',
                type: {
                  name: 'Enum',
                  module: 'EncodingCaptureDescription'
                }
              },
              interval_in_seconds: {
                required: false,
                serialized_name: 'intervalInSeconds',
                constraints: {
                  InclusiveMaximum: 900,
                  InclusiveMinimum: 60
                },
                type: {
                  name: 'Number'
                }
              },
              size_limit_in_bytes: {
                required: false,
                serialized_name: 'sizeLimitInBytes',
                constraints: {
                  InclusiveMaximum: 524288000,
                  InclusiveMinimum: 10485760
                },
                type: {
                  name: 'Number'
                }
              },
              destination: {
                required: false,
                serialized_name: 'destination',
                type: {
                  name: 'Composite',
                  class_name: 'Destination'
                }
              }
            }
          }
        }
      end
    end
  end
end
