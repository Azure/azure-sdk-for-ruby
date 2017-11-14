# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StreamAnalytics::Mgmt::V2016_03_01
  module Models
    #
    # A transformation object, containing all information associated with the
    # named transformation. All transformations are contained under a streaming
    # job.
    #
    class Transformation < SubResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [Integer] Specifies the number of streaming units that the
      # streaming job uses.
      attr_accessor :streaming_units

      # @return [String] Specifies the query that will be run in the streaming
      # job. You can learn more about the Stream Analytics Query Language
      # (SAQL) here: https://msdn.microsoft.com/library/azure/dn834998 .
      # Required on PUT (CreateOrReplace) requests.
      attr_accessor :query

      # @return [String] The current entity tag for the transformation. This is
      # an opaque string. You can use it to detect whether the resource has
      # changed between requests. You can also use it in the If-Match or
      # If-None-Match headers for write operations for optimistic concurrency.
      attr_accessor :etag


      #
      # Mapper for Transformation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Transformation',
          type: {
            name: 'Composite',
            class_name: 'Transformation',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              streaming_units: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.streamingUnits',
                type: {
                  name: 'Number'
                }
              },
              query: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.query',
                type: {
                  name: 'String'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.etag',
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
