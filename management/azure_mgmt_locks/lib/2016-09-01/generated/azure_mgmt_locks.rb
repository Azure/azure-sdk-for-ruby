# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
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
require '2016-09-01/generated/azure_mgmt_locks/module_definition'
require 'ms_rest_azure'

module Azure::Locks::Mgmt::V2016_09_01
  autoload :AuthorizationOperations,                            '2016-09-01/generated/azure_mgmt_locks/authorization_operations.rb'
  autoload :ManagementLocks,                                    '2016-09-01/generated/azure_mgmt_locks/management_locks.rb'
  autoload :ManagementLockClient,                               '2016-09-01/generated/azure_mgmt_locks/management_lock_client.rb'

  module Models
    autoload :OperationDisplay,                                   '2016-09-01/generated/azure_mgmt_locks/models/operation_display.rb'
    autoload :ManagementLockOwner,                                '2016-09-01/generated/azure_mgmt_locks/models/management_lock_owner.rb'
    autoload :Operation,                                          '2016-09-01/generated/azure_mgmt_locks/models/operation.rb'
    autoload :ManagementLockListResult,                           '2016-09-01/generated/azure_mgmt_locks/models/management_lock_list_result.rb'
    autoload :OperationListResult,                                '2016-09-01/generated/azure_mgmt_locks/models/operation_list_result.rb'
    autoload :ManagementLockObject,                               '2016-09-01/generated/azure_mgmt_locks/models/management_lock_object.rb'
    autoload :LockLevel,                                          '2016-09-01/generated/azure_mgmt_locks/models/lock_level.rb'
  end
end
