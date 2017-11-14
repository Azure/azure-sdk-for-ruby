# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Onprem disk details data.
    #
    class DiskDetails

      include MsRestAzure

      include MsRest::JSONable
      # @return [Integer] The hard disk max size in MB.
      attr_accessor :max_size_mb

      # @return [String] The type of the volume.
      attr_accessor :vhd_type

      # @return [String] The VHD Id.
      attr_accessor :vhd_id

      # @return [String] The VHD name.
      attr_accessor :vhd_name


      #
      # Mapper for DiskDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DiskDetails',
          type: {
            name: 'Composite',
            class_name: 'DiskDetails',
            model_properties: {
              max_size_mb: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxSizeMB',
                type: {
                  name: 'Number'
                }
              },
              vhd_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vhdType',
                type: {
                  name: 'String'
                }
              },
              vhd_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vhdId',
                type: {
                  name: 'String'
                }
              },
              vhd_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vhdName',
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
