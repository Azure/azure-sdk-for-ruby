# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

version = File.read(File.expand_path('../../ARM_VERSION', __FILE__)).strip
require 'azure_sdk/version'

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

  spec.add_runtime_dependency 'azure_mgmt_analysis_services', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_authorization', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_batch', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_cdn', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_cognitive_services', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_commerce', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_compute', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_datalake_analytics', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_datalake_store', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_devtestlabs', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_dns', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_event_hub', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_features', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_graph', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_monitor', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_iot_hub', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_key_vault', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_locks', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_logic', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_machine_learning', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_media_services', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_mobile_engagement', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_network', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_notification_hubs', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_policy', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_powerbi_embedded', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_recovery_services', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_recovery_services_backup', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_redis', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_resources', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_scheduler', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_search', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_server_management', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_service_bus', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_sql', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_storage', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_stream_analytics', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_subscriptions', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_traffic_manager', "~>#{version}"
  spec.add_runtime_dependency 'azure_mgmt_web', "~>#{version}"
  spec.add_runtime_dependency 'azure-storage', "~>0.12.3.preview"
end
