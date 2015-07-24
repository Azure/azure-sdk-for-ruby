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
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'azure_resource_management/module_definition'
require 'azure_resource_management/version'

Gem::Specification.new do |spec|
  spec.name          = "azure_resource_management"
  spec.version       = Azure::ARM::Resources::VERSION
  spec.authors       = ['Microsoft Corporation', 'AppFog', 'Akvelon']
  spec.email         = 'azureruby@microsoft.com'
  spec.description   = 'Microsoft Azure Resource Management Client Library for Ruby'
  spec.summary       = 'Official ruby client library to consume Microsoft Azure Resource Management services.'
  spec.homepage      = 'http://github.com/azure/azure-sdk-for-ruby'
  spec.license       = 'Apache License, Version 2.0'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency "json", "~> 1.8.3"
  spec.add_runtime_dependency "timeliness", "~> 0.3.7"
  spec.add_runtime_dependency "concurrent-ruby-ext", "~> 0.8.0"
  spec.add_runtime_dependency "ms_rest_azure", "~> 0.1.0"
end
