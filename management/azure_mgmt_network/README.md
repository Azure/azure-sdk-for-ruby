# Intro

This project provides a Ruby gem for easy access to the Azure ARM Network API. With this gem you can create/update/list/delete virtual networks, subnets, load balancers and network interfaces.

# Supported Ruby Versions

* Ruby 2+

Note: x64 Ruby for Windows is known to have some compatibility issues.

# Getting started

## Setting up the service principal

First of all to start interacting with the ARM network you will need to setup a service principal. Service principal is an Azure application which allows you to authenticate to Azure and access Azure services. The detailed steps of how to setup a service principal can be found in this article: http://aka.ms/cli-service-principal. In the result of setting up service principal you will get tenant id, client id and client secret data.

## Installation

install the appropriate gem:

```
gem install azure_mgmt_network
```

and reference it in your code:

```Ruby
require 'azure_mgmt_network'
```

After that you should be ready to start using SDK!

## Creating a Client
### Option 1 - Using the Network Profiles
You can create a new Virtual Network using the Network profile.

```ruby
# Include SDK modules to ease access to network classes.
include Azure::Network::Profiles::Latest::Mgmt
include Azure::Network::Profiles::Latest::Mgmt::Models

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

### Option 2 - Using a specific version of Network
You can create a new Virtual network using a specific version of Network, say 2017-09-01.

```ruby
# Include SDK modules to ease access to compute classes.
include Azure::Network::Mgmt::V2017_09_01
include Azure::Network::Mgmt::V2017_09_01::Models

# Note: The tenant_id, client_id, client_secret and subscription_id
# must be set using the env variables.

provider = MsRestAzure::ApplicationTokenProvider.new(
       ENV['AZURE_TENANT_ID'],
       ENV['AZURE_CLIENT_ID'],
       ENV['AZURE_CLIENT_SECRET'])
credentials = MsRest::TokenCredentials.new(provider)

client = NetworkManagementClient.new(credentials)
client.subscription_id = ENV['AZURE_SUBSCRIPTION_ID']
```

## Using the client
Once the client is initialized, we could create the virtual network.

```ruby
# Create a model for new virtual network
params = VirtualNetwork.new

address_space = AddressSpace.new
address_space.address_prefixes = ['10.0.0.0/16']
params.address_space = address_space

dhcp_options = DhcpOptions.new
dhcp_options.dns_servers = %w(10.1.1.1 10.1.2.4)
params.dhcp_options = dhcp_options

sub = Subnet.new
sub.name = 'new_subnet'
sub.address_prefix = '10.0.2.0/24'

params.subnets = [sub]

params.location = 'westus'

promise = client.virtual_networks.create_or_update_async('existing_resource_group', 'new_vn', params)
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

In both cases you're returned an instance of MsRestAzure::AzureOperationResponse which contains HTTP requests/response objects and response body. Response body is a deserialized object representing the received information. In case of code above - newly created virtual network. To get data from it:

```Ruby
virtual_network = result.body

p virtual_network.name # name of the new vn
p virtual_network.id # id of the new vn
```

Congrats, you've create new virtual network. We encourage you to try more stuff and let us know your feedback!
For advanced SDK usage please reference to the spec files.
