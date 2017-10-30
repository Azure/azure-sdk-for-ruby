# Intro

This project provides a Ruby gem for easy access to the Azure ARM Compute API. With this gem you can create/update/list/delete virtual machines, virtual machine images and virtual machine extensions.

# Supported Ruby Versions

* Ruby 2+

Note: x64 Ruby for Windows is known to have some compatibility issues.

# Getting started

## Setting up the service principal

First of all to start interacting with the ARM compute you will need to setup a service principal. Service principal is an Azure application which allows you to authenticate to Azure and access Azure services. The detailed steps of how to setup a service principal can be found in this article: http://aka.ms/cli-service-principal. In the result of setting up service principal you will get tenant id, client id and client secret data.

## Installation

install the appropriate gem:

```
gem install azure_mgmt_compute
```

and reference it in your code:

```Ruby
require 'azure_mgmt_compute'
```

After that you should be ready to start using SDK!

## Creating a Client
### Option 1 - Using the Compute Profiles
You can create a new Virtual Machine using the Compute profile.

```ruby
# Include SDK modules to ease access to compute classes.
include Azure::Compute::Profiles::Latest::Mgmt
include Azure::Compute::Profiles::Latest::Mgmt::Models

provider = MsRestAzure::ApplicationTokenProvider.new(
       'YOUR TENANT ID',
       'YOUR CLIENT ID',
       'YOUR CLIENT SECRET')
credentials = MsRest::TokenCredentials.new(provider)

options = {
  tenant_id: 'YOUR TENANT ID',
  client_id: 'YOUR CLIENT ID',
  client_secret: 'YOUR CLIENT SECRET',
  subscription_id: 'YOUR SUBSCRIPTION ID',
  credentials: credentials
}

client = Client.new(options)
```

### Option 2 - Using a specific version of Compute
You can create a new Virtual Machine using a specific version of Compute, say 2017-03-30.

```ruby
# Include SDK modules to ease access to compute classes.
include Azure::Compute::Mgmt::V2017_03_30
include Azure::Compute::Mgmt::V2017_03_30::Models

# Note: The tenant_id, client_id, client_secret and subscription_id
# must be set using the env variables.

provider = MsRestAzure::ApplicationTokenProvider.new(
       ENV['AZURE_TENANT_ID'],
       ENV['AZURE_CLIENT_ID'],
       ENV['AZURE_CLIENT_SECRET'])
credentials = MsRest::TokenCredentials.new(provider)

client = ComputeManagementClient.new(credentials)
client.subscription_id = ENV['AZURE_SUBSCRIPTION_ID']
```

## Using the client
Once the client is initialized, we could create the virtual machine.

```ruby
windows_config = WindowsConfiguration.new
windows_config.provision_vmagent = true
windows_config.enable_automatic_updates = true

os_profile = OSProfile.new
os_profile.computer_name = 'testvm1'
os_profile.admin_username = 'testvm1'
os_profile.admin_password = 'P@ssword1'
os_profile.windows_configuration = windows_config
os_profile.secrets = []

hardware_profile = HardwareProfile.new
hardware_profile.vm_size = 'Standard_A0'

params = VirtualMachine.new
# create_storage_profile is hypothetical helper method which creates storage
# profile by means of ARM Storage SDK.
params.storage_profile = create_storage_profile

# create_network_profile is hypothetical helper method which creates network
# profile my means of ARM Network SDK.
params.network_profile = create_network_profile

params = VirtualMachine.new
params.type = 'Microsoft.Compute/virtualMachines'
params.os_profile = os_profile
params.hardware_profile = hardware_profile
params.location = 'westus'

promise = client.virtual_machines.create_or_update_async('existing_resource_group_name', 'name_of_new_vm', params)
```

The SDK method returns a promise which you can utilize depending on your needs. E.g. if you need to get result immediately via sync blocking call - do the following:

```Ruby
result = promise.value!
```

If you need to follow async flow - provide a block which will be executed in off main thread:

```Ruby
promise = promise.then do |result|
  # Handle the result
end
```

In both cases you're returned an instance of MsRestAzure::AzureOperationResponse which contains HTTP requests/response objects and response body. Response body is a deserialized object representing the received information. In case of code above - newly created virtual machine. To get data from it:

```Ruby
vm = result.body

p vm.name # name of the new vm
p vm.vm_id # id of the new vm
```

Congrats, you've create new virtual machine. We encourage you to try more stuff and let us know your feedback!
For advanced SDK usage please reference to the spec files.
