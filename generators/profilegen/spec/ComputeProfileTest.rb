require_relative '../../../management/azure_mgmt_compute/lib/azure_mgmt_compute'

vm_name                         = 'testissue567'
rg_name                         = 'testissue567rg'

profile_client = Azure::Profiles::ComputeModule::Management::Profile_Latest::Client.new

#Option 1
puts profile_client.compute.virtual_machines.get rg_name, vm_name

#Option 2
compute_client = profile_client.compute.get_client('2017-03-30')
vm = Azure::Profiles::ComputeModule::Management::Profile_Latest::Compute::VirtualMachines.new(compute_client)
puts vm.get rg_name, vm_name

#Option to access Models
puts Azure::Profiles::ComputeModule::Management::Profile_Latest::Compute::Models::DiagnosticsProfile
