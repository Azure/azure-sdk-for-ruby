# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::OperationalInsights::Mgmt::V2020_08_01
  module Models
    #
    # Schema metadata for search.
    #
    class SearchMetadataSchema

      include MsRestAzure

      # @return [String] The name of the metadata schema.
      attr_accessor :name

      # @return [Integer] The version of the metadata schema.
      attr_accessor :version


      #
      # Mapper for SearchMetadataSchema class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SearchMetadataSchema',
          type: {
            name: 'Composite',
            class_name: 'SearchMetadataSchema',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'version',
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
