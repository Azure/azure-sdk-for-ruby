
# Microsoft Azure SDK for Ruby
[![Build Status](https://travis-ci.org/Azure/azure-sdk-for-ruby.png?branch=dev)](https://travis-ci.org/Azure/azure-sdk-for-ruby) [![Code Climate](https://codeclimate.com/github/Azure/azure-sdk-for-ruby/badges/gpa.svg)](https://codeclimate.com/github/Azure/azure-sdk-for-ruby)


This project provides a Ruby package that makes it easy to access and manage Microsoft Azure Services like Storage, Service Bus and Virtual Machines.

# Library Features

* [Storage](#storage)
    * [Blobs](#blobs)
    * [Tables](#tables)
    * [Queues](#queues)
* Storage Account Management
* [Service Bus](#service-bus)
    * [relays](#relays)
    * [Queues](#sb-queues)
    * [Topics](#topics)
* [Base Management](#base-mgmt)
    * [Locations](#locations)
    * [Affinity Groups](#affinity)
* [Virtual Machine Management](#vms)
    * [list images](#images)
    * list, delete Disks
    * manage virtual machines
* Cloud Service Management
* [SQL Database Server Management](#sql)
* [Virtual Network Management](#vnets)
    * List VNet
    * Create VNet via parameters or xml file

# Supported Ruby Versions

* Ruby 1.9.3
* Ruby 2.0
* Ruby 2.1
* Ruby 2.2

# Getting Started

## Install the rubygem package

You can install the azure rubygem package directly.

```bash
gem install azure
```

## Download Source Code

To get the source code of the SDK via **git** just type:

```bash
git clone https://github.com/Azure/azure-sdk-for-ruby.git
cd ./azure-sdk-for-ruby
```
Then, run bundler to install all the gem dependencies:

```bash
bundle install
```

## Generate Documentation

Running the command ``rdoc`` will generate the API documentation in the `./doc` directory.

## Setup Connection

You can use this SDK against the Microsoft Azure Services in the cloud, or against the local Storage Emulator if you are on Windows. Service Bus and Microsoft Azure Service Management emulation are not supported. Of course, to use the Microsoft Azure Services in the cloud, you need to first [create a Microsoft Azure account](http://www.azure.com/en-us/pricing/free-trial/). After that, you can get the information you need to configure Storage and Service Bus from the [Microsoft Azure Portal](https://manage.azure.com).

There are two ways you can set up the connections:

1. [via code](#via-code)
2. [via environment variables](#via-environment-variables)

<a name="via-code"></a>
### Via Code
* Against Microsoft Azure Services in the cloud

```ruby

  require "azure"

  Azure.storage_account_name = "<your azure storage account name>"
  Azure.storage_access_key   = "<your azure storage access key>"

  # Configure these 3 properties to use Service Bus
  Azure.sb_namespace         = "<your azure service bus namespace>"
  Azure.sb_access_key        = "<your azure service bus access key>"
  Azure.sb_issuer            = "<your azure service bus issuer>"

  # Configure these 3 properties to use Service Management. We support passwordless pfx & pem cert formats.
  Azure.management_certificate = "<path to your *.pem or *.pfx>"
  Azure.subscription_id        = "<your Subscriptionid>"

  # Configure a ca_cert.pem file if you are having issues with ssl peer verification
  Azure.ca_file = "./ca_file.pem"

  # Or create a specific instance of an Azure.client, which will inherit your default configuration settings.
  client = Azure.client(storage_account_name: "your account name", storage_access_key: "your access key")

```

* Against local Emulator (Windows Only)

```ruby

  require "azure"

  # Configure these 2 properties to use local Storage Emulator
  Azure.storage_account_name = "devstoreaccount1"
  Azure.storage_access_key   = "Eby8vdM02xNOcqFlqUwJPLlmEtlCDXJ1OUzFT50uSRZ6IFsuFq2UVErCz4I6tq/K1SZFPTOtr/KBHBeksoGMGw=="

  Azure.storage_blob_host    = "http://127.0.0.1:10000/devstoreaccount1"
  Azure.storage_queue_host   = "http://127.0.0.1:10001/devstoreaccount1"
  Azure.storage_table_host   = "http://127.0.0.1:10002/devstoreaccount1"

  # Local Service Bus Emulator is not supported
  # Local Service Management emulation is not supported

```

<a name="via-environment-variables"></a>
### Via Environment Variables

* Against Microsoft Azure Services in the cloud

    * Storage

    ```bash
    AZURE_STORAGE_ACCOUNT = <your azure storage account name>
    AZURE_STORAGE_ACCESS_KEY = <your azure storage access key>
    ```
    * Service Bus

    ```bash
    AZURE_SERVICEBUS_NAMESPACE = <your azure service bus namespace>
    AZURE_SERVICEBUS_ACCESS_KEY = <your azure service bus access key>
    AZURE_SERVICEBUS_ISSUER = <your azure service bus issuer>
    ```
    * Service Management

    ```bash
    AZURE_MANAGEMENT_CERTIFICATE = <path to *.pem or *.pfx>
    AZURE_SUBSCRIPTION_ID = <your subscription ID>
    AZURE_MANAGEMENT_ENDPOINT = <The endpoint URL of Microsoft Azure management service>
    AZURE_SQL_DATABASE_MANAGEMENT_ENDPOINT = <SQL Database Management Endpoint>
    AZURE_SQL_DATABASE_AUTHENTICATION_MODE = <:management_certificate or :sql_server>
    ```
    * [SSL Certificate File](https://gist.github.com/fnichol/867550)
    
    ```bash
    SSL_CERT_FILE=<path to *.pem>
    ```
* Against local Emulator (Windows Only)

    * Storage

    ```bash
    AZURE_STORAGE_ACCOUNT = devstoreaccount1
    AZURE_STORAGE_ACCESS_KEY = Eby8vdM02xNOcqFlqUwJPLlmEtlCDXJ1OUzFT50uSRZ6IFsuFq2UVErCz4I6tq/K1SZFPTOtr/KBHBeksoGMGw==
    AZURE_STORAGE_BLOB_HOST = http://127.0.0.1:10000/devstoreaccount1
    AZURE_STORAGE_QUEUE_HOST = http://127.0.0.1:10001/devstoreaccount1
    AZURE_STORAGE_TABLE_HOST = http://127.0.0.1:10002/devstoreaccount1
    ```
    * Service Bus: not supported

    * Service Management: not supported

## Run Test

You can use the following commands to run:
* all the tests: ``rake test``
* a specific suite of tests: ``rake test:integration:blob``
* one particular test file: ``ruby -I"lib:test" "<path of the test file>"``

# Usage

<a name="storage"></a>
## Storage

### Setup your Storage Credentials

```ruby

# Require the azure rubygem
require "azure"

# Add your default storage credentials
Azure.storage_account_name = "your account name"
Azure.storage_access_key = "your access key"

# Or create a specific instance of an Azure.client
client = Azure.client(storage_account_name: "your account name", storage_access_key: "your access key")

default_blobs = Azure.blobs     # uses the Azure.storage_account_name and Azure.storage_access_key

blobs = client.blobs            # uses the client.storage_account_name and client.storage_access_key

```
<a name="blobs"></a>
### Blobs

```ruby

# Create an azure storage blob service object
blobs = Azure.blobs

# Create a container
container = blobs.create_container("test-container")

# Upload a Blob
content = File.open('test.jpg', 'rb') { |file| file.read }
blobs.create_block_blob(container.name, "image-blob", content)

# List containers
blobs.list_containers()

# List Blobs
blobs.list_blobs(container.name)

# Download a Blob
blob, content = blobs.get_blob(container.name, "image-blob")
File.open("download.png", "wb") {|f| f.write(content)}

# Delete a Blob
blobs.delete_blob(container.name, "image-blob")

```
<a name="tables"></a>
### Tables

```ruby

# Require the azure rubygem
require "azure"

# Create an azure storage table service object
tables = Azure.tables

# Create a table
tables.create_table("testtable")

# Insert an entity
entity = { "content" => "test entity", :partition_key => "test-partition-key", :row_key => "1" }
tables.insert_entity("testtable", entity)

# Get an entity
result = tables.get_entity("testtable", "test-partition-key", "1")

# Update an entity
result.properties["content"] = "test entity with updated content"
tables.update_entity(result.table, result.properties)

# Query entities
query = { :filter => "content eq 'test entity'" }
result, token = tables.query_entities("testtable", query)

# Delete an entity
tables.delete_entity("testtable", "test-partition-key", "1")

# delete a table
tables.delete_table("testtable")

```

<a name="queues"></a>
### Queues

```ruby

# Require the azure rubygem
require "azure"

# Create an azure storage queue service object
queues = Azure.queues

# Create a queue
queues.create_queue("test-queue")

# Create a message
queues.create_message("test-queue", "test message")

# Get one or more messages with setting the visibility timeout
result = queues.list_messages("test-queue", 30, {:number_of_messages => 10})

# Get one or more messages without setting the visibility timeout
result = queues.peek_messages("test-queue", {:number_of_messages => 10})

# Update a message
message = queues.list_messages("test-queue", 30)
pop_receipt, time_next_visible = queues.update_message("test-queue", message.id, message.pop_receipt, "updated test message", 30)

# Delete a message
message = queues.list_messages("test-queue", 30)
queues.delete_message("test-queue", message.id, message.pop_receipt)

# Delete a queue
queues.delete_queue("test-queue")

```

<a name="service-bus"></a>
## Service Bus

<a name="relays"></a>
### Relay

```ruby

# Require the azure rubygem
require "azure"

# Create an azure service bus object
service_bus = Azure.service_bus

# Create a relay endpoint with just the endpoint name
relay1 = service_bus.create_relay("test-relay-1", { :relay_type => "Http" })

# Create a relay endpoint with a relay object
relay2 = Azure::ServiceBus::Relay.new("test-relay-2")
relay2.requires_client_authorization = false
relay2 = service_bus.create_relay(relay2)

# Delete a relay endpoint
service_bus.delete_relay("test-relay2")

```

<a name="sb-queues"></a>
### Queues

```ruby

# Require the azure rubygem
require "azure"

# Create an azure service bus object
service_bus = Azure.service_bus

# Create a queue with just the queue name
queue1 = service_bus.create_queue("test-queue-1")

# Create a queue with a queue object
queue2 = Azure::ServiceBus::Queue.new("test-queue-2")
queue2.max_size_in_megabytes = 2048
queue2 = service_bus.create_queue(queue2)

# Send a queue message with just the message body
service_bus.send_queue_message("test-queue-1", "test queue message")

# Send a queue message with a brokered message object
message = Azure::ServiceBus::BrokeredMessage.new("another test queue message")
message.correlation_id = "test-correlation-id-1"
service_bus.send_queue_message("test-queue-1", message)

# Receive a queue message
message = service_bus.receive_queue_message("test-queue-1")

# Delete a queue message
service_bus.delete_queue_message(message)

# Delete a queue
service_bus.delete_queue("test-queue-1")

```

<a name="topics"></a>
### Topics

```ruby

# Require the azure rubygem
require "azure"

# Create an azure service bus object
service_bus = Azure.service_bus

# Create a topic with just the topic name
topic1 = service_bus.create_topic("test-topic-1")

# Create a topic with a topic object
topic2 = Azure::ServiceBus::Topic.new("test-topic-2")
topic2.max_size_in_megabytes = 2048
topic2 = service_bus.create_topic(topic2)

# Create a subscription
subscription = Azure::ServiceBus::Subscription.new("test-subscription-1")
subscription.topic = topic1.name
subscription = service_bus.create_subscription(subscription)

# Send a topic message with just the message body
azure_service_bus.send_topic_message(topic1, "test topic message")

# Send a topic message with a brokered message object
message = Azure::ServiceBus::BrokeredMessage.new("another test topic message")
message.correlation_id = "test-correlation-id-1"
service_bus.send_topic_message(topic1, message)

# Receive a subscription message
message = service_bus.receive_subscription_message(topic1.name, subscription.name)

# Delete a subscription message
service_bus.delete_subscription_message(message)

# Delete a subscription
service_bus.delete_subscription(subscription)

# Delete a topic
service_bus.delete_topic(topic1)

```

<a name="vms"></a>
## Virtual Machine Management

```ruby

# Require the azure rubygem
require 'azure'

# Configure these properties
Azure.management_certificate = "path to *.pem or *.pfx file"
Azure.subscription_id        = "your subscription id"

# Create a virtual machine service object
vm_management = Azure.vm_management

# Get a list of existing virtual machines in your subscription
vm_management.list_virtual_machines

# API to shutdown Virtual Machine
vm_management.shutdown_virtual_machine('vm_name', 'cloud_service_name')

# API to start Virtual Machine
vm_management.start_virtual_machine('vm_name', 'cloud_service_name')

# API to restart Virtual Machine
vm_management.restart_virtual_machine('vm_name', 'cloud_service_name')

# API for add disk to Virtual Machine
options = {
  :disk_label => 'disk-label',
  :disk_size => 100, #In GB
  :import => false,
  :disk_name => 'Disk name' #Required when import is true
}
vm_management.add_data_disk('vm_name', 'cloud_service_name', options)

# API to add/update Virtual Machine endpoints
endpoint1 = {
    :name => 'ep-1',
    :public_port => 996,
    :local_port => 998,
    :protocol => 'TCP',
  }
endpoint2 = {
    :name => 'ep-2',
    :public_port => 997,
    :local_port => 997,
    :protocol => 'TCP',
    :load_balancer_name => ‘lb-ep2’,
    :load_balancer => {:protocol => 'http', :path => 'hello'}
  }
vm_management.update_endpoints('vm_name', 'cloud_service_name', endpoint1, endpoint2)

# API to delete Virtual Machine endpoint
vm_management.delete_endpoint('vm_name', 'cloud_service_name', 'endpoint_name')

# API to delete Virtual Machine
vm_management.delete_virtual_machine('vm_name', 'cloud_service_name')

# API to start deployment
params = {
  :vm_name => 'vm_name',
  :vm_user => 'azureuser',
  :image => '5112500ae3b842c8b9c604889f8753c3__OpenLogic-CentOS-63APR20130415',
  :password => 'Password',
  :location => 'West US'
}
options = {
  :storage_account_name => 'storage_suse',
  :cloud_service_name => 'cloud_service_name',
  :deployment_name =>'vm_name',
  :tcp_endpoints => '80,3389:3390',
  :private_key_file => './private_key.key',     # required for ssh
  :ssh_port => 2222,
  :vm_size => 'Small',                          # Use any Azure VM size
  :affinity_group_name => 'affinity1',
  :virtual_network_name => 'xplattestvnet',
  :subnet_name => 'subnet1',
  :availability_set_name => 'availabiltyset1',
  :reserved_ip_name => 'reservedipname'
}
vm_management.create_virtual_machine(params,options)

# API usage to add new roles under cloud service creating VM
# API add_role create multiple roles under the same cloud service. Atleast a single deployment should be created under a hosted service.
params = {
  :vm_name => 'vm_name',
  :cloud_service_name => 'cloud_service_name',
  :vm_user => 'azureuser',
  :image => 'a699494373c04fc0bc8f2bb1389d6106__Win2K8R2SP1-Datacenter-201305.01-en.us-127GB.vhd',
  :password => 'ComplexPassword',
}
options = {
  :storage_account_name => 'storage_suse',
  :winrm_transport => ['https','http'],         # Currently http(s) is supported.
  :tcp_endpoints => '80,3389:3390',
  :private_key_file => './private_key.key',     # Required for winrm(https) certificate.
  :winrm_https_port => 5999,
  :winrm_http_port => 6999,                     # Used to open different powershell port
  :vm_size => 'Small',                          # Use any Azure VM size
  :availability_set_name => 'availabiltyset'
}
vm_management.add_role(params, options)

```

<a name="images"></a>
## List Images

```ruby

# Get a list of available virtual machine images
vm_image_management = Azure.vm_image_management
vm_image_management.list_virtual_machine_images

```

<a name="base-mgmt"></a>
## Base Management

<a name="locations"></a>
```ruby

# Get a list of available regional data center locations
base_management = Azure.base_management
base_management.list_locations

```

<a name="affinity"></a>
### Affinity Group Management

```ruby

# Require the azure rubygem
require 'azure'

# Create a affinity group service object
base_management = Azure.base_management

# Get a list of affinity group that are provisioned for a subscription.
base_management.list_affinity_groups

# API to delete affinity group
base_management.delete_affinity_group('affinity-group-name')

# API to add a new affinity group to a subscription
options = {:description => 'Some Description'}
base_management.create_affinity_group('affinity-group-name', 'West US', 'Label Name', options)

# API to update affinity group
options = {:description => 'Some Description'}
base_management.update_affinity_group('affinity-group-name', 'Label Name', options)

# API to list properties associated with the specified affinity group
base_management.get_affinity_group('affinity-group-name')

```

<a name="sql"></a>
## SQL Database Server Management

```ruby

# Require the azure rubygem
require 'azure'

# Configure these properties
Azure.management_certificate = "path to *.pem or *.pfx file"
Azure.subscription_id        = "your subscription id"

# Create a database server service object
sql_db_service = Azure.sql_database_management

# Get a list of SQL Database servers that are provisioned for a subscription.
sql_db_service.list_servers

# API to delete SQL Database server
sql_db_service.delete_server('server_name')

# API to adds a new SQL Database server to a subscription
sql_db_service.create_server('admin-login', 'ComplexPassword', 'West US')

# API to sets the administrative password of a SQL Database server for a subscription
sql_db_service.reset_password('server-name', 'NewPassword')

# Get a list of all the server-level firewall rules for a SQL Database server that belongs to a subscription
sql_db_service.list_sql_server_firewall_rules("server-name")

# API to adds a new server-level firewall rule or updates an existing server-level firewall rule for a SQL Database server with requester’s IP address.
sql_db_service.delete_sql_server_firewall_rule("server-name", "rule-name")

# API to add/updates server-level firewall rule for a SQL Database server that belongs to a subscription
ip_range = {:start_ip_address => "0.0.0.1", :end_ip_address => "0.0.0.5"}
sql_db_service.set_sql_server_firewall_rule("server-name", "rule-name", ip_range)

# If ip_range was not specified in the above api then the IP of the machine from where the api is being called would be set as the rule.
# To toggle between the option to allow Microsoft Azure services to access db server similar to azure portal just set the fire wall rule
# with iprange to be 0.0.0.0 as start and end.Remove the rule to unset this option.

```

<a name="vnets"></a>
## Virtual Network Management

```ruby

# Require the azure rubygem
require 'azure'

# Create a virtual network service object
vnet = Azure.network_management

# API to get a list of virtual networks created for a subscription.
vnet.list_virtual_networks

# API to configure virtual network with required and optional parameters
address_space = ['172.16.0.0/12',  '10.0.0.0/8',  '192.168.0.0/24']
subnets = [{:name => 'subnet-1',  :ip_address=>'172.16.0.0',  :cidr=>12},  {:name => 'subnet-2',  :ip_address=>'10.0.0.0',  :cidr=>8}]
dns_servers = [{:name => 'dns-1',  :ip_address=>'1.2.3.4'},  {:name => 'dns-2',  :ip_address=>'8.7.6.5'}]
options = {:subnet => subnets, :dns => dns_servers}
vnet.set_network_configuration('virtual-network-name', 'location_name', address_space, options)

# API to configure virtual network from xml file that can be exported from management portal and customized to add or delete vnet
vnetxml = './customnetwork.xml'
vnet.set_network_configuration(vnetxml)

```

# Useful commands for certificate operations

Currently the sdk supports *.pem or *.pfx (passwordless pfx) for service management operations. Following are the steps discussed on various cert operations.

## Publish Settings files

* To create a pfx from the publishsettings, simply download the publishsettings file for your subscription 
[https://manage.windowsazure.com/publishsettings](https://manage.windowsazure.com/publishsettings/index?client=powershell). Make sure you have this gem installed and
 run `pfxer --in [path to your .publishsettings file]`. This will create a .pfx from your publish settings file which can 
 be supplied as a cert parameter for Service Management Commands.
 
## Generate New Cert and Upload to Azure Portal

* Using the following openssl commands to create a cert and upload to Azure Management
  * Generate public and private `openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout mycert.key -out mycert.pem`
  * Generate public .cer for Azure upload `openssl x509 -inform pem -in mycert.pem -outform der -out mycert_mgmt.cer`
  * Upload the `mycert_mgmt.cer` to Azure Management through [https://management.azure.com](https://management.azure.com)
  * Combine the public and private into one `cat mycert.key mycert.pem > cert.pem`
  * Use cert.pem as your cert parameter for Service Management Commands.

# Need Help?

Be sure to check out the Microsoft Azure [Developer Forums on Stack Overflow and MSDN](http://go.microsoft.com/fwlink/?LinkId=234489) if you have trouble with the provided code.

# Contribute Code or Provide Feedback

If you would like to become an active contributor to this project please follow the instructions provided in [Microsoft Azure Projects Contribution Guidelines](http://azure.github.com/guidelines.html).
If you encounter any bugs with the library please file an issue in the [Issues](https://github.com/Azure/azure-sdk-for-ruby/issues) section of the project.

# Learn More

For documentation on how to host Ruby applications on Microsoft Azure, please see the [Microsoft Azure Ruby Developer Center](http://www.azure.com/en-us/develop/ruby/).
For documentation on Azure PowerShell CLI tool for Windows, please see our readme [here](http://github.com/azure/azure-sdk-tools).
For documentation on the Azure cross platform CLI tool for Windows, Mac and Linux, please see our readme [here](http://github.com/azure/azure-sdk-tools-xplat).
