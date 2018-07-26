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

#
# This rakefile consists of several tasks. This section will provide an overview of the
# tasks and their dependencies.
#
# -------------------------------------------------------------------------------------------------------------------------------------------
# | No |             Task                | Description                                                                                      |
# |----|---------------------------------|--------------------------------------------------------------------------------------------------|
# | 1  | regen                           | Regenerates all the SDK versions for all the services and all the profiles for all the services. |
# |    |                                 | This task has regen_sdk_versions and regen_all_profiles as prereqs.                              |
# |----|---------------------------------|--------------------------------------------------------------------------------------------------|
# | 2  | regen_sdk_versions              | Regenerates all the SDK versions for all the services. At the end, this task calls               |
# |    |                                 | regen_individual_require_files as an enhancement. This task has clean_generated as prereq. This  |
# |.   |.                                | task is focused on code generation using autorest and will generate api versions as indicated in |
# |    |                                 |.in the config.json file.                                                                         |
# |----|---------------------------------|--------------------------------------------------------------------------------------------------|
# | 3  | regen_all_profiles              | Regenerates all the profiles for all the services. This task has regen_rollup_profile and        |
# |    |                                 | regen_individual_profiles as prereqs. This task uses the profile_generator to generate the       |
# |    |                                 | with inputs from profiles.json and dir_metadata.json.                                            |
# |----|---------------------------------|--------------------------------------------------------------------------------------------------|
# | 4  | clean_generated                 | Cleans all the generated folders in multiple SDK versions.                                       |
# |----|---------------------------------|--------------------------------------------------------------------------------------------------|
# | 5  | regen_rollup_profile            | Regenerates all profiles within the rollup gem. At the end, this task calls                      |
# |    |                                 | regen_rollup_require_files as an enhancement. This task has clean_rollup_profiles as prereq. This|
#.|.   |                                 | task requires correct definition of rollup profiles in profiles.json file.                       |
# |----|---------------------------------|--------------------------------------------------------------------------------------------------|
# | 6  | regen_individual_profiles       | Regenerates all profiles with all the services. At the end, this task calls                      |
# |    |                                 | regen_individual_require_files as an enhancement. This task calls clean_individual_profiles      |
# |    |                                 | as prereq. This task requires correct definition of individual profiles in profiles.json file.   |
# |----|---------------------------------|--------------------------------------------------------------------------------------------------|
# | 7  | clean_all_profiles              | Cleans all profiles inside the rollup gem and individual gems.This task has clean_rollup_profiles|
# |    |                                 | and clean_individual_profiles as prereqs.                                                        |
# |----|---------------------------------|--------------------------------------------------------------------------------------------------|
# | 8  | clean_rollup_profiles           | Cleans all profiles inside the rollup gem.                                                       |
# |----|---------------------------------|--------------------------------------------------------------------------------------------------|
# | 9  | clean_individual_profiles       | Cleans all profiles inside individual gems.                                                      |
# |----|---------------------------------|--------------------------------------------------------------------------------------------------|
# | 10 | regen_all_require_files         | Regenerates the require files for the rollup gem and individual gems. This task has              |
# |    |                                 | regen_rollup_require_files and regen_individual_require_files as prereqs. A require file is the  |
# |    |                                 | base file for a gem which includes other file. A sample could be found here:                     |
# |.   |                                 | https://github.com/Azure/azure-sdk-for-ruby/blob/master/azure_sdk/lib/azure_sdk.rb               |
# |----|---------------------------------|--------------------------------------------------------------------------------------------------|
# | 11 | regen_rollup_require_files      | Regenerates the require files for the rollup gem                                                 |
# |----|---------------------------------|--------------------------------------------------------------------------------------------------|
# | 12 | regen_individual_require_files  | Regenerates the require files for the individual gems                                            |
# |----|---------------------------------|--------------------------------------------------------------------------------------------------|
# | 13 | release                         | Release gems. This task has build as a prereq. The gems to be released must be indicated in the  |
# |.   |                                 | GEMS_TO_RELEASE file.                                                                            |
# |----|---------------------------------|--------------------------------------------------------------------------------------------------|
# | 14 | build                           | Builds all gems. This task has clean as a prereq.                                                |
# |----|---------------------------------|--------------------------------------------------------------------------------------------------|
# | 15 | clean                           | Cleans the pks folder inside  all the gems.                                                      |
# |----|---------------------------------|--------------------------------------------------------------------------------------------------|
# | 16 | bundle:update                   | Performs bundle update for all gems.                                                             |
# |----|---------------------------------|--------------------------------------------------------------------------------------------------|
# | 17 | spec                            | Executes tests for all gems.                                                                     |
# -------------------------------------------------------------------------------------------------------------------------------------------
#
#                                                       regen
#                                                         |
#           -----------------------------------------------------------------------------------------------------
#           |                                                                                                   |
#      regen_sdk_versions -->enhancement--> regen_individual_require_files                                      |
#           |                                                                                            regen_all_profiles
#           |                                                                                                   |
#      clean_generated                   ------------------------------------------------------------------------------------------------------------------------------
#                                        |                                                                                                                            |
#                                        |                                                                                                                            |
#                                        |                                                                                                                            |
#                                        |                                                                                                                            |
#                                        |                                                     regen_all_require_files                                                |
#                                        |                                                              |                                                             |
#                                        |                                          -----------------------------------------                                         |
#                                        |                                          |                                       |                                         |
#                                        |                                          |                                       |                                         |
#                                        |                                          |                                       |                                         |
#                                 regen_rollup_profile -->enhancement--> regen_rollup_require_files                         |                                         |
#                                        |                                                                                  |                                         |
#                                        |                                                                                  |                                         |
#                                        |                                                                                  |                                         |
#                                        |                                                                                  |                                         |
#                                        |                                                                                  |                                         |
#                                        |                                                                                  |                                         |
#                                        |                                                                 regen_individual_require_files<--enhancement<--regen_individual_profiles
#                                        |                                                                                                                            |
#                                        |                                                             clean_all_profiles                                             |
#                                        |                                                                    |                                                       |
#                                        |       ---------------------------------------------------------------------------------------------------------------      |
#                                        |       |                                                                                                             |      |
#                                        |       |                                                                                                             |      |
#                                 clean_rollup_profiles                                                                                                    clean_individual_profiles
#
#                                                release
#                                                   |
#                                                 build
#                                                   |
#                                                 clean
#
#                                               bundle:update
#
#                                                  spec
#

