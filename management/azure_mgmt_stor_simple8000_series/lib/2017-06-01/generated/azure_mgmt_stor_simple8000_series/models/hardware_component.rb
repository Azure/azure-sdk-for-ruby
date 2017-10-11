# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StorSimple8000Series::Api_2017_06_01
  module Models
    #
    # The hardware component.
    #
    class HardwareComponent

      include MsRestAzure

      # @return [String] The component ID.
      attr_accessor :component_id

      # @return [String] The display name of the hardware component.
      attr_accessor :display_name

      # @return [HardwareComponentStatus] The status of the hardware component.
      # Possible values include: 'Unknown', 'NotPresent', 'PoweredOff', 'Ok',
      # 'Recovering', 'Warning', 'Failure'
      attr_accessor :status

      # @return [String] The display name of the status of hardware component.
      attr_accessor :status_display_name


      #
      # Mapper for HardwareComponent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'HardwareComponent',
          type: {
            name: 'Composite',
            class_name: 'HardwareComponent',
            model_properties: {
              component_id: {
                required: true,
                serialized_name: 'componentId',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                required: true,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              status: {
                required: true,
                serialized_name: 'status',
                type: {
                  name: 'Enum',
                  module: 'HardwareComponentStatus'
                }
              },
              status_display_name: {
                required: true,
                serialized_name: 'statusDisplayName',
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
