# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2018_02_01
  module Models
    #
    # Publishing options for requested profile.
    #
    class CsmPublishingProfileOptions

      include MsRestAzure

      # @return [PublishingProfileFormat] Name of the format. Valid values are:
      # FileZilla3
      # WebDeploy -- default
      # Ftp. Possible values include: 'FileZilla3', 'WebDeploy', 'Ftp'
      attr_accessor :format

      # @return [Boolean] Include the DisasterRecover endpoint if true
      attr_accessor :include_disaster_recovery_endpoints


      #
      # Mapper for CsmPublishingProfileOptions class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CsmPublishingProfileOptions',
          type: {
            name: 'Composite',
            class_name: 'CsmPublishingProfileOptions',
            model_properties: {
              format: {
                client_side_validation: true,
                required: false,
                serialized_name: 'format',
                type: {
                  name: 'String'
                }
              },
              include_disaster_recovery_endpoints: {
                client_side_validation: true,
                required: false,
                serialized_name: 'includeDisasterRecoveryEndpoints',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
