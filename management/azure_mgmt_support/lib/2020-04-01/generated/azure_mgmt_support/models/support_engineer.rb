# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Support::Mgmt::V2020_04_01
  module Models
    #
    # Support engineer information.
    #
    class SupportEngineer

      include MsRestAzure

      # @return [String] Email address of the Azure Support engineer assigned
      # to the support ticket.
      attr_accessor :email_address


      #
      # Mapper for SupportEngineer class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SupportEngineer',
          type: {
            name: 'Composite',
            class_name: 'SupportEngineer',
            model_properties: {
              email_address: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'emailAddress',
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
