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
require 'dotenv/tasks'
require 'rspec/core/rake_task'
require 'open3'
require 'os'

version = File.read(File.expand_path('../ARM_VERSION', __FILE__)).strip

desc 'Azure Resource Manager related tasks which often traverse each of the arm gems'
namespace :arm do
  desc 'Delete ./pkg for each of the Azure Resource Manager projects'
  task :clean do
    each_gem do
      execute_and_stream(OS.windows? ? 'del /S /Q pkg 2>nul' : 'rm -rf ./pkg')
    end
  end

  desc 'Delete ./lib/generated for each of the Azure Resource Manager projects'
  task :clean_generated do
    each_gem do
      execute_and_stream(OS.windows? ? 'del /S /Q lib\generated 2>nul' : 'rm -rf lib/generated')
    end
  end

  desc 'Build gems for each of the Azure Resource Manager projects'
  task :build => :clean do
    each_gem do
      execute_and_stream('rake build')
    end
  end

  desc 'Push gem for each of the Azure Resource Manager projects'
  task :release, [:key] => :build do |_, args|
    each_gem do |dir|
      # Using execute method so that keys are not logged onto console
      execute("gem push ./pkg/#{dir}-#{version}.gem" + (args[:key].nil? ? '' : " -k #{args[:key]}"))
    end
  end

  desc 'Regen code for each of the Azure Resource Manager projects'
  task :regen => :clean_generated do
    REGEN_EXCLUDES = ['azure_sdk']
    each_gem do |dir|
      unless REGEN_EXCLUDES.include?(dir.to_s)
        puts "\nGenerating #{dir}\n"
        md = REGEN_METADATA[dir.to_sym]
        ar_base_command = "#{OS.windows? ? '' : 'mono '} #{REGEN_METADATA[:autorest_loc]}"

        command = "#{ar_base_command} -i #{md[:spec_uri]} -pv #{md[:version]} -n #{md[:ns]} -pn #{md[:pn].nil? ? dir : md[:pn]} -g Azure.Ruby -o lib"
        command += " -m #{md[:modeler]}" unless md[:modeler].nil?

        execute_and_stream(command)
      end
    end
  end

  desc 'Bundler related helper'
  namespace :bundle do
    desc 'bundle update for each of the Azure Resource Manager projects'
    task :update do
      each_gem do
        execute_and_stream('bundle update')
      end
    end
  end

  desc 'run specs for each of the Azure Resource Manager projects'
  task :spec => :dotenv do
    each_gem do |gem_dir|
      puts "Executing spec on #{gem_dir}"
      execute_and_stream('bundle install')
      execute_and_stream('bundle exec rspec')
    end
  end
end

task :default => :spec

def execute_and_stream(cmd)
  puts "running: #{cmd}"
  execute(cmd)
end

def execute(cmd)
  Open3.popen2e(cmd) do |_, stdout_err, wait_thr|
    while line = stdout_err.gets
      puts line
    end

    exit_status = wait_thr.value
    unless exit_status.success?
      abort "FAILED !!!"
    end
  end
end

def each_child
  top_level_dirs = Dir.entries('./').select { |f| File.directory?(f) and !(f =='.' || f == '..') }
  management_level_dirs = Dir.entries('management/.').select { |f| File.directory?("management/#{f}") and !(f =='.' || f == '..') }
  management_level_dirs.map! {|management_level_dir| "management/#{management_level_dir}"}
  dirs = top_level_dirs.concat(management_level_dirs)
  dirs.each do |dir|
    Dir.chdir(dir) do
      yield(dir)
    end
  end
end

def each_gem
  each_child do |dir|
    gem_dir = dir.split('/').last.to_sym
    if REGEN_METADATA.has_key?(gem_dir)
      yield gem_dir
    end
  end
end

