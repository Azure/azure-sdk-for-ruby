# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'azure_sdk/version'
require 'json'

gem_versions = JSON.parse(File.read(File.expand_path('../../GEM_VERSIONS', __FILE__)).strip)

Gem::Specification.new do |spec|
  spec.name          = 'azure_sdk'
  spec.version       = Azure::VERSION
  spec.authors       = 'Microsoft Corporation'
  spec.email         = 'azrubyteam@microsoft.com'
  spec.description   = 'Microsoft Azure SDK - Azure Client Library for Ruby'
  spec.summary       = 'Official Ruby client library to consume Microsoft Azure services.'
  spec.homepage      = 'https://aka.ms/azure-sdk-for-ruby'
  spec.license       = 'MIT'
  spec.metadata      = {
    'bug_tracker_uri' => 'https://github.com/Azure/azure-sdk-for-ruby/issues',
    'changelog_uri' => 'https://github.com/Azure/azure-sdk-for-ruby/blob/master/ChangeLog.md',
    'documentation_uri' => 'https://azure.microsoft.com/en-us/develop/ruby/',
    'homepage_uri' => 'https://aka.ms/azure-sdk-for-ruby',
    'source_code_uri' => "https://github.com/Azure/azure-sdk-for-ruby/tree/ARM-#{Azure::VERSION}",
    'wiki_uri' => 'https://github.com/Azure/azure-sdk-for-ruby/wiki'
  }

  spec.files         = Dir["LICENSE.txt", "lib/**/*"]
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10'
  spec.add_development_dependency 'rspec', '~> 3'
  spec.add_development_dependency 'dotenv', '~> 2'

  spec.add_runtime_dependency 'azure_mgmt_analysis_services', "~>#{gem_versions['management']['azure_mgmt_analysis_services']}"
  spec.add_runtime_dependency 'azure_mgmt_authorization', "~>#{gem_versions['management']['azure_mgmt_authorization']}"
  spec.add_runtime_dependency 'azure_mgmt_automation', "~>#{gem_versions['management']['azure_mgmt_automation']}"
  spec.add_runtime_dependency 'azure_mgmt_batch', "~>#{gem_versions['management']['azure_mgmt_batch']}"
  spec.add_runtime_dependency 'azure_mgmt_billing', "~>#{gem_versions['management']['azure_mgmt_billing']}"
  spec.add_runtime_dependency 'azure_mgmt_cdn', "~>#{gem_versions['management']['azure_mgmt_cdn']}"
  spec.add_runtime_dependency 'azure_mgmt_cognitive_services', "~>#{gem_versions['management']['azure_mgmt_cognitive_services']}"
  spec.add_runtime_dependency 'azure_mgmt_commerce', "~>#{gem_versions['management']['azure_mgmt_commerce']}"
  spec.add_runtime_dependency 'azure_mgmt_compute', "~>#{gem_versions['management']['azure_mgmt_compute']}"
  spec.add_runtime_dependency 'azure_mgmt_consumption', "~>#{gem_versions['management']['azure_mgmt_consumption']}"
  spec.add_runtime_dependency 'azure_mgmt_container_instance', "~>#{gem_versions['management']['azure_mgmt_container_instance']}"
  spec.add_runtime_dependency 'azure_mgmt_container_registry', "~>#{gem_versions['management']['azure_mgmt_container_registry']}"
  spec.add_runtime_dependency 'azure_mgmt_container_service', "~>#{gem_versions['management']['azure_mgmt_container_service']}"
  spec.add_runtime_dependency 'azure_mgmt_customer_insights', "~>#{gem_versions['management']['azure_mgmt_customer_insights']}"
  spec.add_runtime_dependency 'azure_mgmt_datalake_analytics', "~>#{gem_versions['management']['azure_mgmt_datalake_analytics']}"
  spec.add_runtime_dependency 'azure_mgmt_datalake_store', "~>#{gem_versions['management']['azure_mgmt_datalake_store']}"
  spec.add_runtime_dependency 'azure_mgmt_devtestlabs', "~>#{gem_versions['management']['azure_mgmt_devtestlabs']}"
  spec.add_runtime_dependency 'azure_mgmt_dns', "~>#{gem_versions['management']['azure_mgmt_dns']}"
  spec.add_runtime_dependency 'azure_mgmt_event_grid', "~>#{gem_versions['management']['azure_mgmt_event_grid']}"
  spec.add_runtime_dependency 'azure_mgmt_event_hub', "~>#{gem_versions['management']['azure_mgmt_event_hub']}"
  spec.add_runtime_dependency 'azure_mgmt_features', "~>#{gem_versions['management']['azure_mgmt_features']}"
  spec.add_runtime_dependency 'azure_mgmt_iot_hub', "~>#{gem_versions['management']['azure_mgmt_iot_hub']}"
  spec.add_runtime_dependency 'azure_mgmt_key_vault', "~>#{gem_versions['management']['azure_mgmt_key_vault']}"
  spec.add_runtime_dependency 'azure_mgmt_links', "~>#{gem_versions['management']['azure_mgmt_links']}"
  spec.add_runtime_dependency 'azure_mgmt_locks', "~>#{gem_versions['management']['azure_mgmt_locks']}"
  spec.add_runtime_dependency 'azure_mgmt_logic', "~>#{gem_versions['management']['azure_mgmt_logic']}"
  spec.add_runtime_dependency 'azure_mgmt_machine_learning', "~>#{gem_versions['management']['azure_mgmt_machine_learning']}"
  spec.add_runtime_dependency 'azure_mgmt_managed_applications', "~>#{gem_versions['management']['azure_mgmt_managed_applications']}"
  spec.add_runtime_dependency 'azure_mgmt_marketplace_ordering', "~>#{gem_versions['management']['azure_mgmt_marketplace_ordering']}"
  spec.add_runtime_dependency 'azure_mgmt_media_services', "~>#{gem_versions['management']['azure_mgmt_media_services']}"
  spec.add_runtime_dependency 'azure_mgmt_mobile_engagement', "~>#{gem_versions['management']['azure_mgmt_mobile_engagement']}"
  spec.add_runtime_dependency 'azure_mgmt_monitor', "~>#{gem_versions['management']['azure_mgmt_monitor']}"
  spec.add_runtime_dependency 'azure_mgmt_msi', "~>#{gem_versions['management']['azure_mgmt_msi']}"
  spec.add_runtime_dependency 'azure_mgmt_network', "~>#{gem_versions['management']['azure_mgmt_network']}"
  spec.add_runtime_dependency 'azure_mgmt_notification_hubs', "~>#{gem_versions['management']['azure_mgmt_notification_hubs']}"
  spec.add_runtime_dependency 'azure_mgmt_operational_insights', "~>#{gem_versions['management']['azure_mgmt_operational_insights']}"
  spec.add_runtime_dependency 'azure_mgmt_policy', "~>#{gem_versions['management']['azure_mgmt_policy']}"
  spec.add_runtime_dependency 'azure_mgmt_powerbi_embedded', "~>#{gem_versions['management']['azure_mgmt_powerbi_embedded']}"
  spec.add_runtime_dependency 'azure_mgmt_recovery_services', "~>#{gem_versions['management']['azure_mgmt_recovery_services']}"
  spec.add_runtime_dependency 'azure_mgmt_recovery_services_backup', "~>#{gem_versions['management']['azure_mgmt_recovery_services_backup']}"
  spec.add_runtime_dependency 'azure_mgmt_recovery_services_site_recovery', "~>#{gem_versions['management']['azure_mgmt_recovery_services_site_recovery']}"
  spec.add_runtime_dependency 'azure_mgmt_redis', "~>#{gem_versions['management']['azure_mgmt_redis']}"
  spec.add_runtime_dependency 'azure_mgmt_relay', "~>#{gem_versions['management']['azure_mgmt_relay']}"
  spec.add_runtime_dependency 'azure_mgmt_resources', "~>#{gem_versions['management']['azure_mgmt_resources']}"
  spec.add_runtime_dependency 'azure_mgmt_resources_management', "~>#{gem_versions['management']['azure_mgmt_resources_management']}"
  spec.add_runtime_dependency 'azure_mgmt_scheduler', "~>#{gem_versions['management']['azure_mgmt_scheduler']}"
  spec.add_runtime_dependency 'azure_mgmt_search', "~>#{gem_versions['management']['azure_mgmt_search']}"
  spec.add_runtime_dependency 'azure_mgmt_server_management', "~>#{gem_versions['management']['azure_mgmt_server_management']}"
  spec.add_runtime_dependency 'azure_mgmt_service_bus', "~>#{gem_versions['management']['azure_mgmt_service_bus']}"
  spec.add_runtime_dependency 'azure_mgmt_service_fabric', "~>#{gem_versions['management']['azure_mgmt_service_fabric']}"
  spec.add_runtime_dependency 'azure_mgmt_sql', "~>#{gem_versions['management']['azure_mgmt_sql']}"
  spec.add_runtime_dependency 'azure_mgmt_stor_simple8000_series', "~>#{gem_versions['management']['azure_mgmt_stor_simple8000_series']}"
  spec.add_runtime_dependency 'azure_mgmt_storage', "~>#{gem_versions['management']['azure_mgmt_storage']}"
  spec.add_runtime_dependency 'azure_mgmt_stream_analytics', "~>#{gem_versions['management']['azure_mgmt_stream_analytics']}"
  spec.add_runtime_dependency 'azure_mgmt_subscriptions', "~>#{gem_versions['management']['azure_mgmt_subscriptions']}"
  spec.add_runtime_dependency 'azure_mgmt_traffic_manager', "~>#{gem_versions['management']['azure_mgmt_traffic_manager']}"
  spec.add_runtime_dependency 'azure_mgmt_web', "~>#{gem_versions['management']['azure_mgmt_web']}"
  spec.add_runtime_dependency 'azure_graph_rbac', "~>#{gem_versions['data']['azure_graph_rbac']}"
  spec.add_runtime_dependency 'azure_cognitiveservices_computervision', "~>#{gem_versions['data']['azure_cognitiveservices_computervision']}"
  spec.add_runtime_dependency 'azure_cognitiveservices_contentmoderator', "~>#{gem_versions['data']['azure_cognitiveservices_contentmoderator']}"
  spec.add_runtime_dependency 'azure_cognitiveservices_customsearch', "~>#{gem_versions['data']['azure_cognitiveservices_customsearch']}"
  spec.add_runtime_dependency 'azure_cognitiveservices_entitysearch', "~>#{gem_versions['data']['azure_cognitiveservices_entitysearch']}"
  spec.add_runtime_dependency 'azure_cognitiveservices_face', "~>#{gem_versions['data']['azure_cognitiveservices_face']}"
  spec.add_runtime_dependency 'azure_cognitiveservices_imagesearch', "~>#{gem_versions['data']['azure_cognitiveservices_imagesearch']}"
  spec.add_runtime_dependency 'azure_cognitiveservices_newssearch', "~>#{gem_versions['data']['azure_cognitiveservices_newssearch']}"
  spec.add_runtime_dependency 'azure_cognitiveservices_spellcheck', "~>#{gem_versions['data']['azure_cognitiveservices_spellcheck']}"
  spec.add_runtime_dependency 'azure_cognitiveservices_textanalytics', "~>#{gem_versions['data']['azure_cognitiveservices_textanalytics']}"
  spec.add_runtime_dependency 'azure_cognitiveservices_videosearch', "~>#{gem_versions['data']['azure_cognitiveservices_videosearch']}"
  spec.add_runtime_dependency 'azure_cognitiveservices_websearch', "~>#{gem_versions['data']['azure_cognitiveservices_websearch']}"
  spec.add_runtime_dependency 'azure_event_grid', "~>#{gem_versions['data']['azure_event_grid']}"
  spec.add_runtime_dependency 'azure-storage', '~>0.14.0.preview'
end
