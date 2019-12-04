# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # A base type for the list of health state chunks found in the cluster. It
    # contains the total number of health states that match the input filters.
    #
    class EntityHealthStateChunkList

      include MsRestAzure

      # @return [Integer] Total number of entity health state objects that
      # match the specified filters from the cluster health chunk query
      # description.
      attr_accessor :total_count


      #
      # Mapper for EntityHealthStateChunkList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EntityHealthStateChunkList',
          type: {
            name: 'Composite',
            class_name: 'EntityHealthStateChunkList',
            model_properties: {
              total_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'TotalCount',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
