# Intro

This project provides a Ruby gem for easy access to the Azure ARM Resources API. With this gem you can create/update/list/delete resources, resource groups, resource providers and deployments.

# Supported Ruby Versions

* Ruby 2+

Note: x64 Ruby for Windows is known to have some compatibility issues.

# Getting started

## Setting up the service principal

First of all to start interacting with the ARM resources you will need to setup a service principal. Service principal is an Azure application which allows you to authenticate to Azure and access Azure services. The detailed steps of how to setup a service principal can be found in this article: http://aka.ms/cli-service-principal. In the result of setting up service principal you will get tenant id, client id and client secret data.

## Installation

install the appropriate gem:

```
gem install azure_mgmt_resources
```

and reference it in your code:

```Ruby
require 'azure_mgmt_resources'
```

After that you should be ready to start using SDK!

## Authentication

```Ruby
# Create authentication objects
token_provider = MsRestAzure::ApplicationTokenProvider.new(tenant_id, client_id, secret)
credentials = MsRest::TokenCredentials.new(token_provider)
```

To get tenant_id, client_id and secret for your Azure application visit Azure portal or copy them from the powershell script from the article mentioned above.

## Creating resource group

```Ruby
# Create a client - a point of access to the API and set the subscription id
client = Azure::ARM::Resources::ResourceManagementClient.new(credentials)
client.subscription_id = subscription_id

# Create a model for resource group.
resource_group = Azure::ARM::Resources::Models::ResourceGroup.new()
resource_group.location = 'westus'

promise = client.resource_groups.create_or_update_async('new_test_resource_group', resource_group)
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

In both cases you're returned an instance of MsRestAzure::AzureOperationResponse which contains HTTP requests/response objects and response body. Response body is a deserialized object representing the received information. In case of code above - newly created resource group. To get data from it:

```Ruby
resource_group = result.body

p resource_group.name # 'new_test_resource_group'
p resource_group.id   # the id of resource group
```

Congrats, you've create an ARM resource group. We encourage you to try more stuff and let us know your feedback!
