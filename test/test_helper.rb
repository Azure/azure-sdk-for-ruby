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
require "minitest/autorun"
require "mocha/setup"

# Attempt to load turn to show formatted test results
begin
  require "turn"
  Turn.config.format = :pretty
  Turn.config.natural = true
rescue LoadError
end

# add to the MiniTest DSL
module Kernel
  def need_tests_for(name)
    describe "##{name}" do
      it "needs unit tests" do
        skip ""
      end
    end
  end
end


Dir["./test/support/**/*.rb"].each { |dep| require dep }

# mock configuration setup
require 'azure'

Azure.config.storage_account_name     = "accountname"
Azure.config.storage_access_key       = "YWNjZXNzLWtleQ=="
Azure.config.management_certificate   = File.expand_path("test/fixtures/management_certificate.pem")
Azure.config.management_endpoint      = "https://management.core.windows.net"
Azure.config.subscription_id          = "subscription-id"
# Azure.config.storage_table_host     = 
# Azure.config.storage_blob_host      = 
# Azure.config.storage_queue_host     = 
# Azure.config.sb_namespace           = 
# Azure.config.sb_access_key          = 
# Azure.config.sb_issuer              = 