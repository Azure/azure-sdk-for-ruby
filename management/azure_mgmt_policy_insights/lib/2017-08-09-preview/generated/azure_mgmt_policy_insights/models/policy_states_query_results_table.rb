# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::PolicyInsights::Mgmt::V2017_08_09_preview
  module Models
    #
    # Query results table.
    #
    class PolicyStatesQueryResultsTable

      include MsRestAzure

      # @return [PolicyStatesQueryResultsTableMetadata] Metadata about the
      # query results.
      attr_accessor :metadata

      # @return [PolicyStatesQueryResultsTableColumns] List of columns included
      # in query results.
      attr_accessor :columns

      # @return Query result rows, each representing a policy state record.
      attr_accessor :rows


      #
      # Mapper for PolicyStatesQueryResultsTable class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PolicyStatesQueryResultsTable',
          type: {
            name: 'Composite',
            class_name: 'PolicyStatesQueryResultsTable',
            model_properties: {
              metadata: {
                client_side_validation: true,
                required: false,
                serialized_name: 'metadata',
                type: {
                  name: 'Composite',
                  class_name: 'PolicyStatesQueryResultsTableMetadata'
                }
              },
              columns: {
                client_side_validation: true,
                required: false,
                serialized_name: 'columns',
                type: {
                  name: 'Composite',
                  class_name: 'PolicyStatesQueryResultsTableColumns'
                }
              },
              rows: {
                client_side_validation: true,
                required: false,
                serialized_name: 'rows',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ArrayElementType',
                      type: {
                        name: 'Sequence',
                        element: {
                            client_side_validation: true,
                            required: false,
                            serialized_name: 'ObjectElementType',
                            type: {
                              name: 'Object'
                            }
                        }
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
