# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2016_12_01
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
          client_side_validation: true,
          required: false,
          serialized_name: 'Usage',
          type: {
            name: 'Composite',
            class_name: 'Usage',
            model_properties: {
              unit: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'unit',
                type: {
                  name: 'Enum',
                  module: 'UsageUnit'
                }
              },
              current_value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'currentValue',
                type: {
                  name: 'Number'
                }
              },
              limit: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'limit',
                type: {
                  name: 'Number'
                }
              },
              name: {
                client_side_validation: true,
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
