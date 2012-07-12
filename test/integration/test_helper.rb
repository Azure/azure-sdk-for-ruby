require "test_helper"
require "azure"

Azure.configure do |config|
  config.access_key     = ENV.fetch("AZURE_STORAGE_ACCESS_KEY")
  config.account_name   = ENV.fetch("AZURE_STORAGE_ACCOUNT")
  config.table_host     = ENV.fetch("AZURE_TABLE_HOST")
  config.blob_host      = ENV.fetch("AZURE_BLOB_HOST")
  config.queue_host     = ENV.fetch("AZURE_QUEUE_HOST")

  config.acs_namespace  = ENV.fetch("AZURE_SERVICEBUS_NAMESPACE")
  config.sb_access_key  = ENV.fetch("AZURE_SERVICEBUS_ACCESS_KEY")
  config.sb_issuer      = ENV.fetch("AZURE_SERVICEBUS_ISSUER")
end
