# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # Details of the OS Disk.
    #
    class OSDiskDetails

      include MsRestAzure

      # @return [String] The id of the disk containing the OS.
      attr_accessor :os_vhd_id

      # @return [String] The type of the OS on the VM.
      attr_accessor :os_type

      # @return [String] The OS disk VHD name.
      attr_accessor :vhd_name


      #
      # Mapper for OSDiskDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'OSDiskDetails',
          type: {
            name: 'Composite',
            class_name: 'OSDiskDetails',
            model_properties: {
              os_vhd_id: {
                required: false,
                serialized_name: 'osVhdId',
                type: {
                  name: 'String'
                }
              },
              os_type: {
                required: false,
                serialized_name: 'osType',
                type: {
                  name: 'String'
                }
              },
              vhd_name: {
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
