# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2017_05_01
  module Models
    #
    # Parameters supplied to the RegenerateKey operation.
    #
    class BatchAccountRegenerateKeyParameters

      include MsRestAzure

      include MsRest::JSONable
      # @return [AccountKeyType] The type of account key to regenerate.
      # Possible values include: 'Primary', 'Secondary'
      attr_accessor :key_name


      #
      # Mapper for BatchAccountRegenerateKeyParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BatchAccountRegenerateKeyParameters',
          type: {
            name: 'Composite',
            class_name: 'BatchAccountRegenerateKeyParameters',
            model_properties: {
              key_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'keyName',
                type: {
                  name: 'Enum',
                  module: 'AccountKeyType'
                }
              }
            }
          }
        }
      end
    end
  end
end
