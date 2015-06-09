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
require 'test_helper'
require 'azure'

Azure.configure do |config|
  config.storage_access_key       = ENV.fetch('AZURE_STORAGE_ACCESS_KEY')
  config.storage_account_name     = ENV.fetch('AZURE_STORAGE_ACCOUNT')
  config.sb_namespace             = ENV.fetch('AZURE_SERVICEBUS_NAMESPACE')
  config.sb_access_key            = ENV.fetch('AZURE_SERVICEBUS_ACCESS_KEY')
  config.management_certificate   = ENV.fetch('AZURE_MANAGEMENT_CERTIFICATE')
  config.subscription_id          = ENV.fetch('AZURE_SUBSCRIPTION_ID')
end

util = Class.new.extend(Azure::Core::Utility)

StorageAccountName = util.random_string('storagetest',10)
Images = Azure::VirtualMachineImageManagementService.new.list_virtual_machine_images
LinuxImage = Images.select{|image| image.os_type == 'Linux'}.first
WindowsImage = Images.select{|image| image.os_type == 'Windows'}.first
locations = WindowsImage.locations.split(';')
WindowsImageLocation = locations.include?('West US') ? 'West US' : locations.first
locations = LinuxImage.locations.split(';')
LinuxImageLocation = locations.include?('West US') ? 'West US' : locations.first

MiniTest.after_run {
  VirtualMachineNameGenerator.cleanup
}
