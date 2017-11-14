# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2015_05_01_preview
  module Models
    #
    # Model object.
    #
    #
    class StorageAccountRegenerateKeyParameters

      include MsRestAzure

      include MsRest::JSONable
      # @return [KeyName] Possible values include: 'key1', 'key2'
      attr_accessor :key_name


      #
      # Mapper for StorageAccountRegenerateKeyParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StorageAccountRegenerateKeyParameters',
          type: {
            name: 'Composite',
            class_name: 'StorageAccountRegenerateKeyParameters',
            model_properties: {
              key_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'keyName',
                type: {
                  name: 'Enum',
                  module: 'KeyName'
                }
              }
            }
          }
        }
      end
    end
  end
end
