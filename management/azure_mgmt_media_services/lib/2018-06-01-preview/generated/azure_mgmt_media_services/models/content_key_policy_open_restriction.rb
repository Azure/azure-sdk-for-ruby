# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_06_01_preview
  module Models
    #
    # Represents an open restriction. License or key will be delivered on every
    # request.
    #
    class ContentKeyPolicyOpenRestriction < ContentKeyPolicyRestriction

      include MsRestAzure


      def initialize
        @odatatype = "#Microsoft.Media.ContentKeyPolicyOpenRestriction"
      end

      attr_accessor :odatatype


      #
      # Mapper for ContentKeyPolicyOpenRestriction class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: '#Microsoft.Media.ContentKeyPolicyOpenRestriction',
          type: {
            name: 'Composite',
            class_name: 'ContentKeyPolicyOpenRestriction',
            model_properties: {
              odatatype: {
                client_side_validation: true,
                required: true,
                serialized_name: '@odata\\.type',
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