REGEN_METADATA = {
    autorest_loc: ENV.fetch('AUTOREST_LOC', '../../../autorest/binaries/net45/AutoRest.exe'),
    azure_sdk: {
        version: version,
        tag: 'azure_sdk'
    },
    azure_mgmt_analysis_services: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-analysisservices/2016-05-16/swagger/analysisservices.json',
        ns: 'Azure::ARM::AnalysisServices',
        version: version,
        tag: 'arm_as'
    },
    azure_mgmt_authorization: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-authorization/2015-07-01/swagger/authorization.json',
        ns: 'Azure::ARM::Authorization',
        version: version,
        tag: 'arm_auth'
    },
    azure_mgmt_batch: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-batch/2017-01-01/swagger/BatchManagement.json',
        ns: 'Azure::ARM::Batch',
        version: version,
        tag: 'arm_batch'
    },
    azure_mgmt_cdn: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-cdn/2016-10-02/swagger/cdn.json',
        ns: 'Azure::ARM::CDN',
        version: version,
        tag: 'arm_cdn'
    },
    azure_mgmt_cognitive_services: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-cognitiveservices/2016-02-01-preview/swagger/cognitiveservices.json',
        ns: 'Azure::ARM::CognitiveServices',
        version: version,
        tag: 'arm_cogn'
    },
    azure_mgmt_commerce: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-commerce/2015-06-01-preview/swagger/commerce.json',
        ns: 'Azure::ARM::Commerce',
        version: version,
        tag: 'arm_commerce'
    },
    azure_mgmt_compute: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-compute/compositeComputeClient.json',
        ns: 'Azure::ARM::Compute',
        version: version,
        modeler: "CompositeSwagger",
        tag: 'arm_comp'
    },
    azure_mgmt_datalake_analytics: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-datalake-analytics/account/2016-11-01/swagger/account.json',
        ns: 'Azure::ARM::DataLakeAnalytics',
        version: version,
        tag: 'arm_datalake_analytics'
    },
    azure_mgmt_datalake_store: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-datalake-store/account/2016-11-01/swagger/account.json',
        ns: 'Azure::ARM::DataLakeStore',
        version: version,
        tag: 'arm_datalake_store'
    },
    azure_mgmt_devtestlabs: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-devtestlabs/2016-05-15/swagger/DTL.json',
        ns: 'Azure::ARM::DevTestLabs',
        version: version,
        tag: 'arm_dtl'
    },
    azure_mgmt_dns: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-dns/2016-04-01/swagger/dns.json',
        ns: 'Azure::ARM::Dns',
        version: version,
        tag: 'arm_dns'
    },
    azure_mgmt_event_hub: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-eventhub/2015-08-01/swagger/EventHub.json',
        ns: 'Azure::ARM::EventHub',
        version: version,
        tag: 'arm_event_hub'
    },
    azure_mgmt_features: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-resources/features/2015-12-01/swagger/features.json',
        ns: 'Azure::ARM::Features',
        version: version,
        tag: 'arm_feat'
    },
    azure_mgmt_graph: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-graphrbac/compositeGraphRbacManagementClient.json',
        ns: 'Azure::ARM::Graph',
        version: version,
        modeler: "CompositeSwagger",
        tag: 'arm_grap'
    },
    azure_mgmt_insights: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-insights/compositeInsightsManagementClient.json',
        ns: 'Azure::ARM::Insights',
        version: version,
        modeler: "CompositeSwagger",
        tag: 'arm_insights'
    },
    # Not generating this gem due to known issue in swagger
    # azure_mgmt_intune: {
    #     spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-intune/2015-01-14-preview/swagger/intune.json',
    #     ns: 'Azure::ARM::Intune',
    #     version: version,
    #     tag: 'arm_intune'
    # },
    azure_mgmt_iot_hub: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-iothub/2016-02-03/swagger/iothub.json',
        ns: 'Azure::ARM::IotHub',
        version: version,
        tag: 'arm_iothub'
    },
    azure_mgmt_key_vault: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-keyvault/2015-06-01/swagger/keyvault.json',
        ns: 'Azure::ARM::KeyVault',
        version: version,
        tag: 'arm_key_vault'
    },
    azure_mgmt_locks: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-resources/locks/2016-09-01/swagger/locks.json',
        ns: 'Azure::ARM::Locks',
        version: version,
        tag: 'arm_lock'
    },
    azure_mgmt_logic: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-logic/2016-06-01/swagger/logic.json',
        ns: 'Azure::ARM::Logic',
        version: version,
        tag: 'arm_logic'
    },
    azure_mgmt_machine_learning: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-machinelearning/2016-05-01-preview/swagger/webservices.json',
        ns: 'Azure::ARM::MachineLearning',
        version: version,
        tag: 'arm_mach'
    },
    azure_mgmt_media_services: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-mediaservices/2015-10-01/swagger/media.json',
        ns: 'Azure::ARM::MediaServices',
        version: version,
        tag: 'arm_media'
    },
    azure_mgmt_mobile_engagement: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-mobileengagement/2014-12-01/swagger/mobile-engagement.json',
        ns: 'Azure::ARM::MobileEngagement',
        version: version,
        tag: 'arm_mobile'
    },
    azure_mgmt_network: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-network/compositeNetworkClient.json',
        ns: 'Azure::ARM::Network',
        version: version,
        modeler: "CompositeSwagger",
        tag: 'arm_netw'
    },
    azure_mgmt_notification_hubs: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-notificationhubs/2016-03-01/swagger/notificationhubs.json',
        ns: 'Azure::ARM::NotificationHubs',
        version: version,
        tag: 'arm_noti'
    },
    azure_mgmt_policy: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-resources/policy/2016-12-01/swagger/policy.json',
        ns: 'Azure::ARM::Policy',
        version: version,
        tag: 'arm_policy'
    },
    azure_mgmt_powerbi_embedded: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-powerbiembedded/2016-01-29/swagger/powerbiembedded.json',
        ns: 'Azure::ARM::PowerBiEmbedded',
        version: version,
        tag: 'arm_powerbi'
    },
    azure_mgmt_recovery_services: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-recoveryservices/compositeRecoveryServicesClient.json',
        ns: 'Azure::ARM::RecoveryServices',
        version: version,
        modeler: "CompositeSwagger",
        tag: 'arm_recovery'
    },
    azure_mgmt_recovery_services_backup: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-recoveryservicesbackup/compositeRecoveryServicesBackupClient.json',
        ns: 'Azure::ARM::RecoveryServicesBackup',
        version: version,
        modeler: "CompositeSwagger",
        tag: 'arm_recovery_backup'
    },
    azure_mgmt_redis: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-redis/2016-04-01/swagger/redis.json',
        ns: 'Azure::ARM::Redis',
        version: version,
        tag: 'arm_redi'
    },
    azure_mgmt_resources: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-resources/resources/2016-09-01/swagger/resources.json',
        ns: 'Azure::ARM::Resources',
        version: version,
        tag: 'arm_reso'
    },
    azure_mgmt_scheduler: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-scheduler/2016-03-01/swagger/scheduler.json',
        ns: 'Azure::ARM::Scheduler',
        version: version,
        tag: 'arm_sche'
    },
    azure_mgmt_search: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-search/2015-08-19/swagger/search.json',
        ns: 'Azure::ARM::Search',
        version: version,
        tag: 'arm_sear'
    },
    azure_mgmt_server_management: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-servermanagement/2016-07-01-preview/swagger/servermanagement.json',
        ns: 'Azure::ARM::ServerManagement',
        version: version,
        tag: 'arm_server'
    },
    azure_mgmt_service_bus: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-servicebus/2015-08-01/swagger/servicebus.json',
        ns: 'Azure::ARM::ServiceBus',
        version: version,
        tag: 'arm_servicebus'
    },
    azure_mgmt_sql: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-sql/compositeSql.json',
        ns: 'Azure::ARM::SQL',
        version: version,
        modeler: "CompositeSwagger",
        tag: 'arm_sql'
    },
    azure_mgmt_storage: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-storage/2016-12-01/swagger/storage.json',
        ns: 'Azure::ARM::Storage',
        version: version,
        tag: 'arm_stor'
    },
    azure_mgmt_subscriptions: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-resources/subscriptions/2016-06-01/swagger/subscriptions.json',
        ns: 'Azure::ARM::Subscriptions',
        version: version,
        tag: 'arm_subs'
    },
    azure_mgmt_traffic_manager: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-trafficmanager/2015-11-01/swagger/trafficmanager.json',
        ns: 'Azure::ARM::TrafficManager',
        version: version,
        tag: 'arm_trafficmgr'
    },
    azure_mgmt_web: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-web/compositeWebAppClient.json',
        ns: 'Azure::ARM::Web',
        version: version,
        modeler: "CompositeSwagger",
        tag: 'arm_web'
    },
}
