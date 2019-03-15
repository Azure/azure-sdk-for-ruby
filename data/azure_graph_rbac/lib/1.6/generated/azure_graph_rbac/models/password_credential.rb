# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::GraphRbac::V1_6
  module Models
    #
    # Active Directory Password Credential information.
    #
    class PasswordCredential

      include MsRestAzure

      # @return Unmatched properties from the message are deserialized this
      # collection
      attr_accessor :additional_properties

      # @return [DateTime] Start date.
      attr_accessor :start_date

      # @return [DateTime] End date.
      attr_accessor :end_date

      # @return [String] Key ID.
      attr_accessor :key_id

      # @return [String] Key value.
      attr_accessor :value

      # @return [Array<Integer>] Custom Key Identifier
      attr_accessor :custom_key_identifier


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
              additional_properties: {
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
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
              },
              custom_key_identifier: {
                required: false,
                serialized_name: 'customKeyIdentifier',
                type: {
                  name: 'ByteArray'
                }
              }
            }
          }
        }
      end
    end
  end
end
