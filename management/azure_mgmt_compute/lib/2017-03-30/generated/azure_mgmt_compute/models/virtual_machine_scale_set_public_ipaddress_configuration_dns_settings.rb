# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute::Api_2017_03_30
  module Models
    #
    # Describes a virtual machines scale sets network configuration's DNS
    # settings.
    #
    class VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings

      include MsRestAzure

      # @return [String] The Domain name label.The concatenation of the domain
      # name label and vm index will be the domain name labels of the
      # PublicIPAddress resources that will be created
      attr_accessor :domain_name_label


      #
      # Mapper for
      # VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings class as
      # Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings',
            model_properties: {
              domain_name_label: {
                required: true,
                serialized_name: 'domainNameLabel',
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
