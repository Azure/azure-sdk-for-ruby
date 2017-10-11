# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Dns::Api_2016_04_01
  module Models
    #
    # An A record.
    #
    class ARecord

      include MsRestAzure

      # @return [String] The IPv4 address of this A record.
      attr_accessor :ipv4address


      #
      # Mapper for ARecord class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ARecord',
          type: {
            name: 'Composite',
            class_name: 'ARecord',
            model_properties: {
              ipv4address: {
                required: false,
                serialized_name: 'ipv4Address',
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
