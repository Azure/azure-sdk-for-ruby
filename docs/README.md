# Microsoft Azure SDK for Ruby

As of (2022/01), Azure SDK for Ruby - Resource Management Libraries are officially deprecated. The libraries will be in maintenance mode for a period of 3 years and security / bug fixes will still be applied. However, there will be no further releases based on feature requests. 

We recommend you take one of the following approaches
- Use Azure REST API directly in Ruby (instructions are provided in this doc)
- Use one of the next-generation SDKs that provides more idiomatic, consistent, approachable, dependable, and diagnosable experience. You can find more info on the repo of each individual language
  - [Java](https://github.com/Azure/azure-sdk-for-java/#management-new-releases)
  - [.NET](https://github.com/Azure/azure-sdk-for-net/#management-new-releases)
  - [Python](https://github.com/Azure/azure-sdk-for-python/#management-new-releases)
* [Python](https://github.com/Azure/azure-sdk-for-python)
* [Java](https://github.com/Azure/azure-sdk-for-java)
* [JavaScript](https://github.com/Azure/azure-sdk-for-js)
* [.Net](https://github.com/Azure/azure-sdk-for-net)

You can also find information about the latest SDK releases as well as API references on the [official Azure SDK web-site](https://azure.github.io/azure-sdk/)

# Azure REST API

[Azure REST API Reference](https://docs.microsoft.com/en-us/rest/api/azure/)


## Authentication

The first step to using the SDK is authentication and permissions. For people unfamilar with Azure this may be one of
the more difficult concepts. For a reference on setting up a service principal from the command line see
[Authenticating a service principal with Azure Resource Manager](http://aka.ms/cli-service-principal) or
[Unattended Authentication](http://aka.ms/auth-unattended). For a more robust explanation of authentication in Azure,
see [Developer’s guide to auth with Azure Resource Manager API](http://aka.ms/arm-auth-dev-guide).

After creating the service principal, you should have three pieces of information, a client id (GUID), client secret
(string) and tenant id (GUID) or domain name (string).

# Usage of ms_rest_azure gem

The ms_rest_azure gem is a Azure rest client library used by Azure SDK for Ruby. It relies on faraday and concurrent-ruby. 

## Install

You can install the ms_rest_azure gem with the following command:

```ruby
gem install 'ms_rest_azure'
```

## Prerequisite

In order to use the Azure client, you must supply the following values:

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

## OAuth2 Token Credentials

[Acquire an acces token](https://docs.microsoft.com/en-us/rest/api/azure/#acquire-an-access-token)

### Use token provider

There are 4 kinds of token providers in library:

* MsRest::StringTokenProvider
* MsRestAzure::ApplicationTokenProvider
* MsRestAzure::AzureCliTokenProvider
* MsRestAzure::MSITokenProvider

In most cases, we use the ApplicationTokenProvider. You could use the following code

```ruby
provider = MsRestAzure::ApplicationTokenProvider.new(
       'YOUR TENANT ID',
       'YOUR CLIENT ID',
       'YOUR CLIENT SECRET')
credentials = MsRest::TokenCredentials.new(provider)
```

MSITokenProvider supports 2 ways to get MSI(Managed Service Identity) Token

* Accessing the http://169.254.169.254/metadata/identity/oauth2/token to get the MSI Token (default)
* Using the extension installed locally and accessing http://localhost:50342/oauth2/token to get the MSI Token

You could use the following code

```ruby
provider = MsRestAzure::MSITokenProvider.new()
credentials = MsRest::TokenCredentials.new(provider)
```

AzureCliTokenProvider use [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/) to acquire token. Azure CLI should be installed in PATH. You could use the following code

```ruby
provider = MsRestAzure::AzureCliTokenProvider.new()
credentials = MsRest::TokenCredentials.new(provider)
```

### ActiveDirectoryServiceSettings

ActiveDirectoryServiceSettings class represents a settings for Azure AD authentication. It contains 4 sets of properties for different clouds

* get_azure_settings
* get_azure_china_settings
* get_azure_german_settings
* get_azure_us_government_settings

So you can create a application token provider with Azure China Settings by using the following code

```ruby
settings = MsRestAzure::ActiveDirectoryServiceSettings.get_azure_china_settings
provider = MsRestAzure::ApplicationTokenProvider.new(
       'YOUR TENANT ID',
       'YOUR CLIENT ID',
       'YOUR CLIENT SECRET',
       settings)
credentials = MsRest::TokenCredentials.new(provider)
```

## Make an async request 

AzureServiceClient can be used to make an async request. You could use it directly or create a class that inherits it.

### Example

Here is an example for making a request for checking name availability for storage account ( [API Doc Reference](https://docs.microsoft.com/en-us/rest/api/storagerp/storageaccounts/checknameavailability) ) by directly using AzureServiceClient. You could find more using cases in Azure SDK for Ruby.

```ruby
require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require 'ms_rest_azure'

options = {
  tenant_id: 'YOUR TENANT ID',
  client_id: 'YOUR CLIENT ID',
  client_secret: 'YOUR CLIENT SECRET',
  subscription_id: 'YOUR SUBSCRIPTION ID'
}

# Create a client
provider = MsRestAzure::ApplicationTokenProvider.new(
       options[:tenant_id],
       options[:client_id],
       options[:client_secret])
credentials = MsRest::TokenCredentials.new(provider)
client = MsRestAzure::AzureServiceClient.new(credentials, options)

# Set Headers
request_headers = {
    'Content-Type': 'application/json; charset=utf-8',
    'x-ms-client-request-id': SecureRandom.uuid,
    'accept-language': 'en-US'
}

request_url = 'https://management.azure.com'
path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.Storage/checkNameAvailability'
api_version = '2019-06-01'

# Set Content
request_content = {
    name: "sto3363",
    type: "Microsoft.Storage/storageAccounts"
}
request_content = JSON.generate(request_content, quirks_mode: true)

# Set operations
request_options = {
    middlewares: [
        [MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], # Add retry policy middleware
        [:cookie_jar] # Add faraday cookie jar middleware
    ],
    path_params: {
        'subscriptionId': options[:subscription_id],
    },
    query_params: {
        'api-version': api_version
    },
    body: request_content,
    headers: request_headers,
    base_url: request_url
}

# Make request
promise = client.make_request_async(request_url, :post, path_template, request_options)

promise = promise.then do |result|
  http_response = result.response
  status_code = http_response.status
  response_content = http_response.body

  unless status_code == 200
    error_model = JSON.load(response_content)
    fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
  end

  result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
  result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
  result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
  
  # Deserialize Response
  if status_code == 200
    begin
      result.body = response_content.to_s.empty? ? nil : JSON.load(response_content)
    rescue Exception => e
      fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
    end
  end

  result
end

response = promise.execute.value!

```

# Provide feedback

Send email to the azsdkteam@microsoft.com or file new issue in this repository.
