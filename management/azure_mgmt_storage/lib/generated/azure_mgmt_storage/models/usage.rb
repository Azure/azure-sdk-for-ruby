# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Storage
  module Models
    #
    # Describes Storage Resource Usage.
    #
    class Usage

      include MsRestAzure

      include MsRest::JSONable
      # @return [UsageUnit] Gets the unit of measurement. Possible values
      # include: 'Count', 'Bytes', 'Seconds', 'Percent', 'CountsPerSecond',
      # 'BytesPerSecond'
      attr_accessor :unit

      # @return [Integer] Gets the current count of the allocated resources in
      # the subscription.
      attr_accessor :current_value

      # @return [Integer] Gets the maximum count of the resources that can be
      # allocated in the subscription.
      attr_accessor :limit

      # @return [UsageName] Gets the name of the type of usage.
      attr_accessor :name


      #
      # Mapper for Usage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Usage',
          type: {
            name: 'Composite',
            class_name: 'Usage',
            model_properties: {
              unit: {
                required: false,
                read_only: true,
                serialized_name: 'unit',
                type: {
                  name: 'Enum',
                  module: 'UsageUnit'
                }
              },
              current_value: {
                required: false,
                read_only: true,
                serialized_name: 'currentValue',
                type: {
                  name: 'Number'
                }
              },
              limit: {
                required: false,
                read_only: true,
                serialized_name: 'limit',
                type: {
                  name: 'Number'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'Composite',
                  class_name: 'UsageName'
                }
              }
            }
          }
        }
      end
    end
  end
end
