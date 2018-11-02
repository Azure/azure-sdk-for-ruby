# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'erb'
require 'json'
require_relative 'metadatagen_options_parser'
require 'fileutils'

class MetaDataGenerator
  def initialize(plane, gem_name, azure_sdk_for_ruby_location)
    @plane = plane
    @gem_name = gem_name
    @azure_sdk_for_ruby_location = azure_sdk_for_ruby_location
  end

  def copy_file(file_name, destination)
    FileUtils.copy("#{@azure_sdk_for_ruby_location}/generators/metadatagen/src/resources/#{file_name}", destination)
  end

  def check_and_create_directory(directory_path)
    if !File.directory?(directory_path)
      FileUtils.mkdir directory_path
    end
  end

  def check_and_create_file(check_path, resource_file_name, destination)
    if !FileTest.exist?(check_path)
      copy_file(resource_file_name, destination)
    end
  end

  def process
    check_and_create_directory "#{@azure_sdk_for_ruby_location}/#{@plane}/#{@gem_name}/spec"
    check_and_create_directory "#{@azure_sdk_for_ruby_location}/#{@plane}/#{@gem_name}/lib"
    check_and_create_directory "#{@azure_sdk_for_ruby_location}/#{@plane}/#{@gem_name}/lib/profiles"

    check_and_create_file("#{@azure_sdk_for_ruby_location}/#{@plane}/#{@gem_name}/.rspec", '.rspec', "#{@azure_sdk_for_ruby_location}/#{@plane}/#{@gem_name}")
    check_and_create_file("#{@azure_sdk_for_ruby_location}/#{@plane}/#{@gem_name}/LICENSE.txt",'LICENSE.txt', "#{@azure_sdk_for_ruby_location}/#{@plane}/#{@gem_name}")
    check_and_create_file("#{@azure_sdk_for_ruby_location}/#{@plane}/#{@gem_name}/Rakefile", 'Rakefile', "#{@azure_sdk_for_ruby_location}/#{@plane}/#{@gem_name}")
    if Dir["#{@azure_sdk_for_ruby_location}/#{@plane}/#{@gem_name}/spec"].empty?
      check_and_create_file("#{@azure_sdk_for_ruby_location}/#{@plane}/#{@gem_name}/spec/spec_helper.rb", 'spec_helper.rb', "#{@azure_sdk_for_ruby_location}/#{@plane}/#{@gem_name}/spec")
    end
    check_and_create_file("#{@azure_sdk_for_ruby_location}/#{@plane}/#{@gem_name}/lib/#{@gem_name}.rb",'require_file.rb', "#{@azure_sdk_for_ruby_location}/#{@plane}/#{@gem_name}/lib/#{@gem_name}.rb")

    @module_name = get_module_name

    if !FileTest.exist?("#{@azure_sdk_for_ruby_location}/#{@plane}/#{@gem_name}/lib/module_definition.rb")
      module_definition_file = get_module_definition_file
      module_definition_file.write(get_renderer(get_module_definition_renderer_template))
    end

    if !FileTest.exist?("#{@azure_sdk_for_ruby_location}/#{@plane}/#{@gem_name}/lib/version.rb")
      version_file = get_version_file
      version_file.write(get_renderer(get_version_renderer_template))
    end

    if !FileTest.exist?("#{@azure_sdk_for_ruby_location}/#{@plane}/#{@gem_name}/#{@gem_name}.gemspec")
      gemspec_file = get_gemspec_file
      gemspec_file.write(get_renderer(get_gemspec_renderer_template))
    end
  end

  def get_module_name
    gem_array = @gem_name.split '_'
    gem_array[gem_array.length - 1].capitalize
  end

  def get_module_definition_renderer_template
    File.read("#{@azure_sdk_for_ruby_location}/generators/metadatagen/src/resources/templates/module_definition_template.template")
  end

  def get_version_renderer_template
    File.read("#{@azure_sdk_for_ruby_location}/generators/metadatagen/src/resources/templates/version_template.template")
  end

  def get_gemspec_renderer_template
    File.read("#{@azure_sdk_for_ruby_location}/generators/metadatagen/src/resources/templates/gemspec_template.template")
  end

  def get_module_definition_file
    File.new("#{@azure_sdk_for_ruby_location}/#{@plane}/#{@gem_name}/lib/module_definition.rb", 'w')
  end

  def get_version_file
    File.new("#{@azure_sdk_for_ruby_location}/#{@plane}/#{@gem_name}/lib/version.rb", 'w')
  end

  def get_gemspec_file
    File.new("#{@azure_sdk_for_ruby_location}/#{@plane}/#{@gem_name}/#{@gem_name}.gemspec", 'w')
  end

  def get_renderer(template)
    renderer = ERB.new(template, 0, '-%>')
    renderer.result(get_binding)
  end

  def get_binding
    binding
  end
end

options = MetaDataGeneratorOptionsParser.options ARGV
obj = MetaDataGenerator.new(options.plane, options.gem_name,options.sdk_path)
obj.process