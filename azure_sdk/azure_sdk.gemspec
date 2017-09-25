# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'json'
require_relative 'lib/version'

version = JSON.parse(File.read(File.expand_path('../../ARM_VERSION', __FILE__)).strip)

Gem::Specification.new do |spec|
  spec.name          = 'azure_sdk'
  spec.version       = Azure::VERSION
  spec.authors       = 'Microsoft Corporation'
  spec.email         = 'azrubyteam@microsoft.com'
  spec.description   = 'Microsoft Azure SDK - Azure Client Library for Ruby'
  spec.summary       = 'Official Ruby client library to consume Microsoft Azure services.'
  spec.homepage      = 'https://aka.ms/azure-sdk-for-ruby'
  spec.license       = 'MIT'

  spec.files         = Dir["LICENSE.txt", "lib/**/*"]
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10'
  spec.add_development_dependency 'rspec', '~> 3'
  spec.add_development_dependency 'dotenv', '~> 2'

  spec.add_runtime_dependency 'azure_mgmt_analysis_services', "~>#{version['azure_mgmt_analysis_services']}"
  spec.add_runtime_dependency 'azure_mgmt_authorization', "~>#{version['azure_mgmt_authorization']}"
  spec.add_runtime_dependency 'azure_mgmt_batch', "~>#{version['azure_mgmt_batch']}"
  spec.add_runtime_dependency 'azure_mgmt_cdn', "~>#{version['azure_mgmt_cdn']}"
  spec.add_runtime_dependency 'azure_mgmt_cognitive_services', "~>#{version['azure_mgmt_cognitive_services']}"
  spec.add_runtime_dependency 'azure_mgmt_commerce', "~>#{version['azure_mgmt_commerce']}"
  spec.add_runtime_dependency 'azure_mgmt_compute', "~>#{version['azure_mgmt_compute']}"
  spec.add_runtime_dependency 'azure_mgmt_datalake_analytics', "~>#{version['azure_mgmt_datalake_analytics']}"
  spec.add_runtime_dependency 'azure_mgmt_datalake_store', "~>#{version['azure_mgmt_datalake_store']}"
  spec.add_runtime_dependency 'azure_mgmt_devtestlabs', "~>#{version['azure_mgmt_devtestlabs']}"
  spec.add_runtime_dependency 'azure_mgmt_dns', "~>#{version['azure_mgmt_dns']}"
  spec.add_runtime_dependency 'azure_mgmt_event_hub', "~>#{version['azure_mgmt_event_hub']}"
  spec.add_runtime_dependency 'azure_mgmt_features', "~>#{version['azure_mgmt_features']}"
  spec.add_runtime_dependency 'azure_mgmt_graph', "~>#{version['azure_mgmt_graph']}"
  spec.add_runtime_dependency 'azure_mgmt_monitor', "~>#{version['azure_mgmt_monitor']}"
  spec.add_runtime_dependency 'azure_mgmt_iot_hub', "~>#{version['azure_mgmt_iot_hub']}"
  spec.add_runtime_dependency 'azure_mgmt_key_vault', "~>#{version['azure_mgmt_key_vault']}"
  spec.add_runtime_dependency 'azure_mgmt_locks', "~>#{version['azure_mgmt_locks']}"
  spec.add_runtime_dependency 'azure_mgmt_logic', "~>#{version['azure_mgmt_logic']}"
  spec.add_runtime_dependency 'azure_mgmt_machine_learning', "~>#{version['azure_mgmt_machine_learning']}"
  spec.add_runtime_dependency 'azure_mgmt_media_services', "~>#{version['azure_mgmt_media_services']}"
  spec.add_runtime_dependency 'azure_mgmt_mobile_engagement', "~>#{version['azure_mgmt_mobile_engagement']}"
  spec.add_runtime_dependency 'azure_mgmt_network', "~>#{version['azure_mgmt_network']}"
  spec.add_runtime_dependency 'azure_mgmt_notification_hubs', "~>#{version['azure_mgmt_notification_hubs']}"
  spec.add_runtime_dependency 'azure_mgmt_policy', "~>#{version['azure_mgmt_policy']}"
  spec.add_runtime_dependency 'azure_mgmt_powerbi_embedded', "~>#{version['azure_mgmt_powerbi_embedded']}"
  spec.add_runtime_dependency 'azure_mgmt_recovery_services', "~>#{version['azure_mgmt_recovery_services']}"
  spec.add_runtime_dependency 'azure_mgmt_recovery_services_backup', "~>#{version['azure_mgmt_recovery_services_backup']}"
  spec.add_runtime_dependency 'azure_mgmt_redis', "~>#{version['azure_mgmt_redis']}"
  spec.add_runtime_dependency 'azure_mgmt_resources', "~>#{version['azure_mgmt_resources']}"
  spec.add_runtime_dependency 'azure_mgmt_scheduler', "~>#{version['azure_mgmt_scheduler']}"
  spec.add_runtime_dependency 'azure_mgmt_search', "~>#{version['azure_mgmt_search']}"
  spec.add_runtime_dependency 'azure_mgmt_server_management', "~>#{version['azure_mgmt_server_management']}"
  spec.add_runtime_dependency 'azure_mgmt_service_bus', "~>#{version['azure_mgmt_service_bus']}"
  spec.add_runtime_dependency 'azure_mgmt_sql', "~>#{version['azure_mgmt_sql']}"
  spec.add_runtime_dependency 'azure_mgmt_storage', "~>#{version['azure_mgmt_storage']}"
  spec.add_runtime_dependency 'azure_mgmt_stream_analytics', "~>#{version['azure_mgmt_stream_analytics']}"
  spec.add_runtime_dependency 'azure_mgmt_subscriptions', "~>#{version['azure_mgmt_subscriptions']}"
  spec.add_runtime_dependency 'azure_mgmt_traffic_manager', "~>#{version['azure_mgmt_traffic_manager']}"
  spec.add_runtime_dependency 'azure_mgmt_web', "~>#{version['azure_mgmt_web']}"
  spec.add_runtime_dependency 'azure-storage', "~>0.12.1.preview"
end
