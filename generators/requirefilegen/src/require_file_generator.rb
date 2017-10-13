# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'erb'
require 'json'
require_relative 'require_file_generator_options_parser'

class RequireFileGenerator
  EXCLUDE_GEMS = ['azure_mgmt_insights']

  attr_accessor :requires

  def initialize(azure_sdk_location, mgmt_sdks_location)
    @azure_sdk_location = azure_sdk_location
    @mgmt_sdks_location = mgmt_sdks_location
    @current_location = Dir.pwd
    @file_to_be_written = ''
    @requires = []
  end

  #
  # Generates require files for the individual gems.
  # These files must include the require for individual versions
  # and individual profiles.
  #
  # Sample structure for an individual gem is as follows:
  #     azure_mgmt_analysis_services
  #        +----lib
  #        |     +----2016-05-16
  #        |     |        +------......
  #        |     +----2017-07-14
  #        |     |        +------......
  #        |     +----profiles
  #        |     |        +------common
  #        |     |        +------profile_2016_05_16
  #        |     |        +------profile_2017_07_14
  #        |     |        +------profile_latest
  #        |     +----azure_mgmt_analysis_services.rb (*)
  #        |     +----module_definition.rb
  #        |     +----version.rb
  #        +----spec
  #        |.....
  # * - The file to be created.
  #
  # In the lib folder, the module definition and the version files need
  # to be ignored.
  #
  # Within each version, there is a generated folder which has a single file
  # that needs to be added to the require file.
  #
  # Within the profiles folder, the common folder needs to be ignored. Under the
  # rest of the (profiles) folder, the module definition file needs to be ignored
  # and the remaining one file needs to be added to the require file.
  #
  def generate_require_files_for_individual_gems
    puts 'Generating require files for individual gems'
    Dir.chdir("#{@current_location}/#{@mgmt_sdks_location}")
    gems = Dir['*'].reject{|o| not File.directory?(o)}
    gems.each do |gem|
      # azure_mgmt_insights is a special case gem which we have stopped
      # supporting. But the folder is present and should be ignored in this
      # process
      if(EXCLUDE_GEMS.include?gem)
        next
      end

      @requires = []
      @file_to_be_written = ''

      puts "Generating require files for #{gem}"

      Dir.chdir("#{@current_location}/#{@mgmt_sdks_location}/#{gem}/lib")
      sub_files_list = Dir['*'].reject{|o| File.directory?(o)}
      sub_files_list.each do |file|
        # Ignore the module definition and version files.
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
            # Ignore the common folder
            if profile_folder == 'common'
              next
            end

            Dir.chdir("#{@current_location}/#{@mgmt_sdks_location}/#{gem}/lib/profiles/#{profile_folder}")
            files_list = Dir['*'].reject{|o| File.directory?(o)}
            files_list.each do |file|
              # Ignore the module definition file
              if(file.end_with?'module_definition.rb')
                next
              end

              @requires << "profiles/#{profile_folder}/#{file}"
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

  #
  # Generates require files for the rollup gems.
  # The structure of the rollup_gem is as follows:
  #     azure_sdk
  #        +----lib
  #        |     +----azure_sdk
  #        |     |       +-------version.rb
  #        |     +----common
  #        |     |       +-------configurable.rb
  #        |     |       |-------default.rb
  #        |     +----profile_azure_stack
  #        |     |       +-------....
  #        |     +----profile_latest
  #        |     |       +-------....
  #        |     +----....
  #        |     +----azure_sdk.rb(*)
  #        +-----spec
  #        |......
  #        |......
  # * - The file to be created.
  #
  # The 'azure_sdk' and 'common' folder should be ignored. All the
  # other folders are individual profiles need to be considered for
  # addition to the require file.
  #
  # Within each profile folder, there are 2 files (folders are ignored)
  # The module definition file need not be considered. The profile client
  # file must be added to the require file.
  #
  def generate_require_files_for_rollup_gem
    puts 'Generating require files for rollup gem'
    @requires = []
    @file_to_be_written = "#{@current_location}/#{@azure_sdk_location}/lib/azure_sdk.rb"
    Dir.chdir("#{@current_location}/#{@azure_sdk_location}/lib")
    sub_dirs = Dir['*'].reject{|o| not File.directory?(o)}
    sub_dirs.each do |sub_dir|
      # Ignore the 'common' & 'azure_sdk' folders.
      if(sub_dir == 'common' || sub_dir == 'azure_sdk' )
        next
      end

      Dir.chdir("#{@current_location}/#{@azure_sdk_location}/lib/#{sub_dir}")
      sub_files_list = Dir['*'].reject{|o| File.directory?(o)}
      sub_files_list.each do |file|
        # Ignore the module definition file
        if(file.end_with?'module_definition.rb')
          next
        end

        @requires << "#{sub_dir}/#{file}"
      end

    end

    remove_rb_extension
    file = get_require_file
    file.write(get_renderer(get_renderer_template))
  end

  #
  # Removes the .rb from the requires. The generated requires is
  # based on the file names and will have the .rb extension to them.
  # This needs to be removed before rendering.
  # Eg:
  #    azure_mgmt_analysis_services.rb must be changed to
  #    azure_mgmt_analysis_services
  #
  def remove_rb_extension
    @requires.map! do |require|
      if(require.end_with?'.rb')
        require.slice(0, require.length - 3)
      end
    end
  end

  #
  # Creates the file to be written
  #
  def get_require_file
    File.new(@file_to_be_written, 'w')
  end

  #
  # Gets the template to be rendered. Reads the require_file_template.template
  # and returns the object.
  #
  def get_renderer_template
    File.read("#{@current_location}/resources/templates/require_file_template.template")
  end

  #
  # get_renderer method used for rendering the erb template
  #
  # @param template [File] template file
  #
  # @return [File] rendered file
  #
  def get_renderer(template)
    renderer = ERB.new(template, 0, '-%>')
    renderer.result(get_binding)
  end

  #
  # get_binding method used for rendering the erb template
  #
  def get_binding
    binding
  end
end

options = RequireFileGeneratorOptionsParser.options ARGV
obj = RequireFileGenerator.new('../../../azure_sdk', '../../../management')
if options.mode == 'rollup'
  obj.generate_require_files_for_rollup_gem
else
  obj.generate_require_files_for_individual_gems
end