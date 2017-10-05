# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_redis'


module Azure::Profiles::RedisModule::Management::Profile_2015_08_01
  module Redis
    Redis = Azure::ARM::Redis::Api_2015_08_01::Redis

    module Models
      RedisAccessKeys = Azure::ARM::Redis::Api_2015_08_01::Models::RedisAccessKeys
      RedisProperties = Azure::ARM::Redis::Api_2015_08_01::Models::RedisProperties
      RedisRebootParameters = Azure::ARM::Redis::Api_2015_08_01::Models::RedisRebootParameters
      RedisRegenerateKeyParameters = Azure::ARM::Redis::Api_2015_08_01::Models::RedisRegenerateKeyParameters
      Sku = Azure::ARM::Redis::Api_2015_08_01::Models::Sku
      RedisListResult = Azure::ARM::Redis::Api_2015_08_01::Models::RedisListResult
      RedisListKeysResult = Azure::ARM::Redis::Api_2015_08_01::Models::RedisListKeysResult
      RedisCreateOrUpdateParameters = Azure::ARM::Redis::Api_2015_08_01::Models::RedisCreateOrUpdateParameters
      RedisResourceWithAccessKey = Azure::ARM::Redis::Api_2015_08_01::Models::RedisResourceWithAccessKey
      RedisResource = Azure::ARM::Redis::Api_2015_08_01::Models::RedisResource
      SkuName = Azure::ARM::Redis::Api_2015_08_01::Models::SkuName
      SkuFamily = Azure::ARM::Redis::Api_2015_08_01::Models::SkuFamily
      RedisKeyType = Azure::ARM::Redis::Api_2015_08_01::Models::RedisKeyType
      RebootType = Azure::ARM::Redis::Api_2015_08_01::Models::RebootType
    end

    #
    # Redis
    #
    class RedisClass
      attr_accessor :redis, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Redis::Api_2015_08_01::RedisManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.redis = Azure::ARM::Redis::Api_2015_08_01::Redis.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2015-08-01'
            client = Azure::ARM::Redis::Api_2015_08_01::RedisManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def redis_access_keys
          Azure::ARM::Redis::Api_2015_08_01::Models::RedisAccessKeys
        end
        def redis_properties
          Azure::ARM::Redis::Api_2015_08_01::Models::RedisProperties
        end
        def redis_reboot_parameters
          Azure::ARM::Redis::Api_2015_08_01::Models::RedisRebootParameters
        end
        def redis_regenerate_key_parameters
          Azure::ARM::Redis::Api_2015_08_01::Models::RedisRegenerateKeyParameters
        end
        def sku
          Azure::ARM::Redis::Api_2015_08_01::Models::Sku
        end
        def redis_list_result
          Azure::ARM::Redis::Api_2015_08_01::Models::RedisListResult
        end
        def redis_list_keys_result
          Azure::ARM::Redis::Api_2015_08_01::Models::RedisListKeysResult
        end
        def redis_create_or_update_parameters
          Azure::ARM::Redis::Api_2015_08_01::Models::RedisCreateOrUpdateParameters
        end
        def redis_resource_with_access_key
          Azure::ARM::Redis::Api_2015_08_01::Models::RedisResourceWithAccessKey
        end
        def redis_resource
          Azure::ARM::Redis::Api_2015_08_01::Models::RedisResource
        end
        def sku_name
          Azure::ARM::Redis::Api_2015_08_01::Models::SkuName
        end
        def sku_family
          Azure::ARM::Redis::Api_2015_08_01::Models::SkuFamily
        end
        def redis_key_type
          Azure::ARM::Redis::Api_2015_08_01::Models::RedisKeyType
        end
        def reboot_type
          Azure::ARM::Redis::Api_2015_08_01::Models::RebootType
        end
      end
    end
  end
end
