# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_09_01
  module Models
    #
    # Defines the parameters for the cache-key query string action.
    #
    class CacheKeyQueryStringActionParameters

      include MsRestAzure

      # @return [String] . Default value:
      # '#Microsoft.Azure.Cdn.Models.DeliveryRuleCacheKeyQueryStringBehaviorActionParameters'
      # .
      attr_accessor :odatatype

      # @return [QueryStringBehavior] Caching behavior for the requests.
      # Possible values include: 'Include', 'IncludeAll', 'Exclude',
      # 'ExcludeAll'
      attr_accessor :query_string_behavior

      # @return [String] query parameters to include or exclude (comma
      # separated).
      attr_accessor :query_parameters


      #
      # Mapper for CacheKeyQueryStringActionParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CacheKeyQueryStringActionParameters',
          type: {
            name: 'Composite',
            class_name: 'CacheKeyQueryStringActionParameters',
            model_properties: {
              odatatype: {
                client_side_validation: true,
                required: true,
                is_constant: true,
                serialized_name: '@odata\\.type',
                default_value: '#Microsoft.Azure.Cdn.Models.DeliveryRuleCacheKeyQueryStringBehaviorActionParameters',
                type: {
                  name: 'String'
                }
              },
              query_string_behavior: {
                client_side_validation: true,
                required: true,
                serialized_name: 'queryStringBehavior',
                type: {
                  name: 'String'
                }
              },
              query_parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'queryParameters',
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
