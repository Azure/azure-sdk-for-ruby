# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServerManagement::Mgmt::V2016_07_01_preview
  module Models
    #
    # Collection of parameters for PowerShell tab completion.
    #
    class PowerShellTabCompletionParameters

      include MsRestAzure

      # @return [String] Command to get tab completion for.
      attr_accessor :command


      #
      # Mapper for PowerShellTabCompletionParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PowerShellTabCompletionParameters',
          type: {
            name: 'Composite',
            class_name: 'PowerShellTabCompletionParameters',
            model_properties: {
              command: {
                required: false,
                serialized_name: 'command',
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
