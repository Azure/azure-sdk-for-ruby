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
require "test_helper"
require "azure"

Azure::Core.configure do |config|
  config.access_key     = ENV.fetch("AZURE_STORAGE_ACCESS_KEY")
  config.account_name   = ENV.fetch("AZURE_STORAGE_ACCOUNT")
  config.table_host     = ENV.fetch("AZURE_TABLE_HOST")
  config.blob_host      = ENV.fetch("AZURE_BLOB_HOST")
  config.queue_host     = ENV.fetch("AZURE_QUEUE_HOST")

  config.acs_namespace  = ENV.fetch("AZURE_SERVICEBUS_NAMESPACE")
  config.sb_access_key  = ENV.fetch("AZURE_SERVICEBUS_ACCESS_KEY")
  config.sb_issuer      = ENV.fetch("AZURE_SERVICEBUS_ISSUER")
end
