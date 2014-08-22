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
require "test_helper"
require "azure"

Azure::Core.configure do |config|
  config.storage_access_key     = ENV.fetch("AZURE_STORAGE_ACCESS_KEY")
  config.storage_account_name   = ENV.fetch("AZURE_STORAGE_ACCOUNT")
  # config.storage_table_host     = ENV.fetch("AZURE_STORAGE_TABLE_HOST")
  # config.storage_blob_host      = ENV.fetch("AZURE_STORAGE_BLOB_HOST")
  # config.storage_queue_host     = ENV.fetch("AZURE_STORAGE_QUEUE_HOST")

  config.sb_namespace  = ENV.fetch("AZURE_SERVICEBUS_NAMESPACE")
  config.sb_access_key  = ENV.fetch("AZURE_SERVICEBUS_ACCESS_KEY")
  # config.sb_issuer      = ENV.fetch("AZURE_SERVICEBUS_ISSUER")
  config.management_certificate  = ENV.fetch('AZURE_MANAGEMENT_CERTIFICATE')
  # config.management_endpoint  = ENV.fetch("AZURE_MANAGEMENT_ENDPOINT")
  config.subscription_id  = ENV.fetch("AZURE_SUBSCRIPTION_ID")
end

StorageAccountName = random_string('storagetest',10)
Images = Azure::VirtualMachineImageManagementService.new.list_virtual_machine_images
LinuxImage = Images.select{|image| image.os_type == 'Linux'}.first
WindowsImage = Images.select{|image| image.os_type == 'Windows'}.first
WindowsImageLocation = WindowsImage.locations.split(';').first
LinuxImageLocation = LinuxImage.locations.split(';').first

MiniTest::Unit.after_tests {
  VirtualMachineNameGenerator.cleanup
}
