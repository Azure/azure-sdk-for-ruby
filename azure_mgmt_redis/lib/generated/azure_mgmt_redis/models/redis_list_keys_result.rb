# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Redis
  module Models
    #
    # The response of redis list keys operation.
    #
    class RedisListKeysResult

      include MsRestAzure

      # @return [String] The current primary key that clients can use to
      # authenticate with redis cache.
      attr_accessor :primary_key

      # @return [String] The current secondary key that clients can use to
      # authenticate with redis cache.
      attr_accessor :secondary_key


      #
      # Mapper for RedisListKeysResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RedisListKeysResult',
          type: {
            name: 'Composite',
            class_name: 'RedisListKeysResult',
            model_properties: {
              primary_key: {
                required: false,
                serialized_name: 'primaryKey',
                type: {
                  name: 'String'
                }
              },
              secondary_key: {
                required: false,
                serialized_name: 'secondaryKey',
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
