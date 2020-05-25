# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require '../azure_mgmt_consumption/lib/module_definition'
require '../azure_mgmt_consumption/lib/version'

Gem::Specification.new do |spec|
  spec.name          = 'azure_mgmt_consumption'
  spec.version       = Azure::Consumption::Mgmt::VERSION
  spec.authors       = 'Microsoft Corporation'
  spec.email         = 'azrubyteam@microsoft.com'
  spec.description   = 'Microsoft Azure Consumption Services Library for Ruby'
  spec.summary       = 'Official Ruby client library to consume Microsoft Azure Consumption.'
  spec.homepage      = 'https://aka.ms/azure-sdk-for-ruby'
  spec.license       = 'MIT'
  spec.metadata      = {
    'bug_tracker_uri' => 'https://github.com/Azure/azure-sdk-for-ruby/issues',
    'changelog_uri' => 'https://github.com/Azure/azure-sdk-for-ruby/blob/master/ChangeLog.md',
    'documentation_uri' => 'https://azure.microsoft.com/en-us/develop/ruby/',
    'homepage_uri' => 'https://aka.ms/azure-sdk-for-ruby',
    'source_code_uri' => 'https://github.com/Azure/azure-sdk-for-ruby/tree/master/management/azure_mgmt_consumption'
  }

  spec.files         = Dir["LICENSE.txt", "lib/**/*"]
  spec.files.reject! { |fn| fn.include? "build.json" }
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10'
  spec.add_development_dependency 'rspec', '~> 3'
  spec.add_development_dependency 'dotenv', '~> 2'

  spec.add_runtime_dependency 'ms_rest_azure', '~> 0.12.0'
end
