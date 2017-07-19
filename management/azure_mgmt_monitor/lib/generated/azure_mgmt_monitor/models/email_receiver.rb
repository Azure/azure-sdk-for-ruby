# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Monitor
  module Models
    #
    # An email receiver.
    #
    class EmailReceiver

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The name of the email receiver. Names must be unique
      # across all receivers within an action group.
      attr_accessor :name

      # @return [String] The email address of this receiver.
      attr_accessor :email_address

      # @return [ReceiverStatus] Possible values include: 'NotSpecified',
      # 'Enabled', 'Disabled'
      attr_accessor :status


      #
      # Mapper for EmailReceiver class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EmailReceiver',
          type: {
            name: 'Composite',
            class_name: 'EmailReceiver',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              email_address: {
                required: true,
                serialized_name: 'emailAddress',
                type: {
                  name: 'String'
                }
              },
              status: {
                required: false,
                read_only: true,
                serialized_name: 'status',
                type: {
                  name: 'Enum',
                  module: 'ReceiverStatus'
                }
              }
            }
          }
        }
      end
    end
  end
end
