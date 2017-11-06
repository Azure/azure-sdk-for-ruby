
**NOTE**: With 0.15.0 version of Azure SDK, significant changes (Multiple API versions & Profiles) have been introduced.
The details are available [here](#azure-multiple-api-versions--profiles)

# Microsoft Azure SDK for Ruby - Resource Management (preview)
[![Build Status](https://api.travis-ci.org/Azure/azure-sdk-for-ruby.svg?branch=master)](https://api.travis-ci.org/Azure/azure-sdk-for-ruby) [![Code Climate](https://codeclimate.com/github/Azure/azure-sdk-for-ruby/badges/gpa.svg)](https://codeclimate.com/github/Azure/azure-sdk-for-ruby)

This project provides a Ruby package for Azure Resource Management (ARM).
If you're looking for Azure Service Management (ASM) please refer to this [repo](https://github.com/Azure/azure-sdk-for-ruby/tree/asm)

Additional info on Azure deployment models [https://azure.microsoft.com/en-us/documentation/articles/azure-classic-rm/](https://azure.microsoft.com/en-us/documentation/articles/azure-classic-rm/)

## Azure Resource Management (preview)
* [Authorization](https://rubygems.org/gems/azure_mgmt_authorization) Azure Resource Manager role based authorization
* [Batch](https://rubygems.org/gems/azure_mgmt_batch) Azure Batch Management Account & Application operations management
* [CDN](https://rubygems.org/gems/azure_mgmt_cdn) Azure Content Delivery Network
* [Cognitive Services](https://rubygems.org/gems/azure_mgmt_cognitive_services) Azure Cognitive Services Account management
* [Commerce](https://rubygems.org/gems/azure_mgmt_commerce) Azure Commerce Usage aggregates & Rate card management
* [Compute](https://rubygems.org/gems/azure_mgmt_compute) Virtual Machines, Images, Extensions, Availability Sets, etc...
* [Datalake Analytics](https://rubygems.org/gems/azure_mgmt_datalake_analytics) Azure Datalake Analytics Account, Catalog and Job management
* [Datalake Store](https://rubygems.org/gems/azure_mgmt_datalake_store) Azure Datalake Store Account and FileSystem management
* [DevTest Labs](https://rubygems.org/gems/azure_mgmt_devtestlabs) Azure DevTest Labs LabOperations, ArtifactSourceOperations, ArtifactOperations, CostOperations etc...
* [DNS](https://rubygems.org/gems/azure_mgmt_dns) Azure DNS Record Set and Zone management
* [Features](https://rubygems.org/gems/azure_mgmt_features) Feature Exposure Controls
* [Graph](https://rubygems.org/gems/azure_mgmt_graph) Azure Active Directory Applications, Users, etc...
* [Monitor](https://rubygems.org/gems/azure_mgmt_monitor) Azure Monitor management
* [IoTHub](https://rubygems.org/gems/azure_mgmt_iot_hub) Azure IoTHub's Resource Management
* [Key Vault](https://rubygems.org/gems/azure_mgmt_key_vault) Azure Key Vault's vault management
* [Locks](https://rubygems.org/gems/azure_mgmt_locks) Management locks for Azure Resources
* [Logic](https://rubygems.org/gems/azure_mgmt_logic) Integration Accounts, AccountSchemas, AccountMaps, AccountPartners etc... 
* [Machine Learning](https://rubygems.org/gems/azure_mgmt_machine_learning) Azure Machine Learning web services management
* [Media Services](https://rubygems.org/gems/azure_mgmt_media_services) Media Services resource management APIs
* [Mobile Engagement](https://rubygems.org/gems/azure_mgmt_mobile_engagement) Azure Mobile Engagement's Apps, App Collections, Devices management APIs  
* [Network](https://rubygems.org/gems/azure_mgmt_network) Load Balancers, Network Gateways, Security Groups, etc...
* [Notification Hubs](https://rubygems.org/gems/azure_mgmt_notification_hubs) Notification Hubs management
* [Policy](https://rubygems.org/gems/azure_mgmt_policy) Policy Assignment & Policy definition operations
* [Powerbi Embedded](https://rubygems.org/gems/azure_mgmt_powerbi_embedded) Azure Powerbi Embedded Workspace & WorkspaceCollection management
* [Redis](https://rubygems.org/gems/azure_mgmt_redis) Redis resource management
* [Resources](https://rubygems.org/gems/azure_mgmt_resources) Resource Groups, Resource Providers, Template Deployments, Operations, etc...
* [Scheduler](https://rubygems.org/gems/azure_mgmt_scheduler) Manage scheduled jobs in Azure
* [Search](https://rubygems.org/gems/azure_mgmt_search) Manage Search resources
* [Server Management](https://rubygems.org/gems/azure_mgmt_server_management) Azure Server Management Service like node, gateway, powershell etc..
* [SQL](https://rubygems.org/gems/azure_mgmt_sql) Manage Azure SQL resources
* [Storage](https://rubygems.org/gems/azure_mgmt_storage) Account Creation, Usage Operations, etc...
* [Stream Analytics](https://rubygems.org/gems/azure_mgmt_stream_analytics) Create, update, start, stop streaming jobs etc...
* [Subscriptions](https://rubygems.org/gems/azure_mgmt_subscriptions) Manage Azure subscriptions
* [Traffic Manager](https://rubygems.org/gems/azure_mgmt_traffic_manager) Azure Traffic Manager's profile & endpoint management
* [WebApps](https://rubygems.org/gems/azure_mgmt_web) Manage WebApps, formally known as WebSites

## Azure Services
* [Storage](https://github.com/Azure/azure-sdk-for-ruby/tree/asm#storage)
 Azure Storage is now availabe in its own preview gem and GitHub [repo](https://github.com/Azure/azure-storage-ruby)
* [Service Bus](https://github.com/Azure/azure-sdk-for-ruby/tree/asm#usage)
    * [Relays](https://github.com/Azure/azure-sdk-for-ruby/tree/asm#relays)
    * [Topics](https://github.com/Azure/azure-sdk-for-ruby/tree/asm#topics)
    * Queues

# Supported Ruby Versions

* Ruby 2+

Note: x64 Ruby for Windows is known to have some compatibility issues.

# Getting Started with Azure Resource Manager Usage (Preview)
## Install the rubygem packages

You can install the azure rubygem packages directly.

```bash
gem install azure_mgmt_compute
gem install azure_mgmt_storage
gem install azure_mgmt_resources
gem install azure_mgmt_network
```

Or use them in your Gemfile.

```Ruby
gem 'azure_mgmt_storage'
gem 'azure_mgmt_compute'
gem 'azure_mgmt_resources'
gem 'azure_mgmt_network'
```

Be aware the Azure Resource Manager Ruby SDK is in preview and will likely have breaking interface changes in upcoming
releases. An increased number in Minor version may indicate breaking changes. 

### Authentication

The first step to using the SDK is authentication and permissions. For people unfamilar with Azure this may be one of
the more difficult concepts. For a reference on setting up a service principal from the command line see
[Authenticating a service principal with Azure Resource Manager](http://aka.ms/cli-service-principal) or
[Unattended Authentication](http://aka.ms/auth-unattended). For a more robust explanation of authentication in Azure,
see [Developer’s guide to auth with Azure Resource Manager API](http://aka.ms/arm-auth-dev-guide).

After creating the service principal, you should have three pieces of information, a client id (GUID), client secret
(string) and tenant id (GUID) or domain name (string).

## Prerequisite

In order to use the Azure SDK, you must supply the following values to the Azure SDK:

* Tenant Id
* Client Id
* Subscription Id
* Client Secret

You could pass the above values in the following ways:

### Option 1 - Environment Variables
You can set the (above) values using the following environment variables:

* AZURE_TENANT_ID
* AZURE_CLIENT_ID
* AZURE_SUBSCRIPTION_ID
* AZURE_CLIENT_SECRET

To set the environment variables, in Windows, you could use the command such as:

```
set AZURE_TENANT_ID=<YOUR_TENANT_ID>
```

In Unix based systems, you could use the command such as:

```
export AZURE_TENANT_ID=<YOUR_TENANT_ID>
```

### Option 2 - Options Hash
The initialization of profile clients take an options hash as a parameter. This options hash consists of tenant_id, client_id, client_secret, subscription_id, active_directory_settings and credentials. Among these, the active_directory_settings and credentials are optional.

You can set the (above) values using the options hash:

```ruby
options = {
  tenant_id: 'YOUR TENANT ID',
  client_id: 'YOUR CLIENT ID',
  client_secret: 'YOUR CLIENT SECRET',
  subscription_id: 'YOUR SUBSCRIPTION ID'
}
```

If you would like to pass in the credentials object, you could use the the following code:

```ruby
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
```

### Option 3 - Combination of Environment Variables & Options Hash
You can set the (above) values using a combination of environment variables and options hash. The values mentioned in the options hash will take precedence over the environment variables.

# Azure Multiple API versions & Profiles

With 0.15.0 of Azure SDK, multiple API versions and profiles are introduced. With these changes, each individual gem
has multiple versions of the services and several profiles. The azure_sdk rollup gem also consists of several profiles. The following section provides details on the usage of multiple API versions and profiles.

## Why Multiple API versions?

Versions 0.14.0 and older, would have access to the latest versions of Azure services at the time of release. Each release up to 0.14.0, would include the latest available api-version of the services. There wasn't an option to use an older api-version of the service (except for using an older version of the sdk gem). With the introduction of multiple API versions per gem, any api-version available for the service can be explicitly targeted.

## What is a  Profile?

A profile is a combination of different resource types with different versions from different services. Using a profile,
will help you mix and match between various resource types.

## What to use?
* If you would like to use the latest versions of **all** the services, then the recommendation is to use the **Latest** profile of the Azure SDK rollup gem.

* If you would like to use the services compatible with the **Azure Stack**, then the recommendation is to use the **V2017_03_09** profile of the Azure SDK rollup gem.

* If you would like to use the **latest** api-version of a service, then the recommendation is to use the **Latest** profile of the specific gem. For example, if you would like to use the latest api-version of compute service alone, use the Latest profile of compute gem.

* If you would like to use **specific** api-version of a service, then the recommendation is to use the **specific API** versions defined inside that gem.

Note: All the above options could be combined within the same application.

## Usage of azure_sdk gem

azure_sdk gem is a rollup of all the supported gems in the Ruby SDK. This gem consists of a **Latest** profile which supports the latest version of all services. it introduces a versioned profile **V2017_03_09** profile which is built for Azure Stack.

### Install

You can install the azure_sdk rollup gem with the following command:

```ruby
gem install 'azure_sdk'
```

### Existing Profiles

To start with, the azure_sdk rollup gem has two profiles.
  1. V2017_03_09 (Profile built for Azure Stack)
  2. Latest (Profile consists of Latest versions of all services)

You could choose the profile that you would like to use. If you would like to use the latest versions of **all** the services, then the recommendation is to use the **Latest** profile of the azure_sdk rollup gem.

If you would like to use the services compatible with the **Azure Stack**, then the recommendation is to use the **V2017_03_09** profile of the Azure SDK rollup gem. 

### Usage

The following lines should be used to instantiate a profile client:

```ruby
# Provide credentials
options = {
  tenant_id: ENV['AZURE_TENANT_ID'],
  client_id: ENV['AZURE_CLIENT_ID'],
  client_secret: ENV['AZURE_CLIENT_SECRET'],
  subscription_id: ENV['AZURE_SUBSCRIPTION_ID']
}

# Target profile built for Azure Stack
profile_client = Azure::Profiles::V2017_03_09::Mgmt::Client.new(options)
```

The profile client could be used to access individual RPs:

 ```ruby
# To access the operations associated with Compute
profile_client.compute.virtual_machines.get 'RESOURCE_GROUP_NAME', 'VIRTUAL_MACHINE_NAME'

# Option 1: To access the models associated with Compute
purchase_plan_obj = profile_client.compute.model_classes.purchase_plan.new

# Option 2: To access the models associated with Compute
# Notice Namespace: Azure::Profiles::<Profile Name>::<Service Name>::Mgmt::Models::<Model Name>
purchase_plan_obj = Azure::Profiles::V2017_03_09::Compute::Mgmt::Models::PurchasePlan.new

```

## Usage of Individual gem using Profiles

### Install

You can install the individual gems using gem install. For eg, to install azure_mgmt_compute, use the following command:

```ruby
gem install 'azure_mgmt_compute'
```
### Usage

The following lines should be used to instantiate a profile client:

```ruby
# Provide credentials
options = {
  tenant_id: ENV['AZURE_TENANT_ID'],
  client_id: ENV['AZURE_CLIENT_ID'],
  client_secret: ENV['AZURE_CLIENT_SECRET'],
  subscription_id: ENV['AZURE_SUBSCRIPTION_ID']
}

# Target profile built for Latest Compute
profile_client = Azure::Compute::Profiles::Latest::Mgmt::Client.new(options)
```
The profile client could be used to access operations and models:

 ```ruby
# To access the operations associated with Compute
profile_client.virtual_machines.get 'RESOURCE_GROUP_NAME', 'VIRTUAL_MACHINE_NAME'

# Option 1: To access the models associated with Compute
purchase_plan_obj = profile_client.model_classes.purchase_plan.new

# Option 2: To access the models associated with Compute
# Notice Namespace: Azure::<Service Name>::Profiles::<Profile Name>::Mgmt::Models::<Model Name>
purchase_plan_obj = Azure::Compute::Profiles::Latest::Mgmt::Models::PurchasePlan.new

```

## Usage of Individual gem using using specific api-version

In the previous section, we used the profile associated with individual gem. In the current section, we could use the version directly.

### Install

You can install the individual gems using gem install. For eg, to install azure_mgmt_compute, use the following command:

```ruby
gem install 'azure_mgmt_compute'
```
### Usage

The following lines should be used to instantiate a profile client:

```ruby
# To use this scenario, you must specify the tenant id, client id, subscription id
# and client secret using the environment variables.
# Provide credentials
provider = MsRestAzure::ApplicationTokenProvider.new(
       ENV['AZURE_TENANT_ID'],
       ENV['AZURE_CLIENT_ID'],
       ENV['AZURE_CLIENT_SECRET'])
credentials = MsRest::TokenCredentials.new(provider)

# Target client for 2016_03_30 version of Compute
compute_client = Azure::Compute::Mgmt::V2016_03_30::ComputeManagementClient.new(credentials)
compute_client.subscription_id = ENV['AZURE_SUBSCRIPTION_ID']
```

The compute client could be used to access operations and models:

 ```ruby
# To access the operations associated with Compute
compute_client.virtual_machines.get 'RESOURCE_GROUP_NAME', 'VIRTUAL_MACHINE_NAME'

# To access the models associated with Compute
# Notice Namespace: Azure::<Service Name>::Mgmt::<Version Name>::Models::<Model Name>
purchase_plan_obj = Azure::Compute::Mgmt::V2016_03_30::Models::PurchasePlan.new

```

## Samples using Profiles

The following samples could be used as a reference for Profiles usage::

* [Compute MSI VM](https://github.com/Azure-Samples/compute-ruby-msi-vm)
* [Resource Manager & Groups](https://github.com/Azure-Samples/resource-manager-ruby-resources-and-groups)
* [Compute Manage VM](https://github.com/Azure-Samples/compute-ruby-manage-vm)
* [Template Deployment](https://github.com/Azure-Samples/resource-manager-ruby-template-deployment)
* [Traffic Manager Profiles](https://github.com/Azure-Samples/traffic-manager-ruby-manage-profiles)


### Getting Started Samples
The tests for the libraries should provide a good example of how to get started with the clients. You can also see the
readme for each of the libraries [Compute](management/azure_mgmt_compute),
[Network](management/azure_mgmt_network), [Storage](management/azure_mgmt_storage), or [Resources](management/azure_mgmt_resources).

For more getting started samples go to [Azure-Samples](https://github.com/Azure-Samples/?utf8=%E2%9C%93&query=ruby). Please make sure to look for the azure_mgmt_* gem versions for samples.

# Contribute Code or Provide Feedback

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## Development Environment Setup

### Download Source Code

To get the source code of the SDK via **git** just type:

```bash
git clone https://github.com/Azure/azure-sdk-for-ruby.git
cd ./azure-sdk-for-ruby
```
Then, run bundler to install all the gem dependencies:

```bash
bundle install
```

### Run Recorded Integration Tests
 * Set the environment variable ``INTEG_RECORDED = true``
 * Run ``rake arm:spec``

### Re-Record Integration Tests
 * Set the environment variable ``INTEG_RECORDED = false`` or un-set it
 * Copy .env_sample to .env
 * Update .env with your Azure credentials **.env is in the .gitignore, so should only reside locally**
 * Run specific test using ``rspec``
 example:
```bash
 cd ./management/azure_mgmt_compute
 rspec spec/2017-03-30/virtual_machines_spec.rb
```
**If vcr cassette exist then it'll replay the test otherwise it'll record it.**

### Generate Documentation

Running the command ``yard`` will generate the API documentation in the `./doc` directory.

## Provide Feedback

If you encounter any bugs with the library please file an issue in the [Issues](https://github.com/Azure/azure-sdk-for-ruby/issues) section of the project. Please make sure to label the
issues with either arm or asm to help us expedite the process.

# Azure CLI Tooling

For documentation on [Azure PowerShell](http://github.com/azure/azure-powershell).
For documentation on [Azure CLI](http://github.com/azure/azure-xplat-cli).

---
This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/). For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.
