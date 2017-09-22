# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative 'lib/client'
require_relative 'lib/version'

Gem::Specification.new do |spec|
  spec.name          = 'azure_mgmt_profile_2016_06_30'
  spec.version       = Azure::Profiles::Management::VERSION
  spec.authors       = 'Microsoft Corporation'
  spec.email         = 'azrubyteam@microsoft.com'
  spec.description   = 'Microsoft Azure Management Profile'
  spec.summary       = 'Official Ruby client library to consume Microsoft Azure Management profile version: 2016_06_30.'
  spec.homepage      = 'https://aka.ms/azure-sdk-for-ruby'
  spec.license       = 'MIT'

  spec.files         = Dir['LICENSE.txt', 'lib/**/*']
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10'
  spec.add_development_dependency 'rspec', '~> 3'
  spec.add_development_dependency 'dotenv', '~> 2'

  spec.add_runtime_dependency 'azure_mgmt_compute'
  spec.add_runtime_dependency 'azure_mgmt_network'
end
