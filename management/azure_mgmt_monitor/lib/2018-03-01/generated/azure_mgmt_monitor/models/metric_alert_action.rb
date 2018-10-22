# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2018_03_01
  module Models
    #
    # An alert action.
    #
    class MetricAlertAction

      include MsRestAzure

      # @return [String] the id of the action group to use.
      attr_accessor :action_group_id

      # @return [Hash{String => String}] The properties of a webhook object.
      attr_accessor :webhook_properties


      #
      # Mapper for MetricAlertAction class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MetricAlertAction',
          type: {
            name: 'Composite',
            class_name: 'MetricAlertAction',
            model_properties: {
              action_group_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'actionGroupId',
                type: {
                  name: 'String'
                }
              },
              webhook_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'webhookProperties',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
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
