# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Specifies the Linux operating system settings on the virtual machine.
    # <br><br>For a list of supported Linux distributions, see [Linux on
    # Azure-Endorsed
    # Distributions](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-linux-endorsed-distros?toc=%2fazure%2fvirtual-machines%2flinux%2ftoc.json)
    # <br><br> For running non-endorsed distributions, see [Information for
    # Non-Endorsed
    # Distributions](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-linux-create-upload-generic?toc=%2fazure%2fvirtual-machines%2flinux%2ftoc.json).
    #
    class LinuxConfiguration

      include MsRestAzure

      # @return [Boolean] Specifies whether password authentication should be
      # disabled.
      attr_accessor :disable_password_authentication

      # @return [SshConfiguration] Specifies the ssh key configuration for a
      # Linux OS.
      attr_accessor :ssh


      #
      # Mapper for LinuxConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'LinuxConfiguration',
          type: {
            name: 'Composite',
            class_name: 'LinuxConfiguration',
            model_properties: {
              disable_password_authentication: {
                required: false,
                serialized_name: 'disablePasswordAuthentication',
                type: {
                  name: 'Boolean'
                }
              },
              ssh: {
                required: false,
                serialized_name: 'ssh',
                type: {
                  name: 'Composite',
                  class_name: 'SshConfiguration'
                }
              }
            }
          }
        }
      end
    end
  end
end
