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
  end

  def random_text(text)
    alpha = ("a".."z").to_a
    text+10.times.map { alpha[Random.rand(alpha.size)]}.join
  end

  def name
    vm_name  = random_text('test-')
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
    ServiceManagement.new
    #Delete virtual machines
    virtualmachines = Azure::VirtualMachineService.list_virtual_machines
    virtualmachines.each do |virtualmachine|
      if(virtualmachine.vm_name.include?("test-") && virtualmachine.cloud_service_name.include?(virtualmachine.vm_name+'-service-'))
        begin
          Azure::VirtualMachineService.delete_virtual_machine_deployment(virtualmachine.cloud_service_name)
          Azure::CloudService.delete_cloud_service(virtualmachine.cloud_service_name)
        rescue Exception => e
          Loggerx.error e.message
        end
      end
    end
    #Delete cloud services
    cloud_services = Azure::CloudService.list_cloud_services
    cloud_services.each do |cloud_service|
      if cloud_service.name.include?("test-") && cloud_service.name.include?("-service-")
        Azure::CloudService.delete_cloud_service(cloud_service.name) rescue nil
      end
    end
    #Delete disks
    sleep 60
    disks = Azure::VirtualMachineImageManagement::VirtualMachineDiskManagementService.list_disks
    disks.each do |disk|
      if(disk.name.include?('-service-') && disk.name.include?('test-') && !disk.attached)
        Azure::VirtualMachineImageManagement::VirtualMachineDiskManagementService.delete_disk(disk.name) rescue nil
      end
    end
  end
end

VirtualMachineNameHelper = VirtualMachineNameGenerator.new do |name, cloud_name|
  sm = Azure::ServiceManagement::ServiceManagementService.new
  begin
    Timeout::timeout(240) do
      sm.delete_virtual_machine name, cloud_name
    end
  rescue
  end
end