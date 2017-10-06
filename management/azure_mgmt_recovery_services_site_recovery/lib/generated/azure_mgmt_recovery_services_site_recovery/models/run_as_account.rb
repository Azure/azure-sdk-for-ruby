# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # CS Accounts Details.
    #
    class RunAsAccount

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The CS RunAs account Id.
      attr_accessor :account_id

      # @return [String] The CS RunAs account name.
      attr_accessor :account_name


      #
      # Mapper for RunAsAccount class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RunAsAccount',
          type: {
            name: 'Composite',
            class_name: 'RunAsAccount',
            model_properties: {
              account_id: {
                required: false,
                serialized_name: 'accountId',
                type: {
                  name: 'String'
                }
              },
              account_name: {
                required: false,
                serialized_name: 'accountName',
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
