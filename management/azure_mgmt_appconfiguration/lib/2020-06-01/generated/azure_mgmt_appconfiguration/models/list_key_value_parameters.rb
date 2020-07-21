# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Appconfiguration::Mgmt::V2020_06_01
  module Models
    #
    # The parameters used to list a configuration store key-value
    #
    class ListKeyValueParameters

      include MsRestAzure

      # @return [String] The key to retrieve.
      attr_accessor :key

      # @return [String] The label of the key.
      attr_accessor :label


      #
      # Mapper for ListKeyValueParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ListKeyValueParameters',
          type: {
            name: 'Composite',
            class_name: 'ListKeyValueParameters',
            model_properties: {
              key: {
                client_side_validation: true,
                required: true,
                serialized_name: 'key',
                type: {
                  name: 'String'
                }
              },
              label: {
                client_side_validation: true,
                required: false,
                serialized_name: 'label',
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
