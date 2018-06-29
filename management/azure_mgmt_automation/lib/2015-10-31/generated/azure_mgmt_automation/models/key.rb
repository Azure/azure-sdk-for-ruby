# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  module Models
    #
    # Automation key which is used to register a DSC Node
    #
    class Key

      include MsRestAzure

      # @return [AutomationKeyName] Automation key name. Possible values
      # include: 'primary', 'secondary'
      attr_accessor :key_name

      # @return [AutomationKeyPermissions] Automation key permissions. Possible
      # values include: 'Full'
      attr_accessor :permissions

      # @return [String] Value of the Automation Key used for registration.
      attr_accessor :value


      #
      # Mapper for Key class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Key',
          type: {
            name: 'Composite',
            class_name: 'Key',
            model_properties: {
              key_name: {
                required: false,
                serialized_name: 'keyName',
                type: {
                  name: 'String'
                }
              },
              permissions: {
                required: false,
                serialized_name: 'permissions',
                type: {
                  name: 'String'
                }
              },
              value: {
                required: false,
                serialized_name: 'value',
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