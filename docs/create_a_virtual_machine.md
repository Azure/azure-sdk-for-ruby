# Create a Virtual Machine

## Install

You can install the ms_rest_azure gem with the following command:

```ruby
gem install 'ms_rest_azure'
```

## Requires

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
```

## Prerequisite

In order to use the Azure client, you must supply the following values:

* Tenant Id
* Client Id
* Subscription Id
* Client Secret

```ruby
options = {
  tenant_id: 'YOUR TENANT ID',
  client_id: 'YOUR CLIENT ID',
  client_secret: 'YOUR CLIENT SECRET',
  subscription_id: 'YOUR SUBSCRIPTION ID'
}
```

## Create a client

```ruby
provider = MsRestAzure::ApplicationTokenProvider.new(
       options[:tenant_id],
       options[:client_id],
       options[:client_secret])
credentials = MsRest::TokenCredentials.new(provider)
client = MsRestAzure::AzureServiceClient.new(credentials, options)
```

## Create a Resource Group

[Resource Group Create Reference](https://docs.microsoft.com/en-us/rest/api/resources/resourcegroups/createorupdate)

```ruby
request_headers = {
    'Content-Type': 'application/json; charset=utf-8',
    'x-ms-client-request-id': SecureRandom.uuid,
    'accept-language': 'en-US'
}
request_url = 'https://management.azure.com'

resource_group_name = "rubyTest"

path_template = 'subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}'
api_version = '2020-06-01'

# Set Content
request_content = {
    location: "eastus"
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
        'resourceGroupName': resource_group_name
    },
    query_params: {
        'api-version': api_version
    },
    body: request_content,
    headers: request_headers,
    base_url: request_url
}

# Make request
promise = client.make_request_async(request_url, :put, path_template, request_options)

promise = promise.then do |result|
  http_response = result.response
  status_code = http_response.status
  response_content = http_response.body

  unless status_code == 200 || status_code == 201
    error_model = JSON.load(response_content)
    fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
  end

  result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
  result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
  result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
  
  # Deserialize Response
  if status_code == 200 || status_code == 201
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

## Create a network

### Create a public Ip Address

