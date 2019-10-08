# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'azure_sdk/version'
require 'json'

#gem_versions = JSON.parse(File.read(File.expand_path("#{__dir__}/../config/GEM_VERSIONS", __FILE__)).strip)
gem_versions = JSON.parse(File.read(File.expand_path("../../config/GEM_VERSIONS", __FILE__)).strip)

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

  spec.add_runtime_dependency 'azure_mgmt_adhybridhealth_service', "~>#{gem_versions['management']['azure_mgmt_adhybridhealth_service']}"
  spec.add_runtime_dependency 'azure_mgmt_advisor', "~>#{gem_versions['management']['azure_mgmt_advisor']}"
  spec.add_runtime_dependency 'azure_mgmt_alerts_management', "~>#{gem_versions['management']['azure_mgmt_alerts_management']}"
  spec.add_runtime_dependency 'azure_mgmt_analysis_services', "~>#{gem_versions['management']['azure_mgmt_analysis_services']}"
  spec.add_runtime_dependency 'azure_mgmt_api_management', "~>#{gem_versions['management']['azure_mgmt_api_management']}"
  spec.add_runtime_dependency 'azure_mgmt_appconfiguration', "~>#{gem_versions['management']['azure_mgmt_appconfiguration']}"
  spec.add_runtime_dependency 'azure_mgmt_attestation', "~>#{gem_versions['management']['azure_mgmt_attestation']}"
  spec.add_runtime_dependency 'azure_mgmt_authorization', "~>#{gem_versions['management']['azure_mgmt_authorization']}"
  spec.add_runtime_dependency 'azure_mgmt_automation', "~>#{gem_versions['management']['azure_mgmt_automation']}"
  spec.add_runtime_dependency 'azure_mgmt_azurestack', "~>#{gem_versions['management']['azure_mgmt_azurestack']}"
  spec.add_runtime_dependency 'azure_mgmt_batch', "~>#{gem_versions['management']['azure_mgmt_batch']}"
  spec.add_runtime_dependency 'azure_mgmt_batchai', "~>#{gem_versions['management']['azure_mgmt_batchai']}"
  spec.add_runtime_dependency 'azure_mgmt_billing', "~>#{gem_versions['management']['azure_mgmt_billing']}"
  spec.add_runtime_dependency 'azure_mgmt_bot_service', "~>#{gem_versions['management']['azure_mgmt_bot_service']}"
  spec.add_runtime_dependency 'azure_mgmt_cdn', "~>#{gem_versions['management']['azure_mgmt_cdn']}"
  spec.add_runtime_dependency 'azure_mgmt_cognitive_services', "~>#{gem_versions['management']['azure_mgmt_cognitive_services']}"
  spec.add_runtime_dependency 'azure_mgmt_commerce', "~>#{gem_versions['management']['azure_mgmt_commerce']}"
  spec.add_runtime_dependency 'azure_mgmt_compute', "~>#{gem_versions['management']['azure_mgmt_compute']}"
  spec.add_runtime_dependency 'azure_mgmt_consumption', "~>#{gem_versions['management']['azure_mgmt_consumption']}"
  spec.add_runtime_dependency 'azure_mgmt_container_instance', "~>#{gem_versions['management']['azure_mgmt_container_instance']}"
  spec.add_runtime_dependency 'azure_mgmt_container_registry', "~>#{gem_versions['management']['azure_mgmt_container_registry']}"
  spec.add_runtime_dependency 'azure_mgmt_container_service', "~>#{gem_versions['management']['azure_mgmt_container_service']}"
  spec.add_runtime_dependency 'azure_mgmt_cosmosdb', "~>#{gem_versions['management']['azure_mgmt_cosmosdb']}"
  spec.add_runtime_dependency 'azure_mgmt_cost_management', "~>#{gem_versions['management']['azure_mgmt_cost_management']}"
  spec.add_runtime_dependency 'azure_mgmt_customer_insights', "~>#{gem_versions['management']['azure_mgmt_customer_insights']}"
  spec.add_runtime_dependency 'azure_mgmt_databox', "~>#{gem_versions['management']['azure_mgmt_databox']}"
  spec.add_runtime_dependency 'azure_mgmt_datashare', "~>#{gem_versions['management']['azure_mgmt_datashare']}"
  spec.add_runtime_dependency 'azure_mgmt_datalake_analytics', "~>#{gem_versions['management']['azure_mgmt_datalake_analytics']}"
  spec.add_runtime_dependency 'azure_mgmt_datalake_store', "~>#{gem_versions['management']['azure_mgmt_datalake_store']}"
  spec.add_runtime_dependency 'azure_mgmt_data_migration', "~>#{gem_versions['management']['azure_mgmt_data_migration']}"
  spec.add_runtime_dependency 'azure_mgmt_data_factory', "~>#{gem_versions['management']['azure_mgmt_data_factory']}"
  spec.add_runtime_dependency 'azure_mgmt_dev_spaces', "~>#{gem_versions['management']['azure_mgmt_dev_spaces']}"
  spec.add_runtime_dependency 'azure_mgmt_devtestlabs', "~>#{gem_versions['management']['azure_mgmt_devtestlabs']}"
  spec.add_runtime_dependency 'azure_mgmt_dns', "~>#{gem_versions['management']['azure_mgmt_dns']}"
  spec.add_runtime_dependency 'azure_mgmt_edgegateway', "~>#{gem_versions['management']['azure_mgmt_edgegateway']}"
  spec.add_runtime_dependency 'azure_mgmt_event_grid', "~>#{gem_versions['management']['azure_mgmt_event_grid']}"
  spec.add_runtime_dependency 'azure_mgmt_event_hub', "~>#{gem_versions['management']['azure_mgmt_event_hub']}"
  spec.add_runtime_dependency 'azure_mgmt_features', "~>#{gem_versions['management']['azure_mgmt_features']}"
  spec.add_runtime_dependency 'azure_mgmt_hanaonazure', "~>#{gem_versions['management']['azure_mgmt_hanaonazure']}"
  spec.add_runtime_dependency 'azure_mgmt_hdinsight', "~>#{gem_versions['management']['azure_mgmt_hdinsight']}"
  spec.add_runtime_dependency 'azure_mgmt_iot_central', "~>#{gem_versions['management']['azure_mgmt_iot_central']}"
  spec.add_runtime_dependency 'azure_mgmt_iot_hub', "~>#{gem_versions['management']['azure_mgmt_iot_hub']}"
  spec.add_runtime_dependency 'azure_mgmt_key_vault', "~>#{gem_versions['management']['azure_mgmt_key_vault']}"
  spec.add_runtime_dependency 'azure_mgmt_kusto', "~>#{gem_versions['management']['azure_mgmt_kusto']}"
  spec.add_runtime_dependency 'azure_mgmt_labservices', "~>#{gem_versions['management']['azure_mgmt_labservices']}"
  spec.add_runtime_dependency 'azure_mgmt_links', "~>#{gem_versions['management']['azure_mgmt_links']}"
  spec.add_runtime_dependency 'azure_mgmt_locks', "~>#{gem_versions['management']['azure_mgmt_locks']}"
  spec.add_runtime_dependency 'azure_mgmt_logic', "~>#{gem_versions['management']['azure_mgmt_logic']}"
  spec.add_runtime_dependency 'azure_mgmt_machine_learning', "~>#{gem_versions['management']['azure_mgmt_machine_learning']}"
  spec.add_runtime_dependency 'azure_mgmt_machine_learning_services', "~>#{gem_versions['management']['azure_mgmt_machine_learning_services']}"
  spec.add_runtime_dependency 'azure_mgmt_managed_applications', "~>#{gem_versions['management']['azure_mgmt_managed_applications']}"
  spec.add_runtime_dependency 'azure_mgmt_mariadb', "~>#{gem_versions['management']['azure_mgmt_mariadb']}"
  spec.add_runtime_dependency 'azure_mgmt_marketplace_ordering', "~>#{gem_versions['management']['azure_mgmt_marketplace_ordering']}"
  spec.add_runtime_dependency 'azure_mgmt_media_services', "~>#{gem_versions['management']['azure_mgmt_media_services']}"
  spec.add_runtime_dependency 'azure_mgmt_migrate', "~>#{gem_versions['management']['azure_mgmt_migrate']}"
  spec.add_runtime_dependency 'azure_mgmt_mixedreality', "~>#{gem_versions['management']['azure_mgmt_mixedreality']}"
  spec.add_runtime_dependency 'azure_mgmt_monitor', "~>#{gem_versions['management']['azure_mgmt_monitor']}"
  spec.add_runtime_dependency 'azure_mgmt_msi', "~>#{gem_versions['management']['azure_mgmt_msi']}"
  spec.add_runtime_dependency 'azure_mgmt_mysql', "~>#{gem_versions['management']['azure_mgmt_mysql']}"
  spec.add_runtime_dependency 'azure_mgmt_netapp', "~>#{gem_versions['management']['azure_mgmt_netapp']}"
  spec.add_runtime_dependency 'azure_mgmt_network', "~>#{gem_versions['management']['azure_mgmt_network']}"
  spec.add_runtime_dependency 'azure_mgmt_notification_hubs', "~>#{gem_versions['management']['azure_mgmt_notification_hubs']}"
  spec.add_runtime_dependency 'azure_mgmt_operational_insights', "~>#{gem_versions['management']['azure_mgmt_operational_insights']}"
  spec.add_runtime_dependency 'azure_mgmt_operations_management', "~>#{gem_versions['management']['azure_mgmt_operations_management']}"
  spec.add_runtime_dependency 'azure_mgmt_peering', "~>#{gem_versions['management']['azure_mgmt_peering']}"
  spec.add_runtime_dependency 'azure_mgmt_policy', "~>#{gem_versions['management']['azure_mgmt_policy']}"
  spec.add_runtime_dependency 'azure_mgmt_policy_insights', "~>#{gem_versions['management']['azure_mgmt_policy_insights']}"
  spec.add_runtime_dependency 'azure_mgmt_postgresql', "~>#{gem_versions['management']['azure_mgmt_postgresql']}"
  spec.add_runtime_dependency 'azure_mgmt_powerbi_embedded', "~>#{gem_versions['management']['azure_mgmt_powerbi_embedded']}"
  spec.add_runtime_dependency 'azure_mgmt_powerbi_dedicated', "~>#{gem_versions['management']['azure_mgmt_powerbi_dedicated']}"
  spec.add_runtime_dependency 'azure_mgmt_privatedns', "~>#{gem_versions['management']['azure_mgmt_privatedns']}"
  spec.add_runtime_dependency 'azure_mgmt_recovery_services', "~>#{gem_versions['management']['azure_mgmt_recovery_services']}"
  spec.add_runtime_dependency 'azure_mgmt_recovery_services_backup', "~>#{gem_versions['management']['azure_mgmt_recovery_services_backup']}"
  spec.add_runtime_dependency 'azure_mgmt_recovery_services_site_recovery', "~>#{gem_versions['management']['azure_mgmt_recovery_services_site_recovery']}"
  spec.add_runtime_dependency 'azure_mgmt_redis', "~>#{gem_versions['management']['azure_mgmt_redis']}"
  spec.add_runtime_dependency 'azure_mgmt_relay', "~>#{gem_versions['management']['azure_mgmt_relay']}"
  spec.add_runtime_dependency 'azure_mgmt_reservations', "~>#{gem_versions['management']['azure_mgmt_reservations']}"
  spec.add_runtime_dependency 'azure_mgmt_resourcegraph', "~>#{gem_versions['management']['azure_mgmt_resourcegraph']}"
  spec.add_runtime_dependency 'azure_mgmt_resources', "~>#{gem_versions['management']['azure_mgmt_resources']}"
  spec.add_runtime_dependency 'azure_mgmt_resources_management', "~>#{gem_versions['management']['azure_mgmt_resources_management']}"
  spec.add_runtime_dependency 'azure_mgmt_scheduler', "~>#{gem_versions['management']['azure_mgmt_scheduler']}"
  spec.add_runtime_dependency 'azure_mgmt_search', "~>#{gem_versions['management']['azure_mgmt_search']}"
  spec.add_runtime_dependency 'azure_mgmt_security', "~>#{gem_versions['management']['azure_mgmt_security']}"
  spec.add_runtime_dependency 'azure_mgmt_serialconsole', "~>#{gem_versions['management']['azure_mgmt_serialconsole']}"
  spec.add_runtime_dependency 'azure_mgmt_service_bus', "~>#{gem_versions['management']['azure_mgmt_service_bus']}"
  spec.add_runtime_dependency 'azure_mgmt_service_fabric', "~>#{gem_versions['management']['azure_mgmt_service_fabric']}"
  spec.add_runtime_dependency 'azure_mgmt_signalr', "~>#{gem_versions['management']['azure_mgmt_signalr']}"
  spec.add_runtime_dependency 'azure_mgmt_sql', "~>#{gem_versions['management']['azure_mgmt_sql']}"
  spec.add_runtime_dependency 'azure_mgmt_sqlvirtualmachine', "~>#{gem_versions['management']['azure_mgmt_sqlvirtualmachine']}"
  spec.add_runtime_dependency 'azure_mgmt_stor_simple8000_series', "~>#{gem_versions['management']['azure_mgmt_stor_simple8000_series']}"
  spec.add_runtime_dependency 'azure_mgmt_storage', "~>#{gem_versions['management']['azure_mgmt_storage']}"
  spec.add_runtime_dependency 'azure_mgmt_storagesync', "~>#{gem_versions['management']['azure_mgmt_storagesync']}"
  spec.add_runtime_dependency 'azure_mgmt_storagecache', "~>#{gem_versions['management']['azure_mgmt_storagecache']}"
  spec.add_runtime_dependency 'azure_mgmt_stream_analytics', "~>#{gem_versions['management']['azure_mgmt_stream_analytics']}"
  spec.add_runtime_dependency 'azure_mgmt_subscriptions', "~>#{gem_versions['management']['azure_mgmt_subscriptions']}"
  spec.add_runtime_dependency 'azure_mgmt_traffic_manager', "~>#{gem_versions['management']['azure_mgmt_traffic_manager']}"
  spec.add_runtime_dependency 'azure_mgmt_web', "~>#{gem_versions['management']['azure_mgmt_web']}"
  spec.add_runtime_dependency 'azure_mgmt_vmware_cloudsimple', "~>#{gem_versions['management']['azure_mgmt_vmware_cloudsimple']}"
  spec.add_runtime_dependency 'azure_cognitiveservices_anomalydetector', "~>#{gem_versions['data']['azure_cognitiveservices_anomalydetector']}"
  spec.add_runtime_dependency 'azure_cognitiveservices_autosuggest', "~>#{gem_versions['data']['azure_cognitiveservices_autosuggest']}"
  spec.add_runtime_dependency 'azure_cognitiveservices_customimagesearch', "~>#{gem_versions['data']['azure_cognitiveservices_customimagesearch']}"
  spec.add_runtime_dependency 'azure_cognitiveservices_computervision', "~>#{gem_versions['data']['azure_cognitiveservices_computervision']}"
  spec.add_runtime_dependency 'azure_cognitiveservices_contentmoderator', "~>#{gem_versions['data']['azure_cognitiveservices_contentmoderator']}"
  spec.add_runtime_dependency 'azure_cognitiveservices_customsearch', "~>#{gem_versions['data']['azure_cognitiveservices_customsearch']}"
  spec.add_runtime_dependency 'azure_cognitiveservices_customvisiontraining', "~>#{gem_versions['data']['azure_cognitiveservices_customvisiontraining']}"
  spec.add_runtime_dependency 'azure_cognitiveservices_customvisionprediction', "~>#{gem_versions['data']['azure_cognitiveservices_customvisionprediction']}"
  spec.add_runtime_dependency 'azure_cognitiveservices_entitysearch', "~>#{gem_versions['data']['azure_cognitiveservices_entitysearch']}"
  spec.add_runtime_dependency 'azure_cognitiveservices_face', "~>#{gem_versions['data']['azure_cognitiveservices_face']}"
  spec.add_runtime_dependency 'azure_cognitiveservices_formrecognizer', "~>#{gem_versions['data']['azure_cognitiveservices_formrecognizer']}"
  spec.add_runtime_dependency 'azure_cognitiveservices_imagesearch', "~>#{gem_versions['data']['azure_cognitiveservices_imagesearch']}"
  spec.add_runtime_dependency 'azure_cognitiveservices_localsearch', "~>#{gem_versions['data']['azure_cognitiveservices_localsearch']}"
  spec.add_runtime_dependency 'azure_cognitiveservices_luisruntime', "~>#{gem_versions['data']['azure_cognitiveservices_luisruntime']}"
  spec.add_runtime_dependency 'azure_cognitiveservices_luisauthoring', "~>#{gem_versions['data']['azure_cognitiveservices_luisauthoring']}"
  spec.add_runtime_dependency 'azure_cognitiveservices_newssearch', "~>#{gem_versions['data']['azure_cognitiveservices_newssearch']}"
  spec.add_runtime_dependency 'azure_cognitiveservices_personalizer', "~>#{gem_versions['data']['azure_cognitiveservices_personalizer']}"
  spec.add_runtime_dependency 'azure_cognitiveservices_qnamaker', "~>#{gem_versions['data']['azure_cognitiveservices_qnamaker']}"
  spec.add_runtime_dependency 'azure_cognitiveservices_qnamakerruntime', "~>#{gem_versions['data']['azure_cognitiveservices_qnamakerruntime']}"
  spec.add_runtime_dependency 'azure_cognitiveservices_spellcheck', "~>#{gem_versions['data']['azure_cognitiveservices_spellcheck']}"
  spec.add_runtime_dependency 'azure_cognitiveservices_textanalytics', "~>#{gem_versions['data']['azure_cognitiveservices_textanalytics']}"
  spec.add_runtime_dependency 'azure_cognitiveservices_videosearch', "~>#{gem_versions['data']['azure_cognitiveservices_videosearch']}"
  spec.add_runtime_dependency 'azure_cognitiveservices_websearch', "~>#{gem_versions['data']['azure_cognitiveservices_websearch']}"
  spec.add_runtime_dependency 'azure_cognitiveservices_visualsearch', "~>#{gem_versions['data']['azure_cognitiveservices_visualsearch']}"
  spec.add_runtime_dependency 'azure_event_grid', "~>#{gem_versions['data']['azure_event_grid']}"
  spec.add_runtime_dependency 'azure_graph_rbac', "~>#{gem_versions['data']['azure_graph_rbac']}"
  spec.add_runtime_dependency 'azure_key_vault', "~>#{gem_versions['data']['azure_key_vault']}"
  spec.add_runtime_dependency 'azure_service_fabric', "~>#{gem_versions['data']['azure_service_fabric']}"
  spec.add_runtime_dependency 'azure-storage', '~>0.14.0.preview'
end
