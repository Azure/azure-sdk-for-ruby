require "rake/testtask"
require "rubygems/package_task"

gem_spec = eval(File.read("./azure.gemspec"))
Gem::PackageTask.new(gem_spec) do |pkg|
  pkg.need_zip = false
  pkg.need_tar = false
end

namespace :test do
  Rake::TestTask.new :unit do |t|
    t.pattern = "test/unit/**/*_test.rb"
    t.verbose = true
    t.libs = ["lib", "test"]
  end

  Rake::TestTask.new :integration do |t|
    t.pattern = "test/integration/**/*_test.rb"
    t.verbose = true
    t.libs = ["lib", "test"]
  end

  namespace :integration do
    def component_task(component)
      Rake::TestTask.new component do |t|
        t.pattern = "test/integration/#{component}/**/*_test.rb"
        t.verbose = true
        t.libs = ["lib", "test"]
      end
    end

    component_task :tables
    component_task :blobs
    component_task :queues
    component_task :service_bus

    task :conditionally do
      name          = ENV.fetch("AZURE_ACCOUNT_NAME",  nil)
      key           = ENV.fetch("AZURE_ACCESS_KEY",    nil)
      t_host        = ENV.fetch("AZURE_TABLE_HOST",    nil)
      b_host        = ENV.fetch("AZURE_BLOB_HOST",     nil)
      q_host        = ENV.fetch("AZURE_QUEUE_HOST",    nil)
      acs_namespace = ENV.fetch("AZURE_ACS_NAMESPACE", nil)
      sb_access_key = ENV.fetch("AZURE_SB_ACCESS_KEY", nil)
      sb_issuer     = ENV.fetch("AZURE_SB_ISSUER",     nil)

      if name && key && t_host && b_host && q_host && acs_namespace && sb_access_key && sb_issuer
        Rake::Task["test:integration"].invoke
      else
        warn "[WARNING] Configure your environment to run the integration tests"
      end
    end
  end

  Rake::TestTask.new :cleanup do |t|
    $:.unshift "lib"
    require 'azure'

    Azure.configure do |config|
      config.access_key     = ENV.fetch("AZURE_ACCESS_KEY")
      config.account_name   = ENV.fetch("AZURE_ACCOUNT_NAME")
      config.table_host     = ENV.fetch("AZURE_TABLE_HOST")
      config.blob_host      = ENV.fetch("AZURE_BLOB_HOST")
      config.queue_host     = ENV.fetch("AZURE_QUEUE_HOST")

      config.acs_namespace  = ENV.fetch("AZURE_ACS_NAMESPACE")
      config.sb_access_key  = ENV.fetch("AZURE_SB_ACCESS_KEY")
      config.sb_issuer      = ENV.fetch("AZURE_SB_ISSUER")
    end

    Azure::Tables.all.map(&:delete)
    Azure::Blobs.containers.map(&:delete)
    Azure::Queues.all.map(&:delete)
    Azure::ServiceBus::Queues.list.map(&:delete)
    Azure::ServiceBus::Topics.list.map(&:delete)
  end
end

task :test => ["test:unit", "test:integration:conditionally"]

task default: :test
