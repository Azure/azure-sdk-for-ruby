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

module Azure::Core; end

require "azure/core/error"
require "azure/core/configuration"

# load default configuration from environment variables (user can always override this later)
Azure.configure do |config|
  config.storage_access_key     = ENV["AZURE_STORAGE_ACCESS_KEY"]
  config.storage_account_name   = ENV["AZURE_STORAGE_ACCOUNT"]
  config.storage_table_host     = ENV["AZURE_STORAGE_TABLE_HOST"]
  config.storage_blob_host      = ENV["AZURE_STORAGE_BLOB_HOST"]
  config.storage_queue_host     = ENV["AZURE_STORAGE_QUEUE_HOST"]

  config.sb_namespace  = ENV["AZURE_SERVICEBUS_NAMESPACE"]
  config.sb_access_key  = ENV["AZURE_SERVICEBUS_ACCESS_KEY"]
  config.sb_issuer      = ENV["AZURE_SERVICEBUS_ISSUER"]

  config.publish_settings_file = ENV["AZURE_PUBLISH_SETTINGS_FILE"]
  config.subscription_id      = ENV["AZURE_SUBSCRIPTION_ID"]
  config.api_url              = ENV["AZURE_API_URL"]
end