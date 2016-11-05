# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # Model object.
    #
    class ConnectionResetSharedKey

      include MsRestAzure

      # @return [Integer] The virtual network connection reset shared key
      # length, should between 1 and 128.
      attr_accessor :key_length


      #
      # Mapper for ConnectionResetSharedKey class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ConnectionResetSharedKey',
          type: {
            name: 'Composite',
            class_name: 'ConnectionResetSharedKey',
            model_properties: {
              key_length: {
                required: true,
                serialized_name: 'keyLength',
                constraints: {
                  InclusiveMaximum: 128,
                  InclusiveMinimum: 1
                },
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
