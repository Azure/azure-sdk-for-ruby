#-------------------------------------------------------------------------
# # Copyright (c) Microsoft and contributors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#--------------------------------------------------------------------------

require 'rubygems'
require 'nokogiri'
require 'base64'
require 'openssl'
require 'uri'
require 'rexml/document'
require 'addressable/uri'
require 'faraday'
require 'faraday_middleware'

module Azure
  autoload :Client,                           'azure/client'
  autoload :ClientServices,                   'azure/client_services'
  autoload :Configurable,                     'azure/configurable'
  autoload :Default,                          'azure/default'
  autoload :HttpClient,                       'azure/http_client'
  autoload :Version,                          'azure/version'

  # helpers because the naming is far too verbose
  autoload :BaseManagementService,                    'azure/base_management/base_management_service'
  autoload :CloudServiceManagementService,            'azure/cloud_service_management/cloud_service_management_service'
  autoload :SqlDatabaseManagementService,             'azure/sql_database_management/sql_database_management_service'
  autoload :StorageManagementService,                 'azure/storage_management/storage_management_service'
  autoload :VirtualMachineImageManagementService,     'azure/virtual_machine_image_management/virtual_machine_image_management_service'
  autoload :VirtualMachineManagementService,          'azure/virtual_machine_management/virtual_machine_management_service'
  autoload :VirtualNetworkManagementService,          'azure/virtual_network_management/virtual_network_management_service'

  module BaseManagement
    autoload :ManagementHttpRequest,          'azure/base_management/management_http_request'
    autoload :SqlManagementHttpRequest,       'azure/base_management/sql_management_http_request'
    autoload :BaseManagementService,          'azure/base_management/base_management_service'
    autoload :Location,                       'azure/base_management/location'
    autoload :AffinityGroup,                  'azure/base_management/affinity_group'
    autoload :Serialization,                  'azure/base_management/serialization'
  end

  module Blob
    autoload :BlobService,                    'azure/blob/blob_service'
    autoload :Blob,                           'azure/blob/blob'
    autoload :Block,                          'azure/blob/block'
    autoload :Container,                      'azure/blob/container'
    autoload :Serialization,                  'azure/blob/serialization'
  end

  module CloudServiceManagement
    autoload :CloudServiceManagementService,    'azure/cloud_service_management/cloud_service_management_service'
    autoload :CloudService,                     'azure/cloud_service_management/cloud_service'
  end

  module Core
    autoload :Utility,                        'azure/core/utility'
    autoload :Error,                          'azure/core/error'
    autoload :Service,                        'azure/core/service'
    autoload :FilteredService,                'azure/core/filtered_service'
    autoload :SignedService,                  'azure/core/signed_service'
  end

  module Queue
    autoload :QueueService,                   'azure/queue/queue_service'
    autoload :Message,                        'azure/queue/message'
    autoload :Queue,                          'azure/queue/queue'
  end

  module ServiceBus
    autoload :ServiceBusService,        'azure/service_bus/service_bus_service'
    autoload :EmptyRuleAction,          'azure/service_bus/empty_rule_action'
    autoload :SqlRuleAction,            'azure/service_bus/sql_rule_action'
    autoload :SqlFilter,                'azure/service_bus/sql_filter'
    autoload :TrueFilter,               'azure/service_bus/true_filter'
    autoload :CorrelationFilter,        'azure/service_bus/correlation_filter'
  end

  module SqlDatabaseManagement
    autoload :SqlDatabaseManagementService,     'azure/sql_database_management/sql_database_management_service'
    autoload :Serialization,                    'azure/sql_database_management/serialization'
    autoload :SqlServer,                        'azure/sql_database_management/sql_server'
  end

  module StorageManagement
    autoload :StorageManagementService,         'azure/storage_management/storage_management_service'
    autoload :Serialization,                    'azure/storage_management/serialization'
    autoload :StorageAccount,                   'azure/storage_management/storage_account'
  end

  module Table
    autoload :TableService,             'azure/table/table_service'
    autoload :Batch,                    'azure/table/batch'
    autoload :Query,                    'azure/table/query'
  end

  module VirtualMachineImageManagement
    autoload :VirtualMachineImageManagementService, 'azure/virtual_machine_image_management/virtual_machine_image_management_service'
    autoload :Serialization,                        'azure/virtual_machine_image_management/serialization'
    autoload :VirtualMachineImage,                  'azure/virtual_machine_image_management/virtual_machine_image'
    autoload :VirtualMachineDisk,                   'azure/virtual_machine_image_management/virtual_machine_disk'
  end

  module VirtualMachineManagement
    autoload :VirtualMachineManagementService,  'azure/virtual_machine_management/virtual_machine_management_service'
    autoload :Serialization,                    'azure/virtual_machine_management/serialization'
    autoload :VirtualMachine,                   'azure/virtual_machine_management/virtual_machine'
  end

  module VirtualNetworkManagement
    autoload :VirtualNetworkManagementService,  'azure/virtual_network_management/virtual_network_management_service'
    autoload :Serialization,                    'azure/virtual_network_management/serialization'
    autoload :VirtualNetwork,                   'azure/virtual_network_management/virtual_network'
  end

  class << self
    include Azure::Configurable

    # API client based on configured options {Configurable}
    #
    # @return [Azure::Client] API wrapper
    def client(options = {})
      @client = Azure::Client.new(options) unless defined?(@client) && @client.same_options?(options)
      @client
    end

    private

    def method_missing(method_name, *args, &block)
      return super unless client.respond_to?(method_name)
      client.send(method_name, *args, &block)
    end

  end

  Azure.setup
end
