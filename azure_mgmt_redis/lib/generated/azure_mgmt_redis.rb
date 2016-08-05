# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require 'generated/azure_mgmt_redis/module_definition'
require 'ms_rest_azure'

module Azure::ARM::Redis
  autoload :Redis,                                              'generated/azure_mgmt_redis/redis.rb'
  autoload :PatchSchedules,                                     'generated/azure_mgmt_redis/patch_schedules.rb'
  autoload :RedisManagementClient,                              'generated/azure_mgmt_redis/redis_management_client.rb'

  module Models
    autoload :Sku,                                                'generated/azure_mgmt_redis/models/sku.rb'
    autoload :RedisProperties,                                    'generated/azure_mgmt_redis/models/redis_properties.rb'
    autoload :RedisAccessKeys,                                    'generated/azure_mgmt_redis/models/redis_access_keys.rb'
    autoload :RedisListResult,                                    'generated/azure_mgmt_redis/models/redis_list_result.rb'
    autoload :RedisListKeysResult,                                'generated/azure_mgmt_redis/models/redis_list_keys_result.rb'
    autoload :RedisRegenerateKeyParameters,                       'generated/azure_mgmt_redis/models/redis_regenerate_key_parameters.rb'
    autoload :RedisRebootParameters,                              'generated/azure_mgmt_redis/models/redis_reboot_parameters.rb'
    autoload :ExportRDBParameters,                                'generated/azure_mgmt_redis/models/export_rdbparameters.rb'
    autoload :ImportRDBParameters,                                'generated/azure_mgmt_redis/models/import_rdbparameters.rb'
    autoload :ScheduleEntry,                                      'generated/azure_mgmt_redis/models/schedule_entry.rb'
    autoload :RedisPatchSchedulesRequest,                         'generated/azure_mgmt_redis/models/redis_patch_schedules_request.rb'
    autoload :RedisPatchSchedulesResponse,                        'generated/azure_mgmt_redis/models/redis_patch_schedules_response.rb'
    autoload :RedisCreateOrUpdateParameters,                      'generated/azure_mgmt_redis/models/redis_create_or_update_parameters.rb'
    autoload :RedisResourceWithAccessKey,                         'generated/azure_mgmt_redis/models/redis_resource_with_access_key.rb'
    autoload :RedisResource,                                      'generated/azure_mgmt_redis/models/redis_resource.rb'
    autoload :SkuName,                                            'generated/azure_mgmt_redis/models/sku_name.rb'
    autoload :SkuFamily,                                          'generated/azure_mgmt_redis/models/sku_family.rb'
    autoload :RedisKeyType,                                       'generated/azure_mgmt_redis/models/redis_key_type.rb'
    autoload :RebootType,                                         'generated/azure_mgmt_redis/models/reboot_type.rb'
    autoload :DayOfWeek,                                          'generated/azure_mgmt_redis/models/day_of_week.rb'
  end
end
