# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Dns::Mgmt::V2018_03_01_preview
  module Models
    #
    # An NS record.
    #
    class NsRecord

      include MsRestAzure

      # @return [String] The name server name for this NS record.
      attr_accessor :nsdname


      #
      # Mapper for NsRecord class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NsRecord',
          type: {
            name: 'Composite',
            class_name: 'NsRecord',
            model_properties: {
              nsdname: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nsdname',
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
