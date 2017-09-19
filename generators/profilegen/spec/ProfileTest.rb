require_relative '../../../profiles/Api_2016_06_30/lib/client'

vm_name                         = 'testissue567'
rg_name                         = 'testissue567rg'
client = Azure::Management::Profiles::Api_2016_06_30::Client.new
puts client.compute.disks.get rg_name, vm_name

client.compute.model_types.virtual_machine