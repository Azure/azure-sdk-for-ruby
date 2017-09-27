# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # Properties of the table in the database full schema.
    #
    class SyncFullSchemaTable

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<SyncFullSchemaTableColumn>] List of columns in the table
      # of database full schema.
      attr_accessor :columns

      # @return [String] Error id of the table.
      attr_accessor :error_id

      # @return [Boolean] If there is error in the table.
      attr_accessor :has_error

      # @return [String] Name of the table.
      attr_accessor :name

      # @return [String] Quoted name of the table.
      attr_accessor :quoted_name


      #
      # Mapper for SyncFullSchemaTable class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SyncFullSchemaTable',
          type: {
            name: 'Composite',
            class_name: 'SyncFullSchemaTable',
            model_properties: {
              columns: {
                required: false,
                read_only: true,
                serialized_name: 'columns',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SyncFullSchemaTableColumnElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SyncFullSchemaTableColumn'
                      }
                  }
                }
              },
              error_id: {
                required: false,
                read_only: true,
                serialized_name: 'errorId',
                type: {
                  name: 'String'
                }
              },
              has_error: {
                required: false,
                read_only: true,
                serialized_name: 'hasError',
                type: {
                  name: 'Boolean'
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
              quoted_name: {
                required: false,
                read_only: true,
                serialized_name: 'quotedName',
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
