require_relative '../../../profiles/Api_2016_06_30/lib/client'

vm_name                         = 'testissue567'
rg_name                         = 'testissue567rg'

profile_client = Azure::Profiles::Management::Client.new

#Option 1
puts profile_client.compute.virtual_machines.get rg_name, vm_name

#Option 2
compute_client = profile_client.compute.get_client('2016-03-30')
vm = Azure::Profiles::Management::Compute::VirtualMachines.new(compute_client)
puts vm.get rg_name, vm_name

#Option to access Models
puts Azure::Profiles::Management::Compute::Models::DiagnosticsProfile
