# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL::Api_2015_05_01_preview
  module Models
    #
    # Properties of sync group schema.
    #
    class SyncGroupSchema

      include MsRestAzure

      # @return [Array<SyncGroupSchemaTable>] List of tables in sync group
      # schema.
      attr_accessor :tables

      # @return [String] Name of master sync member where the schema is from.
      attr_accessor :master_sync_member_name


      #
      # Mapper for SyncGroupSchema class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SyncGroupSchema',
          type: {
            name: 'Composite',
            class_name: 'SyncGroupSchema',
            model_properties: {
              tables: {
                required: false,
                serialized_name: 'tables',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SyncGroupSchemaTableElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SyncGroupSchemaTable'
                      }
                  }
                }
              },
              master_sync_member_name: {
                required: false,
                serialized_name: 'masterSyncMemberName',
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
