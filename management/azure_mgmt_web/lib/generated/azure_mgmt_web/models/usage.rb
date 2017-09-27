# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Usage of the quota resource.
    #
    class Usage < ProxyOnlyResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Friendly name shown in the UI.
      attr_accessor :display_name

      # @return [String] Name of the quota.
      attr_accessor :usage_name

      # @return [String] Name of the quota resource.
      attr_accessor :resource_name

      # @return [String] Units of measurement for the quota resource.
      attr_accessor :unit

      # @return [Integer] The current value of the resource counter.
      attr_accessor :current_value

      # @return [Integer] The resource limit.
      attr_accessor :limit

      # @return [DateTime] Next reset time for the resource counter.
      attr_accessor :next_reset_time

      # @return [ComputeModeOptions] Compute mode used for this usage. Possible
      # values include: 'Shared', 'Dedicated', 'Dynamic'
      attr_accessor :compute_mode

      # @return [String] Site mode used for this usage.
      attr_accessor :site_mode


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
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.displayName',
                type: {
                  name: 'String'
                }
              },
              usage_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.name',
                type: {
                  name: 'String'
                }
              },
              resource_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceName',
                type: {
                  name: 'String'
                }
              },
              unit: {
                required: false,
                read_only: true,
                serialized_name: 'properties.unit',
                type: {
                  name: 'String'
                }
              },
              current_value: {
                required: false,
                read_only: true,
                serialized_name: 'properties.currentValue',
                type: {
                  name: 'Number'
                }
              },
              limit: {
                required: false,
                read_only: true,
                serialized_name: 'properties.limit',
                type: {
                  name: 'Number'
                }
              },
              next_reset_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.nextResetTime',
                type: {
                  name: 'DateTime'
                }
              },
              compute_mode: {
                required: false,
                read_only: true,
                serialized_name: 'properties.computeMode',
                type: {
                  name: 'Enum',
                  module: 'ComputeModeOptions'
                }
              },
              site_mode: {
                required: false,
                read_only: true,
                serialized_name: 'properties.siteMode',
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
