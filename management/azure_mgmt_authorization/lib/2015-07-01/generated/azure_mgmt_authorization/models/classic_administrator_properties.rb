# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Authorization::Api_2015_07_01
  module Models
    #
    # Classic Administrator properties.
    #
    class ClassicAdministratorProperties

      include MsRestAzure

      # @return [String] The email address of the administrator.
      attr_accessor :email_address

      # @return [String] The role of the administrator.
      attr_accessor :role


      #
      # Mapper for ClassicAdministratorProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ClassicAdministratorProperties',
          type: {
            name: 'Composite',
            class_name: 'ClassicAdministratorProperties',
            model_properties: {
              email_address: {
                required: false,
                serialized_name: 'emailAddress',
                type: {
                  name: 'String'
                }
              },
              role: {
                required: false,
                serialized_name: 'role',
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
