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
      begin
        # Using execute method so that keys are not logged onto console
        execute("gem push ./pkg/#{dir}-#{version}.gem" + (args[:key].nil? ? '' : " -k #{args[:key]}"))
      rescue Exception => ex
        puts "Error occurred while publishing #{dir}: #{ex}"
      end
    end
  end

  desc 'Regen code for each of the Azure Resource Manager projects'
  task :regen => :clean_generated do
    REGEN_EXCLUDES = ['azure_sdk']
    each_gem do |dir|
      unless REGEN_EXCLUDES.include?(dir.to_s)
        puts "\nGenerating #{dir}\n"
        md = REGEN_METADATA[dir.to_sym]
        ar_base_command = REGEN_METADATA[:autorest_loc]

        command = "#{ar_base_command} #{md[:spec_uri]} --package-version=#{md[:version]} --namespace=#{md[:ns]} --package-name=#{md[:pn].nil? ? dir : md[:pn]} --output-folder=#{File.join(Dir.pwd, 'lib')} --ruby --azure-arm"
        command += " --#{md[:options]}" unless md[:options].nil?
        command += " --tag=#{md[:tag]}" unless md[:tag].nil?

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
    autorest_loc: ENV.fetch('AUTOREST_LOC', 'autorest'),
    azure_sdk: {
        version: version
    },
    azure_mgmt_analysis_services: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/analysisservices/resource-manager/readme.md',
        ns: 'Azure::ARM::AnalysisServices',
        version: version
    },
    azure_mgmt_authorization: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/authorization/resource-manager/readme.md',
        ns: 'Azure::ARM::Authorization',
        version: version
    },
    azure_mgmt_batch: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/batch/resource-manager/readme.md',
        ns: 'Azure::ARM::Batch',
        version: version
    },
    azure_mgmt_cdn: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/cdn/resource-manager/readme.md',
        ns: 'Azure::ARM::CDN',
        version: version
    },
    azure_mgmt_cognitive_services: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/cognitiveservices/resource-manager/readme.md',
        ns: 'Azure::ARM::CognitiveServices',
        version: version
    },
    azure_mgmt_commerce: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/commerce/resource-manager/readme.md',
        ns: 'Azure::ARM::Commerce',
        version: version
    },
    azure_mgmt_compute: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/compute/resource-manager/readme.md',
        ns: 'Azure::ARM::Compute',
        version: version
    },
    azure_mgmt_datalake_analytics: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/datalake-analytics/resource-manager/readme.md',
        ns: 'Azure::ARM::DataLakeAnalytics',
        version: version
    },
    azure_mgmt_datalake_store: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/datalake-store/resource-manager/readme.md',
        ns: 'Azure::ARM::DataLakeStore',
        version: version
    },
    azure_mgmt_devtestlabs: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/devtestlabs/resource-manager/readme.md',
        ns: 'Azure::ARM::DevTestLabs',
        version: version
    },
    azure_mgmt_dns: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/dns/resource-manager/readme.md',
        ns: 'Azure::ARM::Dns',
        version: version
    },
    azure_mgmt_event_hub: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/eventhub/resource-manager/readme.md',
        ns: 'Azure::ARM::EventHub',
        version: version
    },
    azure_mgmt_features: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/resources/resource-manager/readme.md',
        ns: 'Azure::ARM::Features',
        version: version,
        options: 'package-features'
    },
    azure_mgmt_graph: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/graphrbac/data-plane/readme.md',
        ns: 'Azure::ARM::Graph',
        version: version
    },
    # Not generating this gem due to known issue in swagger
    # azure_mgmt_intune: {
    #     spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-intune/2015-01-14-preview/swagger/intune.json',
    #     ns: 'Azure::ARM::Intune',
    #     version: version,
    #     tag: 'arm_intune'
    # },
    azure_mgmt_iot_hub: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/iothub/resource-manager/readme.md',
        ns: 'Azure::ARM::IotHub',
        version: version
    },
    azure_mgmt_key_vault: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/keyvault/resource-manager/readme.md',
        ns: 'Azure::ARM::KeyVault',
        version: version
    },
    azure_mgmt_locks: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/resources/resource-manager/readme.md',
        ns: 'Azure::ARM::Locks',
        version: version,
        options: 'package-locks'
    },
    azure_mgmt_logic: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/logic/resource-manager/readme.md',
        ns: 'Azure::ARM::Logic',
        version: version
    },
    azure_mgmt_machine_learning: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/machinelearning/resource-manager/readme.md',
        ns: 'Azure::ARM::MachineLearning',
        version: version,
        options: 'package-webservices'
    },
    azure_mgmt_media_services: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/mediaservices/resource-manager/readme.md',
        ns: 'Azure::ARM::MediaServices',
        version: version
    },
    azure_mgmt_mobile_engagement: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/mobileengagement/resource-manager/readme.md',
        ns: 'Azure::ARM::MobileEngagement',
        version: version
    },
    azure_mgmt_monitor: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/monitor/resource-manager/readme.md',
        ns: 'Azure::ARM::Monitor',
        version: version
    },
    azure_mgmt_network: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/network/resource-manager/readme.md',
        ns: 'Azure::ARM::Network',
        version: version
    },
    azure_mgmt_notification_hubs: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/notificationhubs/resource-manager/readme.md',
        ns: 'Azure::ARM::NotificationHubs',
        version: version
    },
    azure_mgmt_policy: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/resources/resource-manager/readme.md',
        ns: 'Azure::ARM::Policy',
        version: version,
        options: 'package-policy'
    },
    azure_mgmt_powerbi_embedded: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/powerbiembedded/resource-manager/readme.md',
        ns: 'Azure::ARM::PowerBiEmbedded',
        version: version
    },
    azure_mgmt_recovery_services: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/recoveryservices/resource-manager/readme.md',
        ns: 'Azure::ARM::RecoveryServices',
        version: version
    },
    azure_mgmt_recovery_services_backup: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/recoveryservicesbackup/resource-manager/readme.md',
        ns: 'Azure::ARM::RecoveryServicesBackup',
        version: version
    },
    azure_mgmt_redis: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/redis/resource-manager/readme.md',
        ns: 'Azure::ARM::Redis',
        version: version
    },
    azure_mgmt_resources: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/resources/resource-manager/readme.md',
        ns: 'Azure::ARM::Resources',
        version: version,
        options: 'package-resources'
    },
    azure_mgmt_scheduler: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/scheduler/resource-manager/readme.md',
        ns: 'Azure::ARM::Scheduler',
        version: version
    },
    azure_mgmt_search: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/search/resource-manager/readme.md',
        ns: 'Azure::ARM::Search',
        version: version
    },
    azure_mgmt_server_management: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/servermanagement/resource-manager/readme.md',
        ns: 'Azure::ARM::ServerManagement',
        version: version
    },
    azure_mgmt_service_bus: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/servicebus/resource-manager/readme.md',
        ns: 'Azure::ARM::ServiceBus',
        version: version
    },
    azure_mgmt_sql: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/sql/resource-manager/readme.md',
        ns: 'Azure::ARM::SQL',
        version: version
    },
    azure_mgmt_storage: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/storage/resource-manager/readme.md',
        ns: 'Azure::ARM::Storage',
        version: version
    },
    azure_mgmt_stream_analytics: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/streamanalytics/resource-manager/readme.md',
        ns: 'Azure::ARM::StreamAnalytics',
        version: version
    },
    azure_mgmt_subscriptions: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/resources/resource-manager/readme.md',
        ns: 'Azure::ARM::Subscriptions',
        version: version,
        options: 'package-subscriptions'
    },
    azure_mgmt_traffic_manager: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/trafficmanager/resource-manager/readme.md',
        ns: 'Azure::ARM::TrafficManager',
        version: version
    },
    azure_mgmt_web: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/current/specification/web/resource-manager/readme.md',
        ns: 'Azure::ARM::Web',
        version: version
    },
}
