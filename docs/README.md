# Microsoft Azure SDK for Ruby

As of Februrary 2021, Azure SDK for Ruby - Resource Management Libraries are officially retired. The libraries will be in maintenance mode until December 31, 2021. However, there will be no further releases based on feature requests. 

In the future, we recommend that you interface with the Azure REST APIs directly from Ruby; instructions are provided in this doc.

You can also find information about the latest SDK releases as well as API references on the [official Azure SDK web-site](https://azure.github.io/azure-sdk/)

# Using Azure REST API

## API Reference

You can find the references of all available REST API endpoints on this doc location
[Azure REST API Reference](https://docs.microsoft.com/en-us/rest/api/azure/)

## Authentication

The first step to using the SDK is authentication and permissions. For people unfamilar with Azure this may be one of the more difficult concepts. 

To authenticate, we will need to set up a Service Principal. For reference on how to set up a Service Principal from command line, please see
[Authenticating a service principal with Azure Resource Manager](http://aka.ms/cli-service-principal) or
[Unattended Authentication](http://aka.ms/auth-unattended).

For a more robust explanation of authentication in Azure,
please follow [Developer’s guide to auth with Azure Resource Manager API](http://aka.ms/arm-auth-dev-guide).

After creating the Service Principal, you should have the following key identifiers
* Client ID (GUID)
* Client Secret (String)
* Tenant ID (GUID) or domain name (String).

## Making REST request

* [Create the request](https://docs.microsoft.com/en-us/rest/api/azure/#create-the-request)
  * [Acquire an access token](https://docs.microsoft.com/en-us/rest/api/azure/#acquire-an-access-token)
    * [Authorization code grant (interactive clients)](https://docs.microsoft.com/en-us/rest/api/azure/#authorization-code-grant-interactive-clients)
    * [Client credentials grant (non-interactive clients)](https://docs.microsoft.com/en-us/rest/api/azure/#client-credentials-grant-non-interactive-clients)
  * [Assemble the request message](https://docs.microsoft.com/en-us/rest/api/azure/#assemble-the-request-message)
    * [Request URI](https://docs.microsoft.com/en-us/rest/api/azure/#request-uri)
    * [Request header](https://docs.microsoft.com/en-us/rest/api/azure/#request-header)
    * [Request body](https://docs.microsoft.com/en-us/rest/api/azure/#request-body)
* [Send the request](https://docs.microsoft.com/en-us/rest/api/azure/#send-the-request)
* [Process the response message](https://docs.microsoft.com/en-us/rest/api/azure/#process-the-response-message)
* [Async operations, throttling, and paging](https://docs.microsoft.com/en-us/rest/api/azure/#async-operations-throttling-and-paging)

# Using ms_rest_azure client library

The ms_rest_azure is a rest api client library out of box in Ruby SDK. Since it will be deprecated together, it is recommanded that you implement your own client according to your needs. The following documents are intend to help you to understand the concepts and workflow by using it.

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
In addition to environment variables, you can also pass those parameters in an Option Hash when you initialize the profile clients. This options hash consists of tenant_id, client_id, client_secret, subscription_id, active_directory_settings and credentials. Among these, the active_directory_settings and credentials are optional.

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

### Step 1 [Acquire an access token](https://docs.microsoft.com/en-us/rest/api/azure/#acquire-an-access-token)

### Step 2 ActiveDirectoryServiceSettings

ActiveDirectoryServiceSettings class represents a settings for Azure AD authentication. It contains 4 sets of properties for different clouds

* get_azure_settings
* get_azure_china_settings
* get_azure_german_settings
* get_azure_us_government_settings

So you can create a application token provider with Azure China Settings by using the following code

```ruby
settings = MsRestAzure::ActiveDirectoryServiceSettings.get_azure_china_settings
```

### Step 3 Use token provider

There are 4 kinds of token providers in library:

* MsRest::StringTokenProvider
* MsRestAzure::ApplicationTokenProvider
* MsRestAzure::AzureCliTokenProvider
* MsRestAzure::MSITokenProvider

In most cases, we use the ApplicationTokenProvider
```ruby
provider = MsRestAzure::ApplicationTokenProvider.new(
       'YOUR TENANT ID',
       'YOUR CLIENT ID',
       'YOUR CLIENT SECRET',
       settings)
```

MSITokenProvider supports 2 ways to get MSI(Managed Service Identity) Token

* Accessing the http://169.254.169.254/metadata/identity/oauth2/token to get the MSI Token (default)
* Using the extension installed locally and accessing http://localhost:50342/oauth2/token to get the MSI Token

```ruby
provider = MsRestAzure::MSITokenProvider.new()
```

AzureCliTokenProvider use [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/) to acquire token. Azure CLI should be installed in PATH. 

```ruby
provider = MsRestAzure::AzureCliTokenProvider.new()
```

### Step 4 Create Token Credentials
```ruby
credentials = MsRest::TokenCredentials.new(provider)
```

## Make an request 

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

## Additional Code Samples

* [Create a virtual machine](create_a_virtual_machine.md)

# Need help?

- File an issue via [Github Issues](https://github.com/Azure/azure-sdk-for-ruby/issues/new)
- Send email to azsdkteam@microsoft.com
