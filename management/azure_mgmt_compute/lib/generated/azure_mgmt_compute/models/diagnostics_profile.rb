# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Describes a diagnostics profile.
    #
    class DiagnosticsProfile

      include MsRestAzure

      include MsRest::JSONable
      # @return [BootDiagnostics] Boot Diagnostics is a debugging feature which
      # allows the user to view console output and/or a screenshot of the
      # virtual machine from the hypervisor.
      attr_accessor :boot_diagnostics


      #
      # Mapper for DiagnosticsProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DiagnosticsProfile',
          type: {
            name: 'Composite',
            class_name: 'DiagnosticsProfile',
            model_properties: {
              boot_diagnostics: {
                required: false,
                serialized_name: 'bootDiagnostics',
                type: {
                  name: 'Composite',
                  class_name: 'BootDiagnostics'
                }
              }
            }
          }
        }
      end
    end
  end
end
