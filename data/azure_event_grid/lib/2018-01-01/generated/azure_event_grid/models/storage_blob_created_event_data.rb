# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::V2018_01_01
  module Models
    #
    # Schema of the Data property of an EventGridEvent for an
    # Microsoft.Storage.BlobCreated event.
    #
    class StorageBlobCreatedEventData

      include MsRestAzure

      # @return [String] The name of the API/operation that triggered this
      # event.
      attr_accessor :api

      # @return [String] A request id provided by the client of the storage API
      # operation that triggered this event.
      attr_accessor :client_request_id

      # @return [String] The request id generated by the Storage service for
      # the storage API operation that triggered this event.
      attr_accessor :request_id

      # @return [String] The etag of the object at the time this event was
      # triggered.
      attr_accessor :e_tag

      # @return [String] The content type of the blob. This is the same as what
      # would be returned in the Content-Type header from the blob.
      attr_accessor :content_type

      # @return [Integer] The size of the blob in bytes. This is the same as
      # what would be returned in the Content-Length header from the blob.
      attr_accessor :content_length

      # @return [String] The type of blob.
      attr_accessor :blob_type

      # @return [String] The path to the blob.
      attr_accessor :url

      # @return [String] An opaque string value representing the logical
      # sequence of events for any particular blob name. Users can use standard
      # string comparison to understand the relative sequence of two events on
      # the same blob name.
      attr_accessor :sequencer

      # @return For service use only. Diagnostic data occasionally included by
      # the Azure Storage service. This property should be ignored by event
      # consumers.
      attr_accessor :storage_diagnostics


      #
      # Mapper for StorageBlobCreatedEventData class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'StorageBlobCreatedEventData',
          type: {
            name: 'Composite',
            class_name: 'StorageBlobCreatedEventData',
            model_properties: {
              api: {
                required: false,
                serialized_name: 'api',
                type: {
                  name: 'String'
                }
              },
              client_request_id: {
                required: false,
                serialized_name: 'clientRequestId',
                type: {
                  name: 'String'
                }
              },
              request_id: {
                required: false,
                serialized_name: 'requestId',
                type: {
                  name: 'String'
                }
              },
              e_tag: {
                required: false,
                serialized_name: 'eTag',
                type: {
                  name: 'String'
                }
              },
              content_type: {
                required: false,
                serialized_name: 'contentType',
                type: {
                  name: 'String'
                }
              },
              content_length: {
                required: false,
                serialized_name: 'contentLength',
                type: {
                  name: 'Number'
                }
              },
              blob_type: {
                required: false,
                serialized_name: 'blobType',
                type: {
                  name: 'String'
                }
              },
              url: {
                required: false,
                serialized_name: 'url',
                type: {
                  name: 'String'
                }
              },
              sequencer: {
                required: false,
                serialized_name: 'sequencer',
                type: {
                  name: 'String'
                }
              },
              storage_diagnostics: {
                required: false,
                serialized_name: 'storageDiagnostics',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
