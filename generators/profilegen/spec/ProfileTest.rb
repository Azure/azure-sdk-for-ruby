require_relative '../../../azure_sdk/lib/Profile_Azure_Stack/profile_client'

vm_name                         = 'testissue567'
rg_name                         = 'testissue567rg'

profile_client = Azure::Profiles::Management::Profile_Azure_Stack::Client.new

#Option 1
puts profile_client.compute.virtual_machines.get rg_name, vm_name

#Option 2
compute_client = profile_client.compute.get_client('2017-03-30')
vm = Azure::Profiles::Management::Profile_Azure_Stack::Compute::VirtualMachines.new(compute_client)
puts vm.get rg_name, vm_name

#Option to access Models
puts Azure::Profiles::Management::Profile_Azure_Stack::Compute::Models::DiagnosticsProfile
