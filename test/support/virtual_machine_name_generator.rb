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
class VirtualMachineNameGenerator
  def initialize(&cleanup_proc)
    @cleanup_proc = cleanup_proc
    @names = []
    @count = rand(900)
  end

  def random_text(text)
    @count += 1
    text + @count.to_s + "-#{Array.new(32) { rand(36).to_s(36) }.join[0..5]}"
  end

  def name
    vm_name = random_text('test-')
    cloud_name = random_text(vm_name + '-service-')
    @names << [vm_name, cloud_name]
    [vm_name, cloud_name]
  end

  def clean
    @names.each do |name|
      @cleanup_proc.call(name.first, name.last)
    end
    @names = []
  end

  def self.cleanup
    puts 'Running after test cleanup.'
    # Delete virtual machines
    virtual_machine_service = Azure::VirtualMachineManagementService.new
    virtualmachines = virtual_machine_service.list_virtual_machines
    azure_cloud_service = Azure::CloudServiceManagementService.new
    virtualmachines.each do |vm|
      vm_name = vm.vm_name + '-service-'
      csn = vm.cloud_service_name
      if vm.vm_name.include?('test-') && csn.include?(vm_name)
        azure_cloud_service.delete_cloud_service_deployment(csn) rescue nil
      end
    end

    # Delete cloud services
    cloud_services = azure_cloud_service.list_cloud_services
    cloud_services.each do |cloud_service|
      csn = cloud_service.name
      if csn.include?('test-') && csn.include?('-service-')
        azure_cloud_service.delete_cloud_service(csn)  rescue nil
      end
    end

    # Delete disks
    disk_service = VirtualMachineDiskManagementService.new
    sleep 60
    disks = disk_service.list_virtual_machine_disks
    disks.each do |disk|
      name = disk.name
      if name.include?('-service-') && name.include?('test-') && !disk.attached
        disk_service.delete_virtual_machine_disk(name) rescue nil
      end
    end

    # Delete storage account
    storage_service = Azure::StorageManagementService.new
    storage_accounts = storage_service.list_storage_accounts
    storage_accounts.each do |storage_account|
      if storage_account.name.include?('storagetest')
        storage_service.delete_storage_account(storage_account.name) rescue nil
      end
    end

    # Delete affinity groups
    ag_service = Azure::BaseManagementService.new
    affinity_groups = ag_service.list_affinity_groups
    affinity_groups.each do |affinity_group|
      if affinity_group.name.include?('affinity-group-')
        ag_service.delete_affinity_group(affinity_group.name) rescue nil
      end
    end
  end
end

VirtualMachineNameHelper = VirtualMachineNameGenerator.new do |name, cloud_name|
  cloud_service = Azure::CloudServiceManagementService.new
  begin
    cloud_service.delete_cloud_service_deployment(cloud_name)
    cloud_service.delete_cloud_service(cloud_name)
  rescue
  end
end
