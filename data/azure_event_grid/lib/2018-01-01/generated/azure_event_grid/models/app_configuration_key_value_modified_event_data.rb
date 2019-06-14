# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::V2018_01_01
  module Models
    #
    # Schema of the Data property of an EventGridEvent for an
    # Microsoft.AppConfiguration.KeyValueModified event.
    #
    class AppConfigurationKeyValueModifiedEventData

      include MsRestAzure

      # @return [String] The key used to identify the key-value that was
      # modified.
      attr_accessor :key

      # @return [String] The label, if any, used to identify the key-value that
      # was modified.
      attr_accessor :label

      # @return [String] The etag representing the new state of the key-value.
      attr_accessor :etag


      #
      # Mapper for AppConfigurationKeyValueModifiedEventData class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AppConfigurationKeyValueModifiedEventData',
          type: {
            name: 'Composite',
            class_name: 'AppConfigurationKeyValueModifiedEventData',
            model_properties: {
              key: {
                required: false,
                serialized_name: 'key',
                type: {
                  name: 'String'
                }
              },
              label: {
                required: false,
                serialized_name: 'label',
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
              }
            }
          }
        }
      end
    end
  end
end
