# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'azure_mgmt_compute/module_definition'
require 'azure_mgmt_compute/version'

Gem::Specification.new do |spec|
  spec.name          = 'azure_mgmt_compute'
  spec.version       = Azure::ARM::Compute::VERSION
  spec.authors       = 'Microsoft Corporation'
  spec.email         = 'azsdkteam@microsoft.com'
  spec.description   = 'Microsoft Azure Compute Management Client Library for Ruby'
  spec.summary       = 'Official ruby client library to consume Microsoft Azure Compute Management services.'
  spec.homepage      = 'http://github.com/azure/azure-sdk-for-ruby'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10'
  spec.add_development_dependency 'rspec', '~> 3'
  spec.add_development_dependency 'dotenv', '~> 2'
  spec.add_development_dependency 'azure_mgmt_resources', '~> 0.1'
  spec.add_development_dependency 'azure_mgmt_storage', '~> 0.1'
  spec.add_development_dependency 'azure_mgmt_network', '~> 0.1'

  spec.add_runtime_dependency 'json', '~> 1.8'
  spec.add_runtime_dependency 'concurrent-ruby', ['>= 1.0.0.pre1', '<2']
  spec.add_runtime_dependency 'faraday', '~> 0.9'
  spec.add_runtime_dependency 'faraday-cookie_jar', '~> 0.0.6'
  spec.add_runtime_dependency 'ms_rest_azure', '~> 0.1'
end
