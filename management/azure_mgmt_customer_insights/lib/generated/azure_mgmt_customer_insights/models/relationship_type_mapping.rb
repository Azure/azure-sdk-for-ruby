# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CustomerInsights
  module Models
    #
    # Maps fields in Profile to their corresponding StrongIds in Related
    # Profile.
    #
    class RelationshipTypeMapping

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<RelationshipTypeFieldMapping>] Maps a profile property
      # with the StrongId of related profile. This is an array to support
      # StrongIds that are composite key as well.
      attr_accessor :field_mappings


      #
      # Mapper for RelationshipTypeMapping class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RelationshipTypeMapping',
          type: {
            name: 'Composite',
            class_name: 'RelationshipTypeMapping',
            model_properties: {
              field_mappings: {
                required: true,
                serialized_name: 'fieldMappings',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'RelationshipTypeFieldMappingElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RelationshipTypeFieldMapping'
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
