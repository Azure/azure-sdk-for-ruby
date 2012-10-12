#-------------------------------------------------------------------------
# Copyright (c) Microsoft. All rights reserved.
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
require "date"

Gem::Specification.new do |s|
  s.name    = "azure"
  s.version = "0.1.0"

  s.authors     = ["Microsoft"]
  s.email       = "azure@microsoft.com"
  s.description = "Services and ruby SDKs to access the Windows Azure platform."
  s.summary     = "Implementation of several Windows Azure SDKs in ruby."
  s.homepage    = "http://azure.com"
  s.license     = 'Apache License, Version 2.0'
  s.files       = `git ls-files`.split("\n")

  s.required_ruby_version = '>= 1.8.7'

  s.add_runtime_dependency "backports"
  s.add_runtime_dependency("nokogiri",   "~> 1.5")
  s.add_runtime_dependency("mime-types", "~> 1.0")
  s.add_runtime_dependency "libxml-ruby" 
  s.add_runtime_dependency "extlib_lite"
  s.add_runtime_dependency "json"

  s.add_development_dependency("rake")
  s.add_development_dependency("minitest", "~> 3.0")
  s.add_development_dependency("mocha")
  s.add_development_dependency("yard")
  s.add_development_dependency("yard-tomdoc")
  s.add_development_dependency("turn")
end
