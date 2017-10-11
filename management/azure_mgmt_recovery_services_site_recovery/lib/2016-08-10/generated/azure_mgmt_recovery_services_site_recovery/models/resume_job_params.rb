# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10
  module Models
    #
    # Resume job params.
    #
    class ResumeJobParams

      include MsRestAzure

      # @return [ResumeJobParamsProperties] Resume job properties.
      attr_accessor :properties


      #
      # Mapper for ResumeJobParams class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ResumeJobParams',
          type: {
            name: 'Composite',
            class_name: 'ResumeJobParams',
            model_properties: {
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'ResumeJobParamsProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
