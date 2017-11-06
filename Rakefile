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

gem_versions = JSON.parse(File.read(File.expand_path('../GEM_VERSIONS', __FILE__)).strip)
gems_to_release = JSON.parse(File.read(File.expand_path('../GEMS_TO_RELEASE', __FILE__)).strip)
GEMS_TO_IGNORE = ['azure_mgmt_insights']
REGEN_EXCLUDES = ['azure_sdk']

desc 'Azure Resource Manager related tasks which often traverse each of the arm gems'
namespace :arm do
  desc 'Delete ./pkg for each of the Azure Resource Manager projects'
  task :clean do
    each_gem do
      FileUtils.rm_rf('pkg')
    end
  end

  desc 'Delete multiple version folders for each sdk'
  task :clean_generated do
    Dir.chdir(File.expand_path('../management', __FILE__))
    gem_folders = Dir['*'].reject{|o| not File.directory?(o)}
    gem_folders.each do |gem|
      Dir.chdir(File.expand_path("../management/#{gem}/lib", __FILE__))
      subdir_list = Dir['*'].reject{|o| not File.directory?(o)}
      subdir_list.each do |subdir|
        if subdir.to_s == 'profiles'
          next
        end

        folder_to_be_cleaned = File.expand_path("../management/#{gem}/lib/#{subdir}", __FILE__)
        puts "Cleaning folder - #{folder_to_be_cleaned}"
        FileUtils.rm_rf(folder_to_be_cleaned)
      end
    end
    Dir.chdir(File.expand_path('..', __FILE__))
  end

  desc 'Build gems for each of the Azure Resource Manager projects'
  task :build => :clean do
    each_gem do
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
        end

        # Delay for 10 seconds before publishing gem
        puts "Going to sleep for 10 seconds before publishing #{gem} ..."
        sleep(10)

        execute("gem push ./pkg/#{gem}-#{version}.gem" + (args[:key].nil? ? '' : " -k #{args[:key]}"))
      end
    end
  end

  desc 'Regen code for each sdk with all its api versions'
  task :regen => :clean_generated do
    json = get_config_file
    each_gem do |dir| # dir corresponds to each azure_mgmt_* folder
      if REGEN_EXCLUDES.include?(dir.to_s)
        update_gem_version('lib/azure_sdk/version.rb', gem_versions['rollup'][dir])
        next
      end
      
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
        command = "#{ar_base_command} --package-name=#{package_name} #{ar_arguments} --package-version=#{gem_versions['management'][dir]} --output-folder=#{File.join(Dir.pwd, 'lib', output_folder)} --ruby --azure-arm"
        execute_and_stream(command)
      end
      update_gem_version('lib/version.rb', gem_versions['management'][dir])
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
    each_gem_dir do |gem|
      if REGEN_EXCLUDES.include?gem
        next
      end

      Dir.chdir("#{__dir__}/management/#{gem}/lib/profiles")
      subdir_list = Dir['*'].reject{|o| not File.directory?(o)}
      subdir_list.each do |subdir|
        if subdir.to_s != 'common'
          folder_to_be_cleaned = "#{__dir__}/management/#{gem}/lib/profiles/#{subdir}"
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
    Dir.chdir(__dir__)
    # Sample Command
    # bundle exec ruby profile_generator_client.rb --dir_metadata=dir_metadata.json --profile=profiles.json --mode=rollup --key=azure_sdk
    command = "#{get_base_profile_generation_cmd} --dir_metadata=#{__dir__}/generators/profilegen/src/resources/dir_metadata.json --profile=#{get_profile_spec_files_folder}/profiles.json --mode=rollup --key=azure_sdk --sdk_path=#{__dir__}"
    execute_and_stream(command)

    FileUtils.cp("#{__dir__}/generators/profilegen/src/resources/common/configurable.rb", "#{__dir__}/azure_sdk/lib/common/configurable.rb")
    FileUtils.cp("#{__dir__}/generators/profilegen/src/resources/common/default.rb", "#{__dir__}/azure_sdk/lib/common/default.rb")
  end

  desc 'Regen individual profiles'
  task :regen_individual_profiles => :clean_individual_profiles do
    each_gem_dir do |gem|
      if REGEN_EXCLUDES.include?gem
        next
      end

      # Sample Command
      # bundle exec ruby profile_generator_client.rb --dir_metadata=dir_metadata.json --profile=authorization_profiles.json --mode=management --key=azure_mgmt_authorization
      command = "#{get_base_profile_generation_cmd} --dir_metadata=#{__dir__}/generators/profilegen/src/resources/dir_metadata.json --profile=#{get_profile_spec_files_folder}/profiles.json --mode=management --key=#{gem} --sdk_path=#{__dir__}"
      execute_and_stream(command)

      FileUtils.cp("#{__dir__}/generators/profilegen/src/resources/common/configurable.rb", "#{__dir__}/management/#{gem}/lib/profiles/common/configurable.rb")
      FileUtils.cp("#{__dir__}/generators/profilegen/src/resources/common/default.rb", "#{__dir__}/management/#{gem}/lib/profiles/common/default.rb")
    end
  end

  desc 'Generate individual require files'
  task :regen_individual_require_files do
    command = "bundle exec ruby #{__dir__}/generators/requirefilegen/src/require_file_generator.rb --mode=individual --sdk_path=#{__dir__}"
    execute_and_stream(command)
  end

  desc 'Generate rollup require files'
  task :regen_rollup_require_files do
    command = "bundle exec ruby #{__dir__}/generators/requirefilegen/src/require_file_generator.rb --mode=rollup --sdk_path=#{__dir__}"
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
  "bundle exec ruby #{__dir__}/generators/profilegen/src/profile_generator_client.rb"
end

def get_profile_spec_files_folder
  "#{__dir__}/profile_specs"
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

def each_gem_dir
  Dir.chdir("#{__dir__}/management")
  subdir_list = Dir['*'].reject{|o| not File.directory?(o)}
  subdir_list.each do |subdir|
    if GEMS_TO_IGNORE.include?subdir
      next
    end

    yield subdir
  end
end

def each_child
  Dir.chdir(File.expand_path('../management', __FILE__))
  management_level_dirs = Dir['*'].reject{|o| not File.directory?(o)}
  management_level_dirs.each do |dir|
    if GEMS_TO_IGNORE.include?dir
      next
    end
    Dir.chdir(dir) do
      yield(dir)
    end
  end

  Dir.chdir(File.expand_path('../azure_sdk', __FILE__))
  yield('azure_sdk')
end

def each_gem
  each_child do |dir|
    gem_dir = dir.split('/').last
    yield gem_dir
  end
end

def update_gem_version(version_file, new_version)
  existing_contents =  File.read(version_file)
  content_to_replace = existing_contents.gsub(/VERSION = '.*'/, "VERSION = '#{new_version}'")
  File.open(version_file, 'w') { |file| file.puts content_to_replace }
end
