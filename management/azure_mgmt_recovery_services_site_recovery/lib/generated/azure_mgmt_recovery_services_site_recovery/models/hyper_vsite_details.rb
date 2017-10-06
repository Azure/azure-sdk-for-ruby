# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # HyperVSite fabric specific details.
    #
    class HyperVSiteDetails < FabricSpecificDetails

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @instanceType = "HyperVSite"
      end

      attr_accessor :instanceType


      #
      # Mapper for HyperVSiteDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'HyperVSite',
          type: {
            name: 'Composite',
            class_name: 'HyperVSiteDetails',
            model_properties: {
              instanceType: {
                required: true,
                serialized_name: 'instanceType',
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
