# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2015_06_15
  module Models
    #
    # The instance view of a virtual machine extension handler.
    #
    class VirtualMachineExtensionHandlerInstanceView

      include MsRestAzure

      # @return [String] Specifies the type of the extension; an example is
      # "CustomScriptExtension".
      attr_accessor :type

      # @return [String] Specifies the version of the script handler.
      attr_accessor :type_handler_version

      # @return [InstanceViewStatus] The extension handler status.
      attr_accessor :status


      #
      # Mapper for VirtualMachineExtensionHandlerInstanceView class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineExtensionHandlerInstanceView',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineExtensionHandlerInstanceView',
            model_properties: {
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              type_handler_version: {
                required: false,
                serialized_name: 'typeHandlerVersion',
                type: {
                  name: 'String'
                }
              },
              status: {
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'Composite',
                  class_name: 'InstanceViewStatus'
                }
              }
            }
          }
        }
      end
    end
  end
end
