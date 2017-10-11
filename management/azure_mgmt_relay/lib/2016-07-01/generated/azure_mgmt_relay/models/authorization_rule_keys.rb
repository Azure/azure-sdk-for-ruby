# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Relay::Api_2016_07_01
  module Models
    #
    # Namespace/Relay Connection String
    #
    class AuthorizationRuleKeys

      include MsRestAzure

      # @return [String] PrimaryConnectionString of the created Namespace
      # AuthorizationRule.
      attr_accessor :primary_connection_string

      # @return [String] SecondaryConnectionString of the created Namespace
      # AuthorizationRule
      attr_accessor :secondary_connection_string

      # @return [String] A base64-encoded 256-bit primary key for signing and
      # validating the SAS token
      attr_accessor :primary_key

      # @return [String] A base64-encoded 256-bit secondary key for signing and
      # validating the SAS token
      attr_accessor :secondary_key

      # @return [String] A string that describes the authorization rule
      attr_accessor :key_name


      #
      # Mapper for AuthorizationRuleKeys class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AuthorizationRuleKeys',
          type: {
            name: 'Composite',
            class_name: 'AuthorizationRuleKeys',
            model_properties: {
              primary_connection_string: {
                required: false,
                serialized_name: 'primaryConnectionString',
                type: {
                  name: 'String'
                }
              },
              secondary_connection_string: {
                required: false,
                serialized_name: 'secondaryConnectionString',
                type: {
                  name: 'String'
                }
              },
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
              },
              key_name: {
                required: false,
                serialized_name: 'keyName',
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
