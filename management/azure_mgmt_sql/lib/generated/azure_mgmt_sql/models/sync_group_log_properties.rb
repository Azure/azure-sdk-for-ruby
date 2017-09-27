# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # Properties of an Azure SQL Database sync group log.
    #
    class SyncGroupLogProperties

      include MsRestAzure

      include MsRest::JSONable
      # @return [DateTime] Timestamp of the sync group log.
      attr_accessor :timestamp

      # @return [SyncGroupLogType] Type of the sync group log. Possible values
      # include: 'All', 'Error', 'Warning', 'Success'
      attr_accessor :type

      # @return [String] Source of the sync group log.
      attr_accessor :source

      # @return [String] Details of the sync group log.
      attr_accessor :details

      # @return TracingId of the sync group log.
      attr_accessor :tracing_id

      # @return [String] OperationStatus of the sync group log.
      attr_accessor :operation_status


      #
      # Mapper for SyncGroupLogProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SyncGroupLogProperties',
          type: {
            name: 'Composite',
            class_name: 'SyncGroupLogProperties',
            model_properties: {
              timestamp: {
                required: false,
                read_only: true,
                serialized_name: 'timestamp',
                type: {
                  name: 'DateTime'
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
              source: {
                required: false,
                read_only: true,
                serialized_name: 'source',
                type: {
                  name: 'String'
                }
              },
              details: {
                required: false,
                read_only: true,
                serialized_name: 'details',
                type: {
                  name: 'String'
                }
              },
              tracing_id: {
                required: false,
                read_only: true,
                serialized_name: 'tracingId',
                type: {
                  name: 'String'
                }
              },
              operation_status: {
                required: false,
                read_only: true,
                serialized_name: 'operationStatus',
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
