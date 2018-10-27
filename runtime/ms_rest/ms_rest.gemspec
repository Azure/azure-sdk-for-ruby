# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

# coding: utf-8

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ms_rest/version'

Gem::Specification.new do |spec|
  spec.name          = 'ms_rest'
  spec.version       = MsRest::VERSION
  spec.authors       = 'Microsoft Corporation'
  spec.email         = 'azsdkteam@microsoft.com'

  spec.summary       = 'Azure Client Library for Ruby.'
  spec.description   = 'Azure Client Library for Ruby.'
  spec.homepage      = 'https://aka.ms/ms_rest'
  spec.license       = 'MIT'
  spec.metadata      = {
    'bug_tracker_uri' => 'https://github.com/Azure/azure-sdk-for-ruby/issues',
    'changelog_uri' => 'https://github.com/Azure/azure-sdk-for-ruby/blob/master/runtime/ms_rest/CHANGELOG.md',
    'documentation_uri' => 'https://azure.microsoft.com/en-us/develop/ruby/',
    'homepage_uri' => 'https://aka.ms/azure-sdk-for-ruby',
    'source_code_uri' => "https://github.com/Azure/azure-sdk-for-ruby/tree/ms_rest-v#{MsRest::VERSION}"
  }

  spec.files         = Dir['ca-cert.pem', 'CHANGELOG.md', 'README.md', 'LICENSE.txt', 'lib/**/*']
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.3'

  spec.add_runtime_dependency 'concurrent-ruby', '~> 1.0'
  spec.add_runtime_dependency 'faraday', '~> 0.9'
  spec.add_runtime_dependency 'timeliness', '~> 0.3'
end
