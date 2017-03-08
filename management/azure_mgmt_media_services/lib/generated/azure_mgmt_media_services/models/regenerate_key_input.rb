# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MediaServices
  module Models
    #
    # The request body for a RegenerateKey API.
    #
    class RegenerateKeyInput

      include MsRestAzure

      # @return [KeyType] The keyType indicating which key you want to
      # regenerate, Primary or Secondary. Possible values include: 'Primary',
      # 'Secondary'
      attr_accessor :key_type


      #
      # Mapper for RegenerateKeyInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RegenerateKeyInput',
          type: {
            name: 'Composite',
            class_name: 'RegenerateKeyInput',
            model_properties: {
              key_type: {
                required: true,
                serialized_name: 'keyType',
                type: {
                  name: 'Enum',
                  module: 'KeyType'
                }
              }
            }
          }
        }
      end
    end
  end
end
