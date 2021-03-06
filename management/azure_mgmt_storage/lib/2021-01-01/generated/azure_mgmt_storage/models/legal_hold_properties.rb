# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2021_01_01
  module Models
    #
    # The LegalHold property of a blob container.
    #
    class LegalHoldProperties

      include MsRestAzure

      # @return [Boolean] The hasLegalHold public property is set to true by
      # SRP if there are at least one existing tag. The hasLegalHold public
      # property is set to false by SRP if all existing legal hold tags are
      # cleared out. There can be a maximum of 1000 blob containers with
      # hasLegalHold=true for a given account.
      attr_accessor :has_legal_hold

      # @return [Array<TagProperty>] The list of LegalHold tags of a blob
      # container.
      attr_accessor :tags


      #
      # Mapper for LegalHoldProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LegalHoldProperties',
          type: {
            name: 'Composite',
            class_name: 'LegalHoldProperties',
            model_properties: {
              has_legal_hold: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'hasLegalHold',
                type: {
                  name: 'Boolean'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'TagPropertyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TagProperty'
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
