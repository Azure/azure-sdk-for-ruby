# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Appconfiguration::Mgmt::V2020_06_01
  module Models
    #
    # The parameters used to regenerate an API key.
    #
    class RegenerateKeyParameters

      include MsRestAzure

      # @return [String] The id of the key to regenerate.
      attr_accessor :id


      #
      # Mapper for RegenerateKeyParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RegenerateKeyParameters',
          type: {
            name: 'Composite',
            class_name: 'RegenerateKeyParameters',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
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
