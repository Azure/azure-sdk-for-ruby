# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'erb'
require 'json'
require_relative 'require_file_generator_options_parser'

class RequireFileGenerator
  attr_accessor :requires

  def initialize(azure_sdk_location, mgmt_sdks_location)
    @azure_sdk_location = azure_sdk_location
    @mgmt_sdks_location = mgmt_sdks_location
    @current_location = Dir.pwd
    @file_to_be_written = ''
    @requires = []
  end

  def generate_require_files_for_individual_gems
    puts 'Generating require files for individual gems'
    Dir.chdir("#{@current_location}/#{@mgmt_sdks_location}")
    gems = Dir['*'].reject{|o| not File.directory?(o)}
    gems.each do |gem|
      if(gem == 'azure_mgmt_insights')
        next
      end
      @requires = []
      @file_to_be_written = ''

      puts "Generating require files for #{gem}"

      Dir.chdir("#{@current_location}/#{@mgmt_sdks_location}/#{gem}/lib")
      sub_files_list = Dir['*'].reject{|o| File.directory?(o)}
      sub_files_list.each do |file|
        if(!(file.end_with?'module_definition.rb') && (!file.end_with?'version.rb'))
          @file_to_be_written = "#{@current_location}/#{@mgmt_sdks_location}/#{gem}/lib/#{file}"
        end
      end

      sub_dirs = Dir['*'].reject{|o| not File.directory?(o)}
      sub_dirs.each do |sub_dir|
        if(sub_dir == 'profiles')
          Dir.chdir("#{@current_location}/#{@mgmt_sdks_location}/#{gem}/lib/profiles")
          profiles_folders = Dir['*'].reject{|o| not File.directory?(o)}
          profiles_folders.each do |profile_folder|
            if profile_folder != 'common'
              Dir.chdir("#{@current_location}/#{@mgmt_sdks_location}/#{gem}/lib/profiles/#{profile_folder}")
              files_list = Dir['*'].reject{|o| File.directory?(o)}
              files_list.each do |file|
                if(!file.end_with?'module_definition.rb')
                  @requires << "profiles/#{profile_folder}/#{file}"
                end
              end
            end
          end
        else
          Dir.chdir("#{@current_location}/#{@mgmt_sdks_location}/#{gem}/lib/#{sub_dir}/generated")
          files_list = Dir['*'].reject{|o| File.directory?(o)}
          @requires << "#{sub_dir}/generated/#{files_list[0]}"
        end
      end

      remove_rb_extension
      file = get_require_file
      file.write(get_renderer(get_renderer_template))
    end
  end

  def generate_require_files_for_rollup_gem
    puts 'Generating require files for rollup gem'
    @requires = []
    @file_to_be_written = "#{@current_location}/#{@azure_sdk_location}/lib/azure_sdk.rb"
    Dir.chdir("#{@current_location}/#{@azure_sdk_location}/lib")
    sub_dirs = Dir['*'].reject{|o| not File.directory?(o)}
    sub_dirs.each do |sub_dir|
      if(sub_dir != 'common' && sub_dir != 'azure_sdk' )
        Dir.chdir("#{@current_location}/#{@azure_sdk_location}/lib/#{sub_dir}")
        sub_files_list = Dir['*'].reject{|o| File.directory?(o)}
        sub_files_list.each do |file|
          if(!(file.end_with?'module_definition.rb'))
            @requires << "#{sub_dir}/#{file}"
          end
        end
      end
    end

    remove_rb_extension
    file = get_require_file
    file.write(get_renderer(get_renderer_template))
  end

  def remove_rb_extension
    @requires.map! do |require|
      require.slice(0, require.length - 3)
    end
  end

  def get_require_file
    File.new(@file_to_be_written, 'w')
  end

  def get_renderer(template)
    renderer = ERB.new(template, 0, '-%>')
    renderer.result(get_binding)
  end

  def get_binding
    binding
  end

  def get_renderer_template
    File.read("#{@current_location}/resources/templates/require_file_template.template")
  end
end

options = RequireFileGeneratorOptionsParser.options ARGV
obj = RequireFileGenerator.new('../../../azure_sdk', '../../../management')
if options.mode == 'rollup'
  obj.generate_require_files_for_rollup_gem
else
  obj.generate_require_files_for_individual_gems
end