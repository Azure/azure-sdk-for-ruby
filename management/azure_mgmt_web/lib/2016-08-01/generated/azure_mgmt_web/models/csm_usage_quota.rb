# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_08_01
  module Models
    #
    # Usage of the quota resource.
    #
    class CsmUsageQuota

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Units of measurement for the quota resourse.
      attr_accessor :unit

      # @return [DateTime] Next reset time for the resource counter.
      attr_accessor :next_reset_time

      # @return [Integer] The current value of the resource counter.
      attr_accessor :current_value

      # @return [Integer] The resource limit.
      attr_accessor :limit

      # @return [LocalizableString] Quota name.
      attr_accessor :name


      #
      # Mapper for CsmUsageQuota class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CsmUsageQuota',
          type: {
            name: 'Composite',
            class_name: 'CsmUsageQuota',
            model_properties: {
              unit: {
                client_side_validation: true,
                required: false,
                serialized_name: 'unit',
                type: {
                  name: 'String'
                }
              },
              next_reset_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nextResetTime',
                type: {
                  name: 'DateTime'
                }
              },
              current_value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'currentValue',
                type: {
                  name: 'Number'
                }
              },
              limit: {
                client_side_validation: true,
                required: false,
                serialized_name: 'limit',
                type: {
                  name: 'Number'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'Composite',
                  class_name: 'LocalizableString'
                }
              }
            }
          }
        }
      end
    end
  end
end
