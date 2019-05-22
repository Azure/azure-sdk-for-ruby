# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerInstance::Mgmt::V2018_06_01
  module Models
    #
    # The container execution command, for liveness or readiness probe
    #
    class ContainerExec

      include MsRestAzure

      # @return [Array<String>] The commands to execute within the container.
      attr_accessor :command


      #
      # Mapper for ContainerExec class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ContainerExec',
          type: {
            name: 'Composite',
            class_name: 'ContainerExec',
            model_properties: {
              command: {
                required: false,
                serialized_name: 'command',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
