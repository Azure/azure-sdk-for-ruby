# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServices
  module Models
    #
    # The name of usage.
    #
    class NameInfo

      include MsRestAzure

      # @return [String] Value of usage.
      attr_accessor :value

      # @return [String] Localized value of usage.
      attr_accessor :localized_value


      #
      # Mapper for NameInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'NameInfo',
          type: {
            name: 'Composite',
            class_name: 'NameInfo',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'String'
                }
              },
              localized_value: {
                required: false,
                serialized_name: 'localizedValue',
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
