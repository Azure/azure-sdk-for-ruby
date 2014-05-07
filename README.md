# Microsoft Azure SDK for Ruby
[![Build Status](https://travis-ci.org/Azure/azure-sdk-for-ruby.png?branch=dev)](https://travis-ci.org/Azure/azure-sdk-for-ruby)


This project provides a Ruby package that makes it easy to access and manage Microsoft Azure Services like Storage, Service Bus and Virtual Machines.

# Library Features
* Storage
    * Blobs
        * create, list, and delete containers, work with container metadata and permissions, list blobs in container
        * create block and page blobs (from a stream, a file, or a string), work with blob blocks and pages, delete blobs
        * work with blob properties, metadata, leases, snapshot a blob
    * Tables
        * create and delete tables
        * create, query, insert, update, merge, and delete entities
    * Queues
        * create, list, and delete queues, and work with queue metadata
        * create, get, peek, update, delete messages
* Service Bus
    * Queues
        * create, list and delete queues
        * send, receive, unlock and delete messages
    * Topics
        * create, list, and delete topics
        * send, receive, unlock and delete messages
        * create, list, and delete subscriptions
        * create, list, and delete rules
* Base Management
  * list locations
    * get, list, create, update, delete affinity groups
* Virtual Machine Management
    * list images
  * list, delete Disks
    * Virtual Machines
    * create linux based VMs and ssh with cert and key option enabled for ssh and WINRM (both http & https)enabled for windows based VMs
    * list, shut down, delete, find virtual machine deployments. While shutting down your VMs the provisioning state would be deallocated and this VM will not be included in the billing cycle.
    * Create VM for a specific virtual network
* Cloud Service Management
    * create, list, delete cloud services
* Storage Account Management
    * create, list storage accounts, list locations
* SQL Database Server Management
  * list, create SQL Database servers
  * reset password for a SQL Database server
  * list, set, delete firewall rules for a SQL Database server
* Virtual Network Management
    * List VNet
    * Create VNet via parameters or xml file

# Supported Ruby Versions

* Ruby 1.9.3
* Ruby 2.0

**Notice** that Ruby 2.0 x64 on Windows is not supported due to the [lack of nokogiri](https://github.com/sparklemotion/nokogiri/issues/864).

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

You can use this SDK against the Microsoft Azure Services in the cloud, or against the local Storage Emulator if you are on Windows. Service Bus and Microsoft Azure Service Management emulation are not supported. Of course, to use the Microsoft Azure Services in the cloud, you need to first [create a Microsoft Azure account](http://www.windowsazure.com/en-us/pricing/free-trial/). After that, you can get the information you need to configure Storage and Service Bus from the [Microsoft Azure Portal](https://manage.windowsazure.com).

There are two ways you can set up the connections:

1. [via code](#via-code)
2. [via environment variables](#via-environment-variables)

### Via Code
* Against Microsoft Azure Services in the cloud

  ```ruby
  require "azure"

  Azure.configure do |config|
      # Configure these 2 properties to use Storage
      config.storage_account_name = "<your azure storage account name>"
      config.storage_access_key   = "<your azure storage access key>"
      # Configure these 3 properties to use Service Bus
      config.sb_namespace         = "<your azure service bus namespace>"
      config.sb_access_key        = "<your azure service bus access key>"
      config.sb_issuer            = "<your azure service bus issuer>"
      # Configure these 3 properties to use Service Management. We support passwordless pfx & pem cert formats.
      config.management_certificate = "<path to your *.pem or *.pfx>"
      config.subscription_id        = "<your Subscriptionid>"
      config.management_endpoint    = "https://management.core.windows.net"
      # This property enables/disables SQL Server authentication. By default SQL Server authentication is enabled. SQL Server authentication will also be enabled if you do not set this property
      config.sql_database_authentication_mode = <:management_certificate or :sql_server>
      # Configure SQL Server authentication API endpoint here
      config.sql_database_management_endpoint = "http://management.database.windows.net:8443"
  end
  ```
* Against local Emulator (Windows Only)
  ```ruby
  require "azure"

  Azure.configure do |config|
      # Configure these 2 properties to use local Storage Emulator
      config.storage_account_name = "devstoreaccount1"
      config.storage_access_key   = "Eby8vdM02xNOcqFlqUwJPLlmEtlCDXJ1OUzFT50uSRZ6IFsuFq2UVErCz4I6tq/K1SZFPTOtr/KBHBeksoGMGw=="
      config.storage_blob_host    = "http://127.0.0.1:10000/devstoreaccount1"
      config.storage_queue_host   = "http://127.0.0.1:10001/devstoreaccount1"
      config.storage_table_host   = "http://127.0.0.1:10002/devstoreaccount1"
      # Local Service Bus Emulator is not supported
      # Local Service Management emulation is not supported
  end
  ```
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
**For more examples, please see the [Microsoft Azure Ruby Developer Center](http://www.windowsazure.com/en-us/develop/ruby)**
## Storage

### Blobs

```ruby
# Require the azure rubygem
require "azure"

# Create an azure storage blob service object
azure_blob_service = Azure::BlobService.new

# Create a container
container = azure_blob_service.create_container("test-container")

# Upload a Blob
content = File.open('test.jpg', 'rb') { |file| file.read }
azure_blob_service.create_block_blob(container.name, "image-blob", content)

# List containers
azure_blob_service.list_containers()

# List Blobs
azure_blob_service.list_blobs(container.name)

# Download a Blob
blob, content = azure_blob_service.get_blob(container.name, "image-blob")
File.open("download.png", "wb") {|f| f.write(content)}

# Delete a Blob
azure_blob_service.delete_blob(container.name, "image-blob")
```
### Tables

```ruby
# Require the azure rubygem
require "azure"

# Create an azure storage table service object
azure_table_service = Azure::TableService.new

# Create a table
azure_table_service.create_table("testtable")

# Insert an entity
entity = { "content" => "test entity", :partition_key => "test-partition-key", :row_key => "1" }
azure_table_service.insert_entity("testtable", entity)

# Get an entity
result = azure_table_service.get_entity("testtable", "test-partition-key", "1")

# Update an entity
result.properties["content"] = "test entity with updated content"
azure_table_service.update_entity(result.table, result.properties)

# Query entities
query = { :filter => "content eq 'test entity'" }
result, token = azure_table_service.query_entities("testtable", query)

# Delete an entity
azure_table_service.delete_entity("testtable", "test-partition-key", "1")

# delete a table
azure_table_service.delete_table("testtable")
```
### Queues

```ruby
# Require the azure rubygem
require "azure"

# Create an azure storage queue service object
azure_queue_service = Azure::QueueService.new

# Create a queue
azure_queue_service.create_queue("test-queue")

# Create a message
azure_queue_service.create_message("test-queue", "test message")

# Get one or more messages with setting the visibility timeout
result = azure_queue_service.list_messages("test-queue", 30, {:number_of_messages => 10})

# Get one or more messages without setting the visibility timeout
result = azure_queue_service.peek_messages("test-queue", {:number_of_messages => 10})

# Update a message
message = azure_queue_service.list_messages("test-queue", 30)
pop_receipt, time_next_visible = azure_queue_service.update_message("test-queue", message.id, message.pop_receipt, "updated test message", 30)

# Delete a message
message = azure_queue_service.list_messages("test-queue", 30)
azure_queue_service.delete_message("test-queue", message.id, message.pop_receipt)

# Delete a queue
azure_queue_service.delete_queue("test-queue")
```
## Service Bus

```ruby
# Require the azure rubygem
require "azure"

# Create an azure service bus object
azure_service_bus = Azure::ServiceBusService.new

# Create a queue with just the queue name
queue1 = azure_service_bus.create_queue("test-queue-1")

# Create a queue with a queue object
queue2 = Azure::ServiceBus::Queue.new("test-queue-2")
queue2.max_size_in_megabytes = 2048
queue2 = azure_service_bus.create_queue(queue2)

# Send a queue message with just the message body
azure_service_bus.send_queue_message("test-queue-1", "test queue message")

# Send a queue message with a brokered message object
message = Azure::ServiceBus::BrokeredMessage.new("another test queue message")
message.correlation_id = "test-correlation-id-1"
azure_service_bus.send_queue_message("test-queue-1", message)

# Receive a queue message
message = azure_service_bus.receive_queue_message("test-queue-1")

# Delete a queue message
azure_service_bus.delete_queue_message(message)

# Delete a queue
azure_service_bus.delete_queue("test-queue-1")
```
### Topics

```ruby
# Require the azure rubygem
require "azure"

# Create an azure service bus object
azure_service_bus = Azure::ServiceBusService.new

# Create a topic with just the topic name
topic1 = azure_service_bus.create_topic("test-topic-1")

# Create a topic with a topic object
topic2 = Azure::ServiceBus::Topic.new("test-topic-2")
topic2.max_size_in_megabytes = 2048
topic2 = azure_service_bus.create_topic(topic2)

# Create a subscription
subscription = Azure::ServiceBus::Subscription.new("test-subscription-1")
subscription.topic = topic1.name
subscription = azure_service_bus.create_subscription(subscription)

# Send a topic message with just the message body
azure_service_bus.send_topic_message(topic1, "test topic message")

# Send a topic message with a brokered message object
message = Azure::ServiceBus::BrokeredMessage.new("another test topic message")
message.correlation_id = "test-correlation-id-1"
azure_service_bus.send_topic_message(topic1, message)

# Receive a subscription message
message = azure_service_bus.receive_subscription_message(topic1.name, subscription.name)

# Delete a subscription message
azure_service_bus.delete_subscription_message(message)

# Delete a subscription
azure_service_bus.delete_subscription(subscription)

# Delete a topic
azure_service_bus.delete_topic(topic1)
```
## Virtual Machine Management

```ruby
# Require the azure rubygem
require 'azure'

Azure.configure do |config|
  # Configure these 3 properties to use Storage
  config.management_certificate = "path to *.pem or *.pfx file"
  config.subscription_id        = "your subscription id"
  config.management_endpoint    = "https://management.core.windows.net"
end

#Create a virtual machine service object
virtual_machine_service = Azure::VirtualMachineManagementService.new

#Get a list of existing virtual machines in your subscription
virtual_machine_service.list_virtual_machines

#API to shutdown Virtual Machine
virtual_machine_service.shutdown_virtual_machine('vm_name', 'cloud_service_name')

#API to start Virtual Machine
virtual_machine_service.start_virtual_machine('vm_name', 'cloud_service_name')

#API to restart Virtual Machine
virtual_machine_service.restart_virtual_machine('vm_name', 'cloud_service_name')

#API for add disk to Virtual Machine
options = {
  :disk_label => 'disk-label',
  :disk_size => 100, #In GB
  :import => false,
  :disk_name => 'Disk name' #Required when import is true
}
virtual_machine_service.add_data_disk('vm_name', 'cloud_service_name', options)

#API to add/update Virtual Machine endpoints
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
virtual_machine_service.update_endpoints('vm_name', 'cloud_service_name', endpoint1, endpoint2)

#API to delete Virtual Machine endpoint
virtual_machine_service.delete_endpoint('vm_name', 'cloud_service_name', 'endpoint_name')

#API to delete Virtual Machine
virtual_machine_service.delete_virtual_machine('vm_name', 'cloud_service_name')

#API to start deployment
params = {
  :vm_name => 'vm_name',
  :vm_user => 'azureuser',
  :image => '5112500ae3b842c8b9c604889f8753c3__OpenLogic-CentOS-63APR20130415',
  :password => 'Password',
  :location => 'West US'
}
options = {
  :storage_account_name => 'storage_suse',
  :winrm_transport => ['https','http'], #Currently http is supported. To enable https, set the transport protocol to https, simply rdp to the VM once VM is in ready state, export the certificate ( CN name would be the deployment name) from the certstore of the VM and install to your local machine and communicate WinRM via https.
  :cloud_service_name => 'cloud_service_name',
  :deployment_name =>'vm_name',
  :tcp_endpoints => '80,3389:3390',
  :private_key_file => 'c:/private_key.key', #required for ssh or winrm(https) certificate.
  :certificate_file => 'c:/certificate.pem', #required for ssh or winrm(https) certificate.
  :ssh_port => 2222,
  :vm_size => 'Small', #valid choices are (ExtraSmall Small Medium Large ExtraLarge A5 A6 A7 Basic_A0 Basic_A1 Basic_A2 Basic_A3 Basic_A4)
  :affinity_group_name => 'affinity1',
  :virtual_network_name => 'xplattestvnet',
  :subnet_name => 'subnet1',
  :availability_set_name => 'availabiltyset1'
}
virtual_machine_service.create_virtual_machine(params,options)

#API usage to add new roles under cloud service creating VM 
#API add_role create multiple roles under the same cloud service. Atleast a single deployment should be created under a hosted service.
params = {
  :vm_name => 'vm_name',
  :cloud_service_name => 'cloud_service_name',
  :vm_user => 'azureuser',
  :image => 'a699494373c04fc0bc8f2bb1389d6106__Win2K8R2SP1-Datacenter-201305.01-en.us-127GB.vhd',
  :password => 'ComplexPassword',
}
options = {
  :storage_account_name => 'storage_suse',
  :winrm_transport => ['https','http'], #Currently http is supported. To enable https, set the transport protocol to https, simply rdp to the VM once VM is in ready state, export the certificate ( CN name would be the deployment name) from the certstore of the VM and install to your local machine and communicate WinRM via https.
  :tcp_endpoints => '80,3389:3390',
  :private_key_file => 'c:/private_key.key', #required for ssh or winrm(https) certificate.
  :certificate_file => 'c:/certificate.pem', #required for ssh or winrm(https) certificate.
  :winrm_https_port => 5999,
  :winrm_http_port => 6999, #Used to open different powershell port
  :vm_size => 'Small', #valid choices are (ExtraSmall Small Medium Large ExtraLarge A5 A6 A7 Basic_A0 Basic_A1 Basic_A2 Basic_A3 Basic_A4)
  :availability_set_name => 'availabiltyset'
}
virtual_machine_service.add_role(params, options)

#Get a list of available virtual machine images
virtual_machine_image_service = Azure::VirtualMachineImageManagementService.new
virtual_machine_image_service.list_virtual_machine_images

#Get a list of available regional data center locations
base_management = Azure::BaseManagementService.new
base_management.list_locations
```
## Affinity Group Management

```ruby
# Require the azure rubygem
require 'azure'

#Create a affinity group service object
base_management_service = Azure::BaseManagementService.new

#Get a list of affinity group that are provisioned for a subscription.
base_management_service.list_affinity_groups

#API to delete affinity group
base_management_service.delete_affinity_group('affinity-group-name')

#API to add a new affinity group to a subscription
options = {:description => 'Some Description'}
base_management_service.create_affinity_group('affinity-group-name', 'West US', 'Label Name', options)

#API to update affinity group
options = {:description => 'Some Description'}
base_management_service.update_affinity_group('affinity-group-name', 'Label Name', options)

#API to list properties associated with the specified affinity group
base_management_service.get_affinity_group('affinity-group-name')
```
## SQL Database Server Management

```ruby
# Require the azure rubygem
require 'azure'

Azure.configure do |config|
  config.management_certificate = "path to *.pem or *.pfx file"
  config.subscription_id        = "your subscription id"
  config.management_endpoint    = "https://management.database.windows.net:8443/"
#To access other service management apis use "https://management.core.windows.net".
end

#Create a database server service object
sql_db_service = Azure::SqlDatabaseManagementService.new

#Get a list of SQL Database servers that are provisioned for a subscription.
sql_db_service.list_servers

#API to delete SQL Database server
sql_db_service.delete_server('server_name')

#API to adds a new SQL Database server to a subscription
sql_db_service.create_server('admin-login', 'ComplexPassword', 'West US')

#API to sets the administrative password of a SQL Database server for a subscription
sql_db_service.reset_password('server-name', 'NewPassword')

#Get a list of all the server-level firewall rules for a SQL Database server that belongs to a subscription
sql_db_service.list_sql_server_firewall_rules("server-name")

#API to adds a new server-level firewall rule or updates an existing server-level firewall rule for a SQL Database server with requester’s IP address.
sql_db_service.delete_sql_server_firewall_rule("server-name", "rule-name")

#API to add/updates server-level firewall rule for a SQL Database server that belongs to a subscription
ip_range = {:start_ip_address => "0.0.0.1", :end_ip_address => "0.0.0.5"}
sql_db_service.set_sql_server_firewall_rule("server-name", "rule-name", ip_range)

# If ip_range was not specified in the above api then the IP of the machine from where the api is being called would be set as the rule.
# To toggle between the option to allow Microsoft Azure services to access db server similar to azure portal just set the fire wall rule
# with iprange to be 0.0.0.0 as start and end.Remove the rule to unset this option.
```
## Virtual Network Management

```ruby
# Require the azure rubygem
require 'azure'

#Create a virtual network service object

vnet = Azure::VirtualNetworkManagementService.new

#API to get a list of virtual networks created for a subscription.

vnet.list_virtual_networks

#API to configure virtual network with required and optional parameters

address_space = ['172.16.0.0/12',  '10.0.0.0/8',  '192.168.0.0/24']

subnets = [{:name => 'subnet-1',  :ip_address=>'172.16.0.0',  :cidr=>12},  {:name => 'subnet-2',  :ip_address=>'10.0.0.0',  :cidr=>8}]

dns_servers = [{:name => 'dns-1',  :ip_address=>'1.2.3.4'},  {:name => 'dns-2',  :ip_address=>'8.7.6.5'}]

options = {:subnet => subnets, :dns => dns_servers}

vnet.set_network_configuration('virtual-network-name', 'affinity-group-name', address_space, options)

#API to configure virtual network from xml file that can be exported from management portal and customized to add or delete vnet

vnetxml = './customnetwork.xml'

vnet.set_network_configuration(vnetxml)
```

# Useful commands for certificate operations

Currently the sdk supports *.pem or *.pfx (passwordless pfx) for service management operations. Following are the steps discussed on various cert operations.

* To create pfx, simply download the publishsettings file for your subscription, copy the contents of Management Certificate from the publishsettings and save it in a file and name the file as your cert.pfx. This pfx will be a passwordless pfx which can be supplied as a cert parameter for Service Management Commands
* Using the following openssl commands to extract the pem file and pass the pem file as management cert parameter.
    * To get only private key from pfx use Openssl.exe pkcs12 -in cert.pfx -nocerts -out cert.pem
  * To remove passphrase from the above private key use ``Openssl.exe rsa -in cert.pem -out certprivnopassword.pem``
  * To extract both public & private keys from pfx use ``Openssl.exe pkcs12 -in cert.pfx -out certprivpub.pem``
  * To extract only public key from pem use ``Openssl.exe x509 -inform pem -in certprivpub.pem -pubkey -out certpub.pem -outform pem``
* Finally copy the public key & private key to a file *.pem and pass that pem file to management cert parameter.
* To extract pem from custom certificate, export the pfx, follow the above steps to convert to pem and pass that pem file to management cert parameter.

# Need Help?

Be sure to check out the Microsoft Azure [Developer Forums on Stack Overflow and MSDN](http://go.microsoft.com/fwlink/?LinkId=234489) if you have trouble with the provided code.

# Contribute Code or Provide Feedback

If you would like to become an active contributor to this project please follow the instructions provided in [Microsoft Azure Projects Contribution Guidelines](http://windowsazure.github.com/guidelines.html).
If you encounter any bugs with the library please file an issue in the [Issues](https://github.com/Azure/azure-sdk-for-ruby/issues) section of the project.

# Learn More

For documentation on how to host Ruby applications on Microsoft Azure, please see the [Microsoft Azure Ruby Developer Center](http://www.windowsazure.com/en-us/develop/ruby/).
For documentation on Azure PowerShell CLI tool for Windows, please see our readme [here](http://github.com/azure/azure-sdk-tools).
For documentation on the Azure cross platform CLI tool for Windows, Mac and Linux, please see our readme [here](http://github.com/azure/azure-sdk-tools-xplat).
