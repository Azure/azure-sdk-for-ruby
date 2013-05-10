# Windows Azure SDK for Ruby

This project provides a Ruby package that makes it easy to access and manage Windows Azure Services like Storage, Service Bus and Virtual Machines. 

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
* Virtual Machines
	* Images
		* list images
		* delete disks
	* Virtual Machines
		* create, list, shut down, delete, find virtual machine deployments
	* Cloud Services
		* create, list, delete cloud services
	* Storage Accounts
		* create, list storage accounts

# Getting Started

## Install the rubygem package

You can install the azure rubygem package directly.

    gem install azure

## Download Source Code

To get the source code of the SDK via **git** just type:

```
git clone https://github.com/WindowsAzure/azure-sdk-for-ruby.git
cd ./azure-sdk-for-ruby
```

## Generate Documentation

Running the this command ``rdoc`` will generate the API documentation in the `./doc` directory.

## Setup Connection

You can use this SDK against the Windows Azure Services in the cloud, or against the local Storage Emulator if you are on Windows. Service Bus and Windows Azure Service Management emulation are not supported. Of course, to use the Windows Azure Services in the cloud, you need to first [create a Windows Azure account](http://www.windowsazure.com/en-us/pricing/free-trial/). After that, you can get the information you need to configure Storage and Service Bus from the [Windows Azure Portal](https://manage.windowsazure.com).

There are two ways you can set up the connections:

1. [via code](#via-code)
2. [via environment variables](#via-environment-variables)

### Via Code

* Against Windows Azure Services in the cloud

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
      # Configure these 2 properties to use Service Management
      config.publish_settings_file = "<path to your *.publishsettings file>"
      config.subscription_id      = "<your subscription id>"
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

* Against Windows Azure Services in the cloud

  * Storage

    ```
    AZURE_STORAGE_ACCOUNT = <your azure storage account name>
    AZURE_STORAGE_ACCESS_KEY = <your azure storage access key>
    ```

  * Service Bus

    ```
    AZURE_SERVICEBUS_NAMESPACE = <your azure service bus namespace>
    AZURE_SERVICEBUS_ACCESS_KEY = <your azure service bus access key>
    AZURE_SERVICEBUS_ISSUER = <your azure service bus issuer>
    ```

  * Service Management

    ```
	AZURE_PUBLISH_SETTINGS_FILE = <your *.publishsettings file path>
	AZURE_SUBSCRIPTION_ID = <your subscription ID>
	AZURE_API_URL = <The endpoint URL of the Windows Azure management service>
    ```

* Against local Emulator (Windows Only)

  * Storage

    ```
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
* all the tests: ``rake test  ``
* a specific suite of tests: ``rake test:integration:blob``
* one particular test file: ``ruby -I"lib:test" "<path of the test file>"``

# Usage

**For more examples, please see the [Windows Azure Ruby Developer Center](http://www.windowsazure.com/en-us/develop/ruby)**

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

### Queues

```ruby
# Require the azure rubygem
require "azure"

# Create an azure service bus object
azure_service_bus = Azure::ServiceBus::ServiceBus.new

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
azure_service_bus = Azure::ServiceBus::ServiceBus.new

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

## Image Management

### Image List
Outputs a list of all images that are available to use for provisioning.
You should choose one of these to use for the :image parameter to the virtual machine create command.
```ruby
# Require the azure rubygem
require 'azure'

  Azure.configure do |config|
    # Configure these 2 properties to use Storage
    config.publish_settings_file = 'c:/my.publishsettings'
    config.subscription_id      = "your subscription id"  #optional
  end

#Create a service management object
management_service = ServiceManagement.new

#Get a list of available virtual machine images
management_service.virtual_machine_images

#Get a list of available regional data center locations
management_service.locations

#Get a list of existing virtual machines in your subscription
management_service.virtual_machines

#API to shutdown Virtual Machine
management_service.shutdown_virtual_machine('vm_name', 'cloud_service_name')

#API to delete Virtual Machine
management_service.delete_virtual_machine('vm_name','cloud_service_name')

#API to start deployment
params = {
  :vm_name=> 'vm_name',
  :ssh_user=>'someuser',
  :image=>"5112500ae3b842c8b9c604889f8753c3__OpenLogic-CentOS-63APR20130415",
  :ssh_password => 'Password1'
}
options = {
  :storage_account_name=>'storage_suse',
  :cloud_service_name=> 'cloud_service_name',
  :deployment_name =>'mydeployment',
  :tcp_endpoints => '80,3889:3889',
  :service_location =>"West US"
}

management_service.deployment(params, options)
```

# Need Help?

Be sure to check out the Windows Azure [Developer Forums on Stack Overflow and MSDN](http://go.microsoft.com/fwlink/?LinkId=234489) if you have trouble with the provided code.

# Contribute Code or Provide Feedback

If you would like to become an active contributor to this project please follow the instructions provided in [Windows Azure Projects Contribution Guidelines](http://windowsazure.github.com/guidelines.html).

If you encounter any bugs with the library please file an issue in the [Issues](https://github.com/WindowsAzure/azure-sdk-for-ruby/issues) section of the project.

# Learn More

For documentation on how to host Ruby applications on Windows Azure, please see the [Windows Azure Ruby Developer Center](http://www.windowsazure.com/en-us/develop/ruby/).

For documentation on Azure PowerShell CLI tool for Windows, please see our readme [here](http://github.com/windowsazure/azure-sdk-tools).

For documentation on the Azure cross platform CLI tool for Windows, Mac and Linux, please see our readme [here](http://github.com/windowsazure/azure-sdk-tools-xplat).
