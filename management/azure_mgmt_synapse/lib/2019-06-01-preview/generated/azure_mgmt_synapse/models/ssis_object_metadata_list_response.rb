# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Synapse::Mgmt::V2019_06_01_preview
  module Models
    #
    # A list of SSIS object metadata.
    #
    class SsisObjectMetadataListResponse

      include MsRestAzure

      # @return [Array<SsisObjectMetadata>] List of SSIS object metadata.
      attr_accessor :value

      # @return [String] The link to the next page of results, if any remaining
      # results exist.
      attr_accessor :next_link


      #
      # Mapper for SsisObjectMetadataListResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SsisObjectMetadataListResponse',
          type: {
            name: 'Composite',
            class_name: 'SsisObjectMetadataListResponse',
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
                      serialized_name: 'SsisObjectMetadataElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'type',
                        uber_parent: 'SsisObjectMetadata',
                        class_name: 'SsisObjectMetadata'
                      }
                  }
                }
              },
              next_link: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nextLink',
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
