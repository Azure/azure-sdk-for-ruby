# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerInstance::Mgmt::V2018_06_01
  module Models
    #
    # The size of the terminal.
    #
    class ContainerExecRequestTerminalSize

      include MsRestAzure

      # @return [Integer] The row size of the terminal
      attr_accessor :rows

      # @return [Integer] The column size of the terminal
      attr_accessor :cols


      #
      # Mapper for ContainerExecRequestTerminalSize class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ContainerExecRequest_terminalSize',
          type: {
            name: 'Composite',
            class_name: 'ContainerExecRequestTerminalSize',
            model_properties: {
              rows: {
                required: false,
                serialized_name: 'rows',
                type: {
                  name: 'Number'
                }
              },
              cols: {
                required: false,
                serialized_name: 'cols',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
