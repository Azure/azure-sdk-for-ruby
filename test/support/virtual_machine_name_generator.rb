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
#require 'name_generator'
class VirtualMachineNameGenerator

  def initialize(&cleanup_proc)
    @cleanup_proc = cleanup_proc
    @names = []
    @count = rand(900)
  end

  def random_text(text)
    @count+=1
    text+@count.to_s+"-#{Array.new(32){rand(36).to_s(36)}.join[0..5]}"
  end

  def name
    vm_name = random_text('test-')
    cloud_name = random_text(vm_name+'-service-')
    @names << [vm_name,cloud_name]
    return vm_name, cloud_name
  end

  def clean
    @names.each do |name|
      @cleanup_proc.call(name.first, name.last)
    end
    @names = []
  end

  def self.cleanup
    puts "Running after test cleanup."
    #Delete virtual machines
    virtual_machine_service = Azure::VirtualMachineService.new
    virtualmachines = virtual_machine_service.list_virtual_machines
    azure_cloud_service = Azure::CloudService.new
    virtualmachines.each do |virtualmachine|
      if(virtualmachine.vm_name.include?("test-") && virtualmachine.cloud_service_name.include?(virtualmachine.vm_name+'-service-'))
        begin
          azure_cloud_service.delete_cloud_service_deployment(virtualmachine.cloud_service_name)
          azure_cloud_service.delete_cloud_service(virtualmachine.cloud_service_name)
        rescue Exception => e
          Loggerx.error e.message
        end
      end
    end
    #Delete cloud services
    Azure::BaseManagementService.new
    cloud_services = azure_cloud_service.list_cloud_services
    cloud_services.each do |cloud_service|
      if cloud_service.name.include?("test-") && cloud_service.name.include?("-service-")
        azure_cloud_service.delete_cloud_service(cloud_service.name)  rescue nil
      end
    end
    #Delete disks
    sleep 60
    disk_management_service = Azure::VirtualMachineImageManagement::VirtualMachineDiskManagementService.new
    disks = disk_management_service.list_virtual_machine_disks
    disks.each do |disk|
      if(disk.name.include?('-service-') && disk.name.include?('test-') && !disk.attached)
        disk_management_service.delete_virtual_machine_disk(disk.name) rescue nil
      end
    end
    #Delete storage account
    storage_service = Azure::StorageManagement::StorageManagementService.new
    storage_accounts = storage_service.list_storage_accounts
    storage_accounts.each do |storage_account|
      if(storage_account.name.include?('storagetest'))
        storage_service.delete_storage_account(storage_account.name)
      end
    end
  end

end

VirtualMachineNameHelper = VirtualMachineNameGenerator.new do |name, cloud_name|
  cloud_service = Azure::CloudService.new
  begin
    cloud_service.delete_cloud_service_deployment(cloud_name)
    cloud_service.delete_cloud_service(cloud_name)
  rescue
  end
end
