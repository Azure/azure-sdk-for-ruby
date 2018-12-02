# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2017_04_01
  module Models
    #
    # A pointer to an Azure Action Group.
    #
    class ActivityLogAlertActionGroup

      include MsRestAzure

      # @return [String] The resourceId of the action group. This cannot be
      # null or empty.
      attr_accessor :action_group_id

      # @return [Hash{String => String}] the dictionary of custom properties to
      # include with the post operation. These data are appended to the webhook
      # payload.
      attr_accessor :webhook_properties


      #
      # Mapper for ActivityLogAlertActionGroup class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ActivityLogAlertActionGroup',
          type: {
            name: 'Composite',
            class_name: 'ActivityLogAlertActionGroup',
            model_properties: {
              action_group_id: {
                required: true,
                serialized_name: 'actionGroupId',
                type: {
                  name: 'String'
                }
              },
              webhook_properties: {
                required: false,
                serialized_name: 'webhookProperties',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
