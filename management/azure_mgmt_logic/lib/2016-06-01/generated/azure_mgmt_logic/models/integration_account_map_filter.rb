# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2016_06_01
  module Models
    #
    # The integration account map filter for odata query.
    #
    class IntegrationAccountMapFilter

      include MsRestAzure

      include MsRest::JSONable
      # @return [MapType] The map type of integration account map. Possible
      # values include: 'NotSpecified', 'Xslt'
      attr_accessor :map_type


      #
      # Mapper for IntegrationAccountMapFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IntegrationAccountMapFilter',
          type: {
            name: 'Composite',
            class_name: 'IntegrationAccountMapFilter',
            model_properties: {
              map_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'mapType',
                type: {
                  name: 'Enum',
                  module: 'MapType'
                }
              }
            }
          }
        }
      end
    end
  end
end
