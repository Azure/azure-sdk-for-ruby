# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # The response to a list recoverable databases request
    #
    class RecoverableDatabaseListResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<RecoverableDatabase>] A list of recoverable databases
      attr_accessor :value


      #
      # Mapper for RecoverableDatabaseListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RecoverableDatabaseListResult',
          type: {
            name: 'Composite',
            class_name: 'RecoverableDatabaseListResult',
            model_properties: {
              value: {
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'RecoverableDatabaseElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RecoverableDatabase'
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
