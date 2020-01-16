# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::TimeSeriesInsights::Mgmt::V2017_02_28_preview
  module Models
    #
    # Properties required to create any resource tracked by Azure Resource
    # Manager.
    #
    class CreateOrUpdateTrackedResourceProperties

      include MsRestAzure

      # @return [String] The location of the resource.
      attr_accessor :location

      # @return [Hash{String => String}] Key-value pairs of additional
      # properties for the resource.
      attr_accessor :tags


      #
      # Mapper for CreateOrUpdateTrackedResourceProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CreateOrUpdateTrackedResourceProperties',
          type: {
            name: 'Composite',
            class_name: 'CreateOrUpdateTrackedResourceProperties',
            model_properties: {
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
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
          }
        }
      end
    end
  end
end