require 'dotenv/tasks'
require 'rspec/core/rake_task'
require 'open3'
require 'os'
require 'json'
require 'fileutils'

def get_config_files_folder
  "#{__dir__}/config"
end

gem_versions = JSON.parse(File.read(File.expand_path("#{get_config_files_folder}/GEM_VERSIONS", __FILE__)).strip)
gems_to_release = JSON.parse(File.read(File.expand_path("#{get_config_files_folder}/GEMS_TO_RELEASE", __FILE__)).strip)
GEMS_TO_IGNORE = %w{azure_mgmt_graph, azure_mgmt_mobile_engagement, azure_mgmt_server_management}
REGEN_EXCLUDES = ['azure_sdk']

desc 'Azure Resource Manager related tasks which often traverse each of the arm gems'
namespace :arm do
  desc 'Delete ./pkg for each of the Azure Resource Manager projects'
  task :clean, [:gem_name] do |_, args|
    each_gem do |dir|
      if !should_i_continue(args[:gem_name], dir)
        next
      end

      FileUtils.rm_rf('pkg')
    end
  end

  desc 'Delete multiple version folders for each sdk'
  task :clean_generated, [:gem_name] do |_, args|
    clean_generated('management', args[:gem_name])
    clean_generated('data', args[:gem_name])
    Dir.chdir(File.expand_path('..', __FILE__))
  end

  desc 'Build gems for each of the Azure Resource Manager projects'
  task :build, [:gem_name] => :clean do |_, args|
    each_gem do |dir|
      if !should_i_continue(args[:gem_name], dir)
        next
      end

      execute_and_stream('rake build')
    end
  end

  desc 'Push gem for each of the Azure projects'
  task :release, [:key] => :build do |_, args|
    gems_to_release.each do |key, gems|
      gems.each do |gem|
        if(key == 'rollup')
          Dir.chdir("#{__dir__}/azure_sdk")
          version = gem_versions['rollup'][gem]
        elsif(key == 'management')
          Dir.chdir("#{__dir__}/management/#{gem}")
          version = gem_versions['management'][gem]
        elsif(key == 'data')
          Dir.chdir("#{__dir__}/data/#{gem}")
          version = gem_versions['data'][gem]
        end

        # Delay for 10 seconds before publishing gem
        puts "Going to sleep for 10 seconds before publishing #{gem} ..."
        sleep(10)

        execute("gem push ./pkg/#{gem}-#{version}.gem" + (args[:key].nil? ? '' : " -k #{args[:key]}"))
      end
    end
  end

  desc 'Regen code for each sdk with all its api versions'
  task :regen_sdk_versions, [:gem_name] => :clean_generated do |_, args|
    json = get_config_file
    each_gem do |dir| # dir corresponds to each azure_* folder
      if !should_i_continue(args[:gem_name], dir)
        next
      end

      if REGEN_EXCLUDES.include?(dir.to_s)
        update_gem_version('lib/azure_sdk/version.rb', gem_versions['rollup'][dir])
        next
      end

      mode = get_mode(dir)
      
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
        command = "#{ar_base_command} --package-name=#{package_name} #{ar_arguments} --package-version=#{gem_versions[mode][dir]} --output-folder=#{File.join(Dir.pwd, 'lib', output_folder)} --ruby --azure-arm"
        execute_and_stream(command)
      end
      update_gem_version('lib/version.rb', gem_versions[mode][dir])
    end
  end

  desc 'Bundler related helper'
  namespace :bundle do
    desc 'bundle update for each of the Azure Resource Manager projects'
    task :update, [:gem_name] do |_, args|
      each_gem do
        if !should_i_continue(args[:gem_name], dir)
          next
        end

        execute_and_stream('bundle update')
      end
    end
  end

  desc 'run specs for each of the Azure Resource Manager projects'
  task :spec, [:gem_name] => :dotenv do |_, args|
    each_gem do |gem_dir|
      if !should_i_continue(args[:gem_name], gem_dir)
        next
      end

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
      if subdir != 'azure_sdk'
        folder_to_be_cleaned = File.expand_path("../azure_sdk/lib/#{subdir}", __FILE__)
        puts "Cleaning folder - #{folder_to_be_cleaned}"
        FileUtils.rm_rf(folder_to_be_cleaned)
      end
    end
  end

  desc 'Clean Individual Profiles'
  task :clean_individual_profiles, [:gem_name] do |_, args|
    each_gem_dir do |gem|
      if !should_i_continue(args[:gem_name], gem)
        next
      end

      if REGEN_EXCLUDES.include?gem
        next
      end

      mode = get_mode(gem)
      Dir.chdir("#{__dir__}/#{mode}/#{gem}/lib/profiles")

      subdir_list = Dir['*'].reject{|o| not File.directory?(o)}
      subdir_list.each do |subdir|
        folder_to_be_cleaned = "#{__dir__}/#{mode}/#{gem}/lib/profiles/#{subdir}"
        puts "Cleaning folder - #{folder_to_be_cleaned}"
        FileUtils.rm_rf(folder_to_be_cleaned)
      end
    end
  end

  desc 'Clean All profiles'
  task :clean_all_profiles, [:gem_name] => [:clean_rollup_profiles, :clean_individual_profiles] do
    puts 'Cleaned all profiles'
  end

  desc 'Regen rollup profiles'
  task :regen_rollup_profile => :clean_rollup_profiles do
    Dir.chdir(__dir__)
    # Sample Command
    # bundle exec ruby profile_generator_client.rb --dir_metadata=dir_metadata.json --profile=profiles.json --mode=rollup --key=azure_sdk
    command = "#{get_base_profile_generation_cmd} --dir_metadata=#{get_config_files_folder}/dir_metadata.json --profile=#{get_config_files_folder}/profiles.json --mode=rollup --key=azure_sdk --sdk_path=#{__dir__}"
    execute_and_stream(command)
  end

  desc 'Regen individual profiles'
  task :regen_individual_profiles, [:gem_name] => :clean_individual_profiles do |_, args|
    each_gem_dir do |gem|
      if !should_i_continue(args[:gem_name], gem)
        next
      end

      if REGEN_EXCLUDES.include?gem
        next
      end
      mode = get_mode(gem)

      # Sample Command
      # bundle exec ruby profile_generator_client.rb --dir_metadata=dir_metadata.json --profile=authorization_profiles.json --mode=management --key=azure_mgmt_authorization
      command = "#{get_base_profile_generation_cmd} --dir_metadata=#{get_config_files_folder}/dir_metadata.json --profile=#{get_config_files_folder}/profiles.json --mode=#{mode} --key=#{gem} --sdk_path=#{__dir__}"
      execute_and_stream(command)
    end
  end

  desc 'Generate individual require files'
  task :regen_individual_require_files, [:gem_name] do |_, args|
    key = args[:gem_name].nil? ? '*' : args[:gem_name]
    command = "bundle exec ruby #{__dir__}/generators/requirefilegen/src/require_file_generator.rb --mode=individual --sdk_path=#{__dir__} --gem_name=#{key}"
    execute_and_stream(command)
  end

  desc 'Generate rollup require files'
  task :regen_rollup_require_files do
    command = "bundle exec ruby #{__dir__}/generators/requirefilegen/src/require_file_generator.rb --mode=rollup --sdk_path=#{__dir__} --gem_name=azure_sdk"
    execute_and_stream(command)
  end

  desc 'Generate all require files'
  task :regen_all_require_files, [:gem_name] => [:regen_individual_require_files, :regen_rollup_require_files] do
    puts 'Generated all require files'
  end

  desc 'Regen all profiles'
  task :regen_all_profiles, [:gem_name] => [:regen_rollup_profile, :regen_individual_profiles] do
    puts 'Regenerated all profiles'
  end

  desc 'Regen all versions of sdk and profiles'
  task :regen, [:gem_name] => [:regen_sdk_versions, :regen_all_profiles] do
    puts 'Regenerated all versions of sdk and profiles'
  end
