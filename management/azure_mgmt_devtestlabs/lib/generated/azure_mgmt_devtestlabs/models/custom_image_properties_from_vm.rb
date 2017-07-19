# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # Properties for creating a custom image from a virtual machine.
    #
    class CustomImagePropertiesFromVm

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The source vm identifier.
      attr_accessor :source_vm_id

      # @return [WindowsOsInfo] The Windows OS information of the VM.
      attr_accessor :windows_os_info

      # @return [LinuxOsInfo] The Linux OS information of the VM.
      attr_accessor :linux_os_info


      #
      # Mapper for CustomImagePropertiesFromVm class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CustomImagePropertiesFromVm',
          type: {
            name: 'Composite',
            class_name: 'CustomImagePropertiesFromVm',
            model_properties: {
              source_vm_id: {
                required: false,
                serialized_name: 'sourceVmId',
                type: {
                  name: 'String'
                }
              },
              windows_os_info: {
                required: false,
                serialized_name: 'windowsOsInfo',
                type: {
                  name: 'Composite',
                  class_name: 'WindowsOsInfo'
                }
              },
              linux_os_info: {
                required: false,
                serialized_name: 'linuxOsInfo',
                type: {
                  name: 'Composite',
                  class_name: 'LinuxOsInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end
