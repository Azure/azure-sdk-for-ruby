# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # Vpn Client Parameters for package generation
    #
    class VpnClientParameters

      include MsRestAzure

      # @return [ProcessorArchitecture] VPN client Processor Architecture.
      # Possible values are: 'AMD64' and 'X86'. Possible values include:
      # 'Amd64', 'X86'
      attr_accessor :processor_architecture


      #
      # Mapper for VpnClientParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VpnClientParameters',
          type: {
            name: 'Composite',
            class_name: 'VpnClientParameters',
            model_properties: {
              processor_architecture: {
                required: true,
                serialized_name: 'processorArchitecture',
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
