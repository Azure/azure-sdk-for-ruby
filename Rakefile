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
require "rake/testtask"
require "rubygems/package_task"

gem_spec = eval(File.read("./azure.gemspec"))
Gem::PackageTask.new(gem_spec) do |pkg|
  pkg.need_zip = false
  pkg.need_tar = false
end

namespace :test do
  task :require_environment do
    unset_environment = [
      ENV.fetch("AZURE_STORAGE_ACCOUNT",  nil),
      ENV.fetch("AZURE_STORAGE_ACCESS_KEY",    nil),
      # ENV.fetch("AZURE_STORAGE_TABLE_HOST",    nil),
      # ENV.fetch("AZURE_STORAGE_BLOB_HOST",     nil),
      # ENV.fetch("AZURE_STORAGE_QUEUE_HOST",    nil),
      ENV.fetch("AZURE_SERVICEBUS_NAMESPACE", nil),
      ENV.fetch("AZURE_SERVICEBUS_ACCESS_KEY", nil),
      # ENV.fetch("AZURE_SERVICEBUS_ISSUER",     nil)
      ENV.fetch('AZURE_MANAGEMENT_CERTIFICATE', nil),
      ENV.fetch('AZURE_SUBSCRIPTION_ID', nil)
    ].include?(nil)

    abort "[ABORTING] Configure your environment to run the integration tests" if unset_environment
  end

  Rake::TestTask.new :unit do |t|
    t.pattern = "test/unit/**/*_test.rb"
    t.verbose = true
    t.libs = ["lib", "test"]
  end

  namespace :unit do
    def component_task(component)
      Rake::TestTask.new component do |t|
        t.pattern = "test/unit/#{component}/**/*_test.rb"
        t.verbose = true
        t.libs = ["lib", "test"]
      end

      task component => "test:require_environment"
    end

    component_task :affinity_group
    component_task :base_management
    component_task :blob
    component_task :cloud_service_management
    component_task :core
    component_task :database
    component_task :service
    component_task :storage_management
    component_task :table
    component_task :virtual_machine_image_management
    component_task :virtual_machine_management
    component_task :vnet
  end

  Rake::TestTask.new :integration do |t|
    t.pattern = "test/integration/**/*_test.rb"
    t.verbose = true
    t.libs = ["lib", "test"]
  end

  task :integration => :require_environment

  namespace :integration do
    def component_task(component)
      Rake::TestTask.new component do |t|
        t.pattern = "test/integration/#{component}/**/*_test.rb"
        t.verbose = true
        t.libs = ["lib", "test"]
      end

      task component => "test:require_environment"
    end

    component_task :affinity_group
    component_task :blob
    component_task :database
    component_task :location
    component_task :queue
    component_task :service_bus
    component_task :storage_management
    component_task :table
    component_task :vm
    component_task :vm_image
    component_task :vnet
  end

  task :cleanup => :require_environment do
    $:.unshift "lib"
    require 'azure'

    Azure.configure do |config|
      config.access_key     = ENV.fetch("AZURE_STORAGE_ACCESS_KEY")
      config.account_name   = ENV.fetch("AZURE_STORAGE_ACCOUNT")
      # config.table_host     = ENV.fetch("AZURE_STORAGE_TABLE_HOST")
      # config.blob_host      = ENV.fetch("AZURE_STORAGE_BLOB_HOST")
      # config.queue_host     = ENV.fetch("AZURE_STORAGE_QUEUE_HOST")

      config.acs_namespace  = ENV.fetch("AZURE_SERVICEBUS_NAMESPACE")
      config.sb_access_key  = ENV.fetch("AZURE_SERVICEBUS_ACCESS_KEY")
      # config.sb_issuer      = ENV.fetch("AZURE_SERVICEBUS_ISSUER")
      config.management_certificate  = ENV.fetch('AZURE_MANAGEMENT_CERTIFICATE')
      config.management_endpoint  = ENV.fetch("AZURE_MANAGEMENT_ENDPOINT")
      config.sql_database_management_endpoint = ENV.fetch("AZURE_SQL_DATABASE_MANAGEMENT_ENDPOINT")
      config.subscription_id  = ENV.fetch("AZURE_SUBSCRIPTION_ID")
    end
  end
end

task :test => ["test:unit", "test:integration"]

task :default => :test
