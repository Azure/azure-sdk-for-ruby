# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Relay::Mgmt::V2016_07_01
  module Models
    #
    # Description of a Check Name availability request properties.
    #
    class CheckNameAvailability

      include MsRestAzure

      # @return [String] The Name to check the namespace name availability and
      # The namespace name can contain only letters, numbers, and hyphens. The
      # namespace must start with a letter, and it must end with a letter or
      # number.
      attr_accessor :name


      #
      # Mapper for CheckNameAvailability class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CheckNameAvailability',
          type: {
            name: 'Composite',
            class_name: 'CheckNameAvailability',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
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
