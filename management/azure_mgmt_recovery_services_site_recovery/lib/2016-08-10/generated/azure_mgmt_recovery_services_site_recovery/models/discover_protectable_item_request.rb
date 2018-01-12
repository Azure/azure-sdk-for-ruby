# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Request to add a physical machine as a protectable item in a container.
    #
    class DiscoverProtectableItemRequest

      include MsRestAzure

      # @return [DiscoverProtectableItemRequestProperties] The properties of a
      # discover protectable item request.
      attr_accessor :properties


      #
      # Mapper for DiscoverProtectableItemRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DiscoverProtectableItemRequest',
          type: {
            name: 'Composite',
            class_name: 'DiscoverProtectableItemRequest',
            model_properties: {
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'DiscoverProtectableItemRequestProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
