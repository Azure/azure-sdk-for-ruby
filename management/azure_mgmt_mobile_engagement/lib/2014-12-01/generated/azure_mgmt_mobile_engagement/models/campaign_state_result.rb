# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MobileEngagement::Mgmt::V2014_12_01
  module Models
    #
    # Model object.
    #
    #
    class CampaignStateResult < CampaignState

      include MsRestAzure

      include MsRest::JSONable
      # @return [Integer] Campaign identifier.
      attr_accessor :id


      #
      # Mapper for CampaignStateResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CampaignStateResult',
          type: {
            name: 'Composite',
            class_name: 'CampaignStateResult',
            model_properties: {
              state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'state',
                type: {
                  name: 'String'
                }
              },
              id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'id',
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
