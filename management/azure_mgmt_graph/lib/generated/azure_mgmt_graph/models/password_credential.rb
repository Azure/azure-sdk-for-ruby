# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Graph
  module Models
    #
    # Active Directory Password Credential information.
    #
    class PasswordCredential

      include MsRestAzure

      # @return [DateTime] Start date.
      attr_accessor :start_date

      # @return [DateTime] End date.
      attr_accessor :end_date

      # @return [String] Key ID.
      attr_accessor :key_id

      # @return [String] Key value.
      attr_accessor :value


      #
      # Mapper for PasswordCredential class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PasswordCredential',
          type: {
            name: 'Composite',
            class_name: 'PasswordCredential',
            model_properties: {
              start_date: {
                required: false,
                serialized_name: 'startDate',
                type: {
                  name: 'DateTime'
                }
              },
              end_date: {
                required: false,
                serialized_name: 'endDate',
                type: {
                  name: 'DateTime'
                }
              },
              key_id: {
                required: false,
                serialized_name: 'keyId',
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