end

Rake::Task['arm:regen_rollup_profile'].enhance do
  Rake::Task['arm:regen_rollup_require_files'].invoke
  Rake::Task['arm:regen_rollup_require_files'].reenable
end

Rake::Task['arm:regen_individual_profiles'].enhance do |_, args|
  Rake::Task['arm:regen_individual_require_files'].invoke(args[:gem_name])
  Rake::Task['arm:regen_individual_require_files'].reenable
end

Rake::Task['arm:regen_sdk_versions'].enhance do |_, args|
  Rake::Task['arm:regen_individual_require_files'].invoke(args[:gem_name])
  Rake::Task['arm:regen_individual_require_files'].reenable
end

task :default => :spec

def should_i_continue(key, dir)
  return (key.nil? || key == dir)
end

def get_mode(dir)
  mode = ''
  if (dir.include? '_mgmt_')
    mode = 'management'
  else
    mode = 'data'
  end
  mode
end

def clean_generated(parent_dir, key)
  Dir.chdir(File.expand_path("../#{parent_dir}", __FILE__))
  gem_folders = Dir['*'].reject{|o| not File.directory?(o)}
  gem_folders.each do |gem|
    if !should_i_continue(key, gem)
      next
    end

    if GEMS_TO_IGNORE.include?gem
      next
    end

    Dir.chdir(File.expand_path("../#{parent_dir}/#{gem}/lib", __FILE__))
    subdir_list = Dir['*'].reject{|o| not File.directory?(o)}
    subdir_list.each do |subdir|
      if subdir.to_s == 'profiles'
        next
      end

      folder_to_be_cleaned = File.expand_path("../#{parent_dir}/#{gem}/lib/#{subdir}", __FILE__)
      puts "Cleaning folder - #{folder_to_be_cleaned}"
      FileUtils.rm_rf(folder_to_be_cleaned)
    end
  end