[Public Ip Address Create Reference](https://docs.microsoft.com/en-us/rest/api/virtualnetwork/publicipaddresses/createorupdate)

```ruby
request_headers = {
    'Content-Type': 'application/json; charset=utf-8',
    'x-ms-client-request-id': SecureRandom.uuid,
    'accept-language': 'en-US'
}
request_url = 'https://management.azure.com'

public_ip_addresses = "rubyVmPublicIP"

path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/publicIPAddresses/{publicIpAddressName}'
api_version = '2020-05-01'

# Set Content
request_content = {
    "location": "eastus",
    "sku": {
        "name": "Basic",
        "tier": "Regional"
    },
    "properties": {
        "publicIpAllocationMethod": "Dynamic",
        "publicIPAddressVersion": "IPv4",
        "idleTimeoutInMinutes": 4
    }
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
        'resourceGroupName': resource_group_name,
        'publicIpAddressName': public_ip_addresses
    },
    query_params: {
        'api-version': api_version
    },
    body: request_content,
    headers: request_headers,
    base_url: request_url
}

# Make request
promise = client.make_request_async(request_url, :put, path_template, request_options)

promise = promise.then do |result|
  http_response = result.response
  status_code = http_response.status
  response_content = http_response.body

  unless status_code == 200 || status_code == 201
    error_model = JSON.load(response_content)
    fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
  end

  result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
  result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
  result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
  
  # Deserialize Response
  if status_code == 200 || status_code == 201
    begin
      result.body = response_content.to_s.empty? ? nil : JSON.load(response_content)
    rescue Exception => e
      fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
    end
  end

  result
end

response = promise.execute.value!

public_ip = response.body

```

### Create a virtunal network with subnet

[Subnet Create Reference](https://docs.microsoft.com/en-us/rest/api/virtualnetwork/virtualnetworks/createorupdate)

```ruby
request_headers = {
    'Content-Type': 'application/json; charset=utf-8',
    'x-ms-client-request-id': SecureRandom.uuid,
    'accept-language': 'en-US'
}
request_url = 'https://management.azure.com'

virtual_network_name = "ruby-vnet"
subnet_name = "vm-1"

path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}'
api_version = '2020-05-01'

# Set Content
request_content = {
    "location": "eastus",
    "properties": {
    "addressSpace": {
      "addressPrefixes": [
        "10.0.0.0/16"
      ]
    },
    "subnets": [
      {
        "name": subnet_name,
        "properties": {
          "addressPrefix": "10.0.0.0/24"
        }
      }
    ]
  },
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
        'resourceGroupName': resource_group_name,
        'virtualNetworkName': virtual_network_name
    },
    query_params: {
        'api-version': api_version
    },
    body: request_content,
    headers: request_headers,
    base_url: request_url
}

# Make request
promise = client.make_request_async(request_url, :put, path_template, request_options)

promise = promise.then do |result|
  http_response = result.response
  status_code = http_response.status
  response_content = http_response.body

  unless status_code == 200 || status_code == 201
    error_model = JSON.load(response_content)
    fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
  end

  result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
  result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
  result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
  
  # Deserialize Response
  if status_code == 200 || status_code == 201
    begin
      result.body = response_content.to_s.empty? ? nil : JSON.load(response_content)
    rescue Exception => e
      fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
    end
  end

  result
end

response = promise.execute.value!

vnet = response.body
subnet = vnet["properties"]["subnets"][0]

```

### Create a network security group

[Network Security Group Create Reference](https://docs.microsoft.com/en-us/rest/api/virtualnetwork/networksecuritygroups/createorupdate)

```ruby
request_headers = {
    'Content-Type': 'application/json; charset=utf-8',
    'x-ms-client-request-id': SecureRandom.uuid,
    'accept-language': 'en-US'
}
request_url = 'https://management.azure.com'

network_sec_group_name = "ruby-sec-group"

path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityGroups/{networkSecurityGroupName}'
api_version = '2020-05-01'

# Set Content
request_content = {
    "location": "eastus",
    "properties": {
        "securityRules": [
            {
                "name": "SSH",
                "properties": {
                    "priority": 1000,
                    "protocol": "TCP",
                    "access": "Allow",
                    "direction": "Inbound",
                    "sourceAddressPrefix": "*",
                    "sourcePortRange": "*",
                    "destinationAddressPrefix": "*",
                    "destinationPortRange": "22"
                }
            }
        ]
    },
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
        'resourceGroupName': resource_group_name,
        'networkSecurityGroupName': network_sec_group_name
    },
    query_params: {
        'api-version': api_version
    },
    body: request_content,
    headers: request_headers,
    base_url: request_url
}

# Make request
promise = client.make_request_async(request_url, :put, path_template, request_options)

promise = promise.then do |result|
  http_response = result.response
  status_code = http_response.status
  response_content = http_response.body

  unless status_code == 200 || status_code == 201
    error_model = JSON.load(response_content)
    fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
  end

  result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
  result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
  result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
  
  # Deserialize Response
  if status_code == 200 || status_code == 201
    begin
      result.body = response_content.to_s.empty? ? nil : JSON.load(response_content)
    rescue Exception => e
      fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
    end
  end

  result
end

response = promise.execute.value!

network_security_group = response.body

```

### Create a network interface

[Network Interface Create Reference](https://docs.microsoft.com/en-us/rest/api/virtualnetwork/networkinterfaces/createorupdate)

```ruby
request_headers = {
    'Content-Type': 'application/json; charset=utf-8',
    'x-ms-client-request-id': SecureRandom.uuid,
    'accept-language': 'en-US'
}
request_url = 'https://management.azure.com'

network_interface_name = "ruby-nic"

path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkInterfaces/{networkInterfaceName}'
api_version = '2020-05-01'

# Set Content
request_content = {
    "location": "eastus",
    "properties": {
    "enableAcceleratedNetworking": false,
    "networkSecurityGroup": {
        "id": network_security_group["id"],
    },
    "ipConfigurations": [
      {
        "name": "ipconfig1",
        "properties": {
          "publicIPAddress": {
            "id": public_ip["id"]
          },
          "subnet": {
            "id": subnet["id"]
          },
          "privateIPAllocationMethod": "Dynamic",
        }
      }
    ]
  },
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
        'resourceGroupName': resource_group_name,
        'networkInterfaceName': network_interface_name
    },
    query_params: {
        'api-version': api_version
    },
    body: request_content,
    headers: request_headers,
    base_url: request_url
}

# Make request
promise = client.make_request_async(request_url, :put, path_template, request_options)

promise = promise.then do |result|
  http_response = result.response
  status_code = http_response.status
  response_content = http_response.body

  unless status_code == 200 || status_code == 201
    error_model = JSON.load(response_content)
    fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
  end

  result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
  result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
  result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
  
  # Deserialize Response
  if status_code == 200 || status_code == 201
    begin
      result.body = response_content.to_s.empty? ? nil : JSON.load(response_content)
    rescue Exception => e
      fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
    end
  end

  result
end

response = promise.execute.value!

network_interface = response.body
```

## Create a Virtual Machine with password authentication
[Virtual Machine Create Reference](https://docs.microsoft.com/en-us/rest/api/compute/virtualmachines/createorupdate)

```ruby
request_headers = {
    'Content-Type': 'application/json; charset=utf-8',
    'x-ms-client-request-id': SecureRandom.uuid,
    'accept-language': 'en-US'
}
request_url = 'https://management.azure.com'

virtual_machine_name = "myVM"
username = "MyVmUserName"
password = "1t'saC0mplatedP@ssw0rd"

path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{virtualMachineName}'
api_version = '2020-06-01'

# Set Content
request_content = {
    "location": "eastus",  
    "properties": {
        "hardwareProfile": {
            "vmSize": "Standard_D1_v2"
        },
        "storageProfile": {
            "imageReference": {
                "sku": "18.04-LTS",
                "publisher": "Canonical",
                "version": "latest",
                "offer": "UbuntuServer"
            },
            "osDisk": {
                "caching": "ReadWrite",
                "managedDisk": {
                    "storageAccountType": "Standard_LRS"
                },
                "name": "myVMosdisk",
                "createOption": "FromImage"
            }
        },
        "osProfile": {
            "adminUsername": username,
            "computerName": virtual_machine_name,
            "adminPassword": password
        },
        "networkProfile": {
            "networkInterfaces": [
                {
                    "id": network_interface["id"],
                    "properties": {
                        "primary": true
                    }
                }
            ]
        }
  }
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
        'resourceGroupName': resource_group_name,
        'virtualMachineName': virtual_machine_name,
    },
    query_params: {
        'api-version': api_version
    },
    body: request_content,
    headers: request_headers,
    base_url: request_url
}

# Make request
promise = client.make_request_async(request_url, :put, path_template, request_options)

promise = promise.then do |result|
  http_response = result.response
  status_code = http_response.status
  response_content = http_response.body

  unless status_code == 200 || status_code == 201
    error_model = JSON.load(response_content)
    fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
  end

  result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
  result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
  result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
  
  # Deserialize Response
  if status_code == 200 || status_code == 201
    begin
      result.body = response_content.to_s.empty? ? nil : JSON.load(response_content)
    rescue Exception => e
      fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
    end
  end

  result
end

response = promise.execute.value!

vm = response.body
```