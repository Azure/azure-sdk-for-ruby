# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_06_01_preview
  module Models
    #
    # The IP access control.
    #
    class IPAccessControl

      include MsRestAzure

      # @return [Array<IPRange>] The IP allow list.
      attr_accessor :allow


      #
      # Mapper for IPAccessControl class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IPAccessControl',
          type: {
            name: 'Composite',
            class_name: 'IPAccessControl',
            model_properties: {
              allow: {
                client_side_validation: true,
                required: false,
                serialized_name: 'allow',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'IPRangeElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'IPRange'
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