end

def get_base_profile_generation_cmd
  "bundle exec ruby #{__dir__}/generators/profilegen/src/profile_generator_client.rb"
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
  config_file = File.read(File.expand_path("#{get_config_files_folder}/config.json", __FILE__))
  JSON.parse(config_file)
end

def each_child
  each_child_mode_specific('management') {|dir| yield dir }
  each_child_mode_specific('data') {|dir| yield dir }

  Dir.chdir(File.expand_path('../azure_sdk', __FILE__))
  yield('azure_sdk')
end

def each_child_mode_specific(parent_dir, change_dir = true)
  Dir.chdir(File.expand_path("../#{parent_dir}", __FILE__))
  sub_dirs = Dir['*'].reject{|o| not File.directory?(o)}
  sub_dirs.each do |dir|
    if GEMS_TO_IGNORE.include?dir
      next
    end

    if (change_dir)
      Dir.chdir(dir) do
        yield(dir)
      end
    else
      yield dir
    end
  end
end

def each_gem
  each_child do |dir|
    gem_dir = dir.split('/').last
    yield gem_dir
  end
end

def each_gem_dir
  each_child_mode_specific('management', false) {|dir| yield dir }
  each_child_mode_specific('data', false)  {|dir| yield dir }
end

def update_gem_version(version_file, new_version)
  existing_contents =  File.read(version_file)
  content_to_replace = existing_contents.gsub(/VERSION = '.*'/, "VERSION = '#{new_version}'")
  File.open(version_file, 'w') { |file| file.puts content_to_replace }
end
