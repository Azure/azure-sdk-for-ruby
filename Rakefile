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
require 'json'
require 'fileutils'

version = File.read(File.expand_path('../ARM_VERSION', __FILE__)).strip

desc 'Azure Resource Manager related tasks which often traverse each of the arm gems'
namespace :arm do
  desc 'Delete ./pkg for each of the Azure Resource Manager projects'
  task :clean do
    each_gem do
      execute_and_stream(OS.windows? ? 'del /S /Q pkg 2>nul' : 'rm -rf ./pkg')
    end
  end

  desc 'Delete ./lib/generated for each sdk'
  task :clean_generated do
    each_gem do
      delete_command_windows = 'for /r lib\ %a in (generated) do @if exist %a del /S /Q %a 2>nul'
      delete_empty_folders_windows = "ROBOCOPY lib lib /S /MOVE"
      delete_command_linux = "find lib/* -d -type d -exec  rm -rf '{}' \\;"
      execute_and_stream(OS.windows? ? delete_command_windows + " & " + delete_empty_folders_windows : delete_command_linux)
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

  desc 'Regen code for each sdk with all its api versions'
  task :regen => :clean_generated do
    json = get_config_file
    REGEN_EXCLUDES = ['azure_sdk']
    each_gem do |dir| # dir corresponds to each azure_mgmt_* folder
      unless REGEN_EXCLUDES.include?(dir.to_s)
        puts "\nGenerating #{dir}\n"
        ar_base_command = "#{ENV.fetch('AUTOREST_LOC', 'autorest')}"
        ar_base_command = "#{ar_base_command} --use=#{ENV.fetch('AUTOREST_RUBY_LOC')}" unless ENV.fetch('AUTOREST_RUBY_LOC', nil).nil?
        puts "ar_base_command #{ar_base_command}"
        md = json[dir] # there should be an entry in the metadata for each of the api versions to generate
        package_name = dir
        md.each do |api_version_pkg, api_version_value|
         ar_arguments = ''
         output_folder = ''
         api_version_value.each do |argument_name, argument_value|
           if argument_name.casecmp("output-folder") == 0
             output_folder = argument_value
           else
             if argument_name.casecmp("package-name") == 0
               package_name = argument_value
             else
               if argument_name.casecmp("markdown") == 0
                 ar_arguments = ar_arguments + " #{argument_value}"
               else
                 if argument_name.casecmp("input-file") == 0
                   input_files = argument_value.map {|file| "--input-file=#{file}"}
                   ar_arguments = ar_arguments + input_files.join(" ")
                 else
                   ar_arguments = ar_arguments + " --#{argument_name}=#{argument_value}"
                 end
               end
             end
           end
         end
         command = "#{ar_base_command} --package-name=#{package_name} #{ar_arguments} --output-folder=#{File.join(Dir.pwd, 'lib', output_folder)} --ruby --azure-arm"
         execute_and_stream(command)
        end
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

  desc 'Clean Rollup Profiles'
  task :clean_rollup_profiles do
    Dir.chdir(File.expand_path('../azure_sdk/lib', __FILE__))
    subdir_list = Dir['*'].reject{|o| not File.directory?(o)}
    subdir_list.each do |subdir|
      if subdir != 'common' && subdir != 'azure_sdk'
        folder_to_be_cleaned = File.expand_path("../azure_sdk/lib/#{subdir}", __FILE__)
        puts "Cleaning folder - #{folder_to_be_cleaned}"
        FileUtils.rm_rf(folder_to_be_cleaned)
      end
    end
  end

  desc 'Clean Individual Profiles'
  task :clean_individual_profiles do
    Dir.chdir(File.expand_path('../management', __FILE__))
    gem_folders = Dir['*'].reject{|o| not File.directory?(o)}
    gem_folders.each do |gem|
      Dir.chdir(File.expand_path("../management/#{gem}/lib/profiles", __FILE__))
      subdir_list = Dir['*'].reject{|o| not File.directory?(o)}
      subdir_list.each do |subdir|
        if subdir.to_s != 'common'
          folder_to_be_cleaned = File.expand_path("../management/#{gem}/lib/profiles/#{subdir}", __FILE__)
          puts "Cleaning folder - #{folder_to_be_cleaned}"
          FileUtils.rm_rf(folder_to_be_cleaned)
        end
      end
    end
  end

  desc 'Clean All profiles'
  task :clean_all_profiles => [:clean_rollup_profiles, :clean_individual_profiles] do
    puts 'Cleaned all profiles'
  end

  desc 'Regen rollup profiles'
  task :regen_rollup_profile => :clean_rollup_profiles do
    Dir.chdir(File.expand_path('../generators/profilegen/src', __FILE__))
    command = "#{get_base_profile_generation_cmd}#{get_profile_spec_files_folder}/#{PROFILE_METADATA[:azure_sdk]}"
    execute_and_stream(command)
  end

  desc 'Regen individual profiles'
  task :regen_individual_profiles => :clean_individual_profiles do
    Dir.chdir(File.expand_path('../generators/profilegen/src', __FILE__))
    PROFILE_METADATA.each do |sdk, profile_spec_file|
      if(sdk.to_s != 'azure_sdk')
        command = "#{get_base_profile_generation_cmd}#{get_profile_spec_files_folder}/#{profile_spec_file}"
        execute_and_stream(command)
      end
    end
  end

  desc 'Generate individual require files'
  task :regen_individual_require_files do
    Dir.chdir(File.expand_path('../generators/requirefilegen/src', __FILE__))
    command = 'bundle exec ruby require_file_generator.rb --mode=individual'
    execute_and_stream(command)
  end

  desc 'Generate rollup require files'
  task :regen_rollup_require_files do
    Dir.chdir(File.expand_path('../generators/requirefilegen/src', __FILE__))
    command = 'bundle exec ruby require_file_generator.rb --mode=rollup'
    execute_and_stream(command)
  end

  desc 'Generate all require files'
  task :regen_all_require_files => [:regen_individual_require_files, :regen_rollup_require_files] do
    puts 'Generated all require files'
  end

  desc 'Regen all profiles'
  task :regen_all_profiles => [:regen_rollup_profile, :regen_individual_profiles] do
    puts 'Regenerated all profiles'
  end
