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
      delete_command_linux = "find lib/* -d -type d -exec  rm -rf '{}' \;"
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
