# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'azure_compute_management/module_definition'
require 'azure_compute_management/version'

Gem::Specification.new do |spec|
  spec.name          = 'azure_compute_management'
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
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.3.0'

  spec.add_runtime_dependency 'json', '~> 1.8.3'
  spec.add_runtime_dependency 'concurrent-ruby-ext', '~> 0.8.0'
  spec.add_runtime_dependency 'faraday', '~> 0.9.1'
  spec.add_runtime_dependency 'faraday-cookie_jar', '~> 0.0.6'
  spec.add_runtime_dependency 'ms_rest_azure', '~> 0.1.0'
  spec.add_runtime_dependency 'azure_resource_management', '~> 0.1.0'
  spec.add_runtime_dependency 'azure_storage_management', '~> 0.1.0'
  spec.add_runtime_dependency 'azure_network_management', '~> 0.1.0'
end