end

Rake::Task['arm:regen_rollup_profile'].enhance do
  Rake::Task['arm:regen_rollup_require_files'].invoke
end

Rake::Task['arm:regen_individual_profiles'].enhance do
  Rake::Task['arm:regen_individual_require_files'].invoke
end

Rake::Task['arm:regen'].enhance do
  Rake::Task['arm:regen_individual_require_files'].invoke
end

task :default => :spec

def get_base_profile_generation_cmd
  cmd = 'bundle exec ruby profile_generator_client.rb'
  dir_metadata = "--dir_metadata=#{File.expand_path('../generators/profilegen/src/resources/dir_metadata.json', __FILE__)}"
  "#{cmd} #{dir_metadata} --profile="
end

def get_profile_spec_files_folder
  File.expand_path('../profile_specs', __FILE__)
end

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

def get_config_file
  config_file = File.read(File.expand_path('../config.json', __FILE__))
  JSON.parse(config_file)
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
    gem_dir = dir.split('/').last
    if get_config_file.has_key?(gem_dir)
      yield gem_dir
    end
  end
end

REGEN_METADATA = {
    azure_sdk: {
        version: version
    }
}

PROFILE_METADATA = {
    azure_sdk: 'profiles.json',
    azure_mgmt_analysis_services: 'analysis_services_profiles.json',
    azure_mgmt_authorization: 'authorization_profiles.json',
    azure_mgmt_automation: 'automation_profiles.json',
    azure_mgmt_batch: 'batch_profiles.json',
    azure_mgmt_billing: 'billing_profiles.json',
    azure_mgmt_cdn: 'cdn_profiles.json',
    azure_mgmt_cognitive_services: 'cognitive_services_profiles.json',
    azure_mgmt_commerce: 'commerce_profiles.json',
    azure_mgmt_compute: 'compute_profiles.json',
    azure_mgmt_consumption: 'consumption_profiles.json',
    azure_mgmt_container_instance: 'container_instance_profiles.json',
    azure_mgmt_container_registry: 'container_registry_profiles.json',
    azure_mgmt_container_service: 'container_service_profiles.json',
    azure_mgmt_customer_insights: 'customer_insights_profiles.json',
    azure_mgmt_datalake_analytics: 'datalake_analytics_profiles.json',
    azure_mgmt_datalake_store: 'datalake_store_profiles.json',
    azure_mgmt_devtestlabs: 'devtestlabs_profiles.json',
    azure_mgmt_dns: 'dns_profiles.json',
    azure_mgmt_event_grid: 'event_grid_profiles.json',
    azure_mgmt_event_hub: 'event_hub_profiles.json',
    azure_mgmt_features: 'features_profiles.json',
    azure_mgmt_graph: 'graph_profiles.json',
    azure_mgmt_iot_hub: 'iot_hub_profiles.json',
    azure_mgmt_key_vault: 'key_vault_profiles.json',
    azure_mgmt_links: 'links_profiles.json',
    azure_mgmt_locks: 'locks_profiles.json',
    azure_mgmt_logic: 'logic_profiles.json',
    azure_mgmt_machine_learning: 'machine_learning_profiles.json',
    azure_mgmt_managed_applications: 'managed_applications_profiles.json',
    azure_mgmt_marketplace_ordering: 'marketplace_ordering_profiles.json',
    azure_mgmt_media_services: 'media_services_profiles.json',
    azure_mgmt_mobile_engagement: 'mobile_engagement_profiles.json',
    azure_mgmt_monitor: 'monitor_profiles.json',
    azure_mgmt_network: 'network_profiles.json',
    azure_mgmt_notification_hubs: 'notification_hubs_profiles.json',
    azure_mgmt_operational_insights: 'operational_insights_profiles.json',
    azure_mgmt_policy: 'policy_profiles.json',
    azure_mgmt_powerbi_embedded: 'powerbi_embedded_profiles.json',
    azure_mgmt_recovery_services: 'recovery_services_profiles.json',
    azure_mgmt_recovery_services_backup: 'recovery_services_backup_profiles.json',
    azure_mgmt_recovery_services_site_recovery: 'recovery_services_site_recovery_profiles.json',
    azure_mgmt_redis: 'redis_profiles.json',
    azure_mgmt_relay: 'relay_profiles.json',
    azure_mgmt_resources: 'resources_profiles.json',
    azure_mgmt_resources_management: 'resources_management_profiles.json',
    azure_mgmt_scheduler: 'scheduler_profiles.json',
    azure_mgmt_search: 'search_profiles.json',
    azure_mgmt_server_management: 'server_management_profiles.json',
    azure_mgmt_service_bus: 'service_bus_profiles.json',
    azure_mgmt_service_fabric: 'service_fabric_profiles.json',
    azure_mgmt_sql: 'sql_profiles.json',
    azure_mgmt_stor_simple8000_series: 'stor_simple8000_series_profiles.json',
    azure_mgmt_storage: 'storage_profiles.json',
    azure_mgmt_stream_analytics: 'stream_analytics_profiles.json',
    azure_mgmt_subscriptions: 'subscriptions_profiles.json',
    azure_mgmt_traffic_manager: 'traffic_manager_profiles.json',
    azure_mgmt_web: 'web_profiles.json'
}
