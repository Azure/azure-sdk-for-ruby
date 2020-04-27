# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # A copy activity Parquet source.
    #
    class ParquetSource < CopySource

      include MsRestAzure


      def initialize
        @type = "ParquetSource"
      end

      attr_accessor :type

      # @return [StoreReadSettings] Parquet store settings.
      attr_accessor :store_settings

      # @return [Array<AdditionalColumns>] Specifies the additional columns to
      # be added to source data. Type: array of objects (or Expression with
      # resultType array of objects).
      attr_accessor :additional_columns


      #
      # Mapper for ParquetSource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ParquetSource',
          type: {
            name: 'Composite',
            class_name: 'ParquetSource',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              source_retry_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceRetryCount',
                type: {
                  name: 'Object'
                }
              },
              source_retry_wait: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceRetryWait',
                type: {
                  name: 'Object'
                }
              },
              max_concurrent_connections: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxConcurrentConnections',
                type: {
                  name: 'Object'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              store_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'storeSettings',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'type',
                  uber_parent: 'StoreReadSettings',
                  class_name: 'StoreReadSettings'
                }
              },
              additional_columns: {
                client_side_validation: true,
                required: false,
                serialized_name: 'additionalColumns',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AdditionalColumnsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AdditionalColumns'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
