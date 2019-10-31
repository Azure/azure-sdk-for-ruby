# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_04_19
  module Models
    #
    # Output of the task that collects user tables for the given list of
    # databases
    #
    class GetUserTablesSqlSyncTaskOutput

      include MsRestAzure

      # @return [Hash{String => Array<DatabaseTable>}] Mapping from database
      # name to list of source tables
      attr_accessor :databases_to_source_tables

      # @return [Hash{String => Array<DatabaseTable>}] Mapping from database
      # name to list of target tables
      attr_accessor :databases_to_target_tables

      # @return [Hash{String => Array<String>}] Mapping from database name to
      # list of validation errors
      attr_accessor :table_validation_errors

      # @return [Array<ReportableException>] Validation errors
      attr_accessor :validation_errors


      #
      # Mapper for GetUserTablesSqlSyncTaskOutput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GetUserTablesSqlSyncTaskOutput',
          type: {
            name: 'Composite',
            class_name: 'GetUserTablesSqlSyncTaskOutput',
            model_properties: {
              databases_to_source_tables: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'databasesToSourceTables',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ArrayElementType',
                      type: {
                        name: 'Sequence',
                        element: {
                            client_side_validation: true,
                            required: false,
                            serialized_name: 'DatabaseTableElementType',
                            type: {
                              name: 'Composite',
                              class_name: 'DatabaseTable'
                            }
                        }
                      }
                  }
                }
              },
              databases_to_target_tables: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'databasesToTargetTables',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ArrayElementType',
                      type: {
                        name: 'Sequence',
                        element: {
                            client_side_validation: true,
                            required: false,
                            serialized_name: 'DatabaseTableElementType',
                            type: {
                              name: 'Composite',
                              class_name: 'DatabaseTable'
                            }
                        }
                      }
                  }
                }
              },
              table_validation_errors: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'tableValidationErrors',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ArrayElementType',
                      type: {
                        name: 'Sequence',
                        element: {
                            client_side_validation: true,
                            required: false,
                            serialized_name: 'StringElementType',
                            type: {
                              name: 'String'
                            }
                        }
                      }
                  }
                }
              },
              validation_errors: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'validationErrors',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ReportableExceptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ReportableException'
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
