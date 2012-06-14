require "test_helper"
require "azure"

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
