# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::OperationalInsights::Mgmt::V2020_03_01_preview
  module Models
    #
    # Data collector log tables collection, all tables are scoped to the
    # specified workspace.
    #
    class DataCollectorLogsListResult

      include MsRestAzure

      # @return [Array<DataCollectorLog>] data collector log collection.
      attr_accessor :value


      #
      # Mapper for DataCollectorLogsListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DataCollectorLogsListResult',
          type: {
            name: 'Composite',
            class_name: 'DataCollectorLogsListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DataCollectorLogElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DataCollectorLog'
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
