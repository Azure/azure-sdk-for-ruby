# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_07_01
  module Models
    #
    # A Streaming Locator resource
    #
    class StreamingLocator < ProxyResource

      include MsRestAzure

      # @return [String] Asset Name
      attr_accessor :asset_name

      # @return [DateTime] The creation time of the Streaming Locator.
      attr_accessor :created

      # @return [DateTime] The start time of the Streaming Locator.
      attr_accessor :start_time

      # @return [DateTime] The end time of the Streaming Locator.
      attr_accessor :end_time

      # @return The StreamingLocatorId of the Streaming Locator.
      attr_accessor :streaming_locator_id

      # @return [String] Name of the Streaming Policy used by this Streaming
      # Locator. Either specify the name of Streaming Policy you created or use
      # one of the predefined Streaming Policies. The predefined Streaming
      # Policies available are: 'Predefined_DownloadOnly',
      # 'Predefined_ClearStreamingOnly',
      # 'Predefined_DownloadAndClearStreaming', 'Predefined_ClearKey',
      # 'Predefined_MultiDrmCencStreaming' and 'Predefined_MultiDrmStreaming'
      attr_accessor :streaming_policy_name

      # @return [String] Name of the default ContentKeyPolicy used by this
      # Streaming Locator.
      attr_accessor :default_content_key_policy_name

      # @return [Array<StreamingLocatorContentKey>] The ContentKeys used by
      # this Streaming Locator.
      attr_accessor :content_keys

      # @return [String] Alternative Media ID of this Streaming Locator
      attr_accessor :alternative_media_id


      #
      # Mapper for StreamingLocator class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'StreamingLocator',
          type: {
            name: 'Composite',
            class_name: 'StreamingLocator',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              asset_name: {
                required: true,
                serialized_name: 'properties.assetName',
                type: {
                  name: 'String'
                }
              },
              created: {
                required: false,
                read_only: true,
                serialized_name: 'properties.created',
                type: {
                  name: 'DateTime'
                }
              },
              start_time: {
                required: false,
                serialized_name: 'properties.startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                required: false,
                serialized_name: 'properties.endTime',
                type: {
                  name: 'DateTime'
                }
              },
              streaming_locator_id: {
                required: false,
                serialized_name: 'properties.streamingLocatorId',
                type: {
                  name: 'String'
                }
              },
              streaming_policy_name: {
                required: true,
                serialized_name: 'properties.streamingPolicyName',
                type: {
                  name: 'String'
                }
              },
              default_content_key_policy_name: {
                required: false,
                serialized_name: 'properties.defaultContentKeyPolicyName',
                type: {
                  name: 'String'
                }
              },
              content_keys: {
                required: false,
                serialized_name: 'properties.contentKeys',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StreamingLocatorContentKeyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'StreamingLocatorContentKey'
                      }
                  }
                }
              },
              alternative_media_id: {
                required: false,
                serialized_name: 'properties.alternativeMediaId',
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