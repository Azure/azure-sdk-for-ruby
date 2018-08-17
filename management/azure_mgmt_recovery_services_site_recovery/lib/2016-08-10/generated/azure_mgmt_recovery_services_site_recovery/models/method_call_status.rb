# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Reports method status where exception was raised.
    #
    class MethodCallStatus

      include MsRestAzure

      # @return [String] Gets a value indicating whether called method was
      # virtual
      attr_accessor :is_virtual

      # @return [Array<String>] Gets parameter list passed to method.
      attr_accessor :parameters

      # @return [String] Gets a value indicating whether method container
      # generic params.
      attr_accessor :contains_generic_parameters


      #
      # Mapper for MethodCallStatus class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MethodCallStatus',
          type: {
            name: 'Composite',
            class_name: 'MethodCallStatus',
            model_properties: {
              is_virtual: {
                required: false,
                serialized_name: 'isVirtual',
                type: {
                  name: 'String'
                }
              },
              parameters: {
                required: false,
                serialized_name: 'parameters',
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
              },
              contains_generic_parameters: {
                required: false,
                serialized_name: 'containsGenericParameters',
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
