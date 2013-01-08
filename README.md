# Windows Azure SDK for Ruby

This project provides a Ruby package that makes it easy to access Windows Azure Services like Storage and Service Bus. 

# Library Features

* Storage
    * Tables
        * create and delete tables
        * create, query, insert, update, merge, and delete entities
    * Blobs
        * create, list, and delete containers, work with container metadata and permissions, list blobs in container
        * create block and page blobs (from a stream, a file, or a string), work with blob blocks and pages, delete blobs
        * work with blob properties, metadata, leases, snapshot a blob
    * Storage Queues
        * create, list, and delete queues, and work with queue metadata
        * create, get, peek, update, delete messages
* Service Bus
    * Queues: create, list and delete queues; create, list, and delete subscriptions; send, receive, unlock and delete messages
    * Topics: create, list, and delete topics; create, list, and delete rules

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

To generate the API documentation, run the following command:

``rake doc``

This will generate the API documentation in the `./doc` directory.

## Setup Connection

You can use this SDK against the Windows Azure Services in the cloud, or against the local Storage Emulator if you are on Windows. Service Bus emulator is not supported. Of course, to use the Windows Azure Services in the cloud, you need to first [create a Windows Azure account](http://www.windowsazure.com/en-us/pricing/free-trial/). After that, you can get the information you need to configure Storage and Service Bus from the [Windows Azure Portal](https://manage.windowsazure.com).

There are two ways you can set up the connections:

1. [via code](#via-code)
2. [via environment variables](#via-environment-variables)

### Via Code

* Against Windows Azure Services in the cloud

  ```ruby
  require "azure"

  Azure.configure do |config|
    # Configure these 2 properties to use Storage
    config.account_name   = "<your azure storage account name>"
    config.access_key     = "<your azure storage access key>"
    # Configure these 3 properties to use Service Bus
    config.sb_namespace   = "<your azure service bus namespace>"
    config.sb_access_key  = "<your azure service bus access key>"
    config.sb_issuer      = "<your azure service bus issuer>"
  end
  ```

* Against local Emulator (Windows Only)

  ```ruby
  require "azure"

  Azure.configure do |config|
    # Configure these 2 properties to use local Storage Emulator
    config.account_name   = "Eby8vdM02xNOcqFlqUwJPLlmEtlCDXJ1OUzFT50uSRZ6IFsuFq2UVErCz4I6tq/K1SZFPTOtr/KBHBeksoGMGw=="
    config.access_key     = "devstoreaccount1"
    # Local Service Bus Emulator is not supported
  end
  ```

### Via environment variables

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

* Against local Emulator (Windows Only)

  * Storage

    ```
    AZURE_STORAGE_ACCOUNT = devstoreaccount1
    AZURE_STORAGE_ACCESS_KEY = Eby8vdM02xNOcqFlqUwJPLlmEtlCDXJ1OUzFT50uSRZ6IFsuFq2UVErCz4I6tq/K1SZFPTOtr/KBHBeksoGMGw==
    ```

  * Service Bus: not supported

## Run Test

You can use the following commands to run:
* all the tests: ``rake``
* a specific suite of tests: ``rake``
* one particular test file: ``ruby -I "lib:test" "<path of the test file>"``

# Usage

## Storage

### Blob

```ruby
# Require the azure rubygem.
require "azure"

# Create an azure blob service object.
azure_blob_service = Azure::BlobService.new

# Create a container
container = azure_blob_service.create_container("test-container")

# Upload a Blob
content = File.read("test.png")
azure_blob_service.create_block_blob(container.name, "image-blob", content)

# List containers
azure_blob_service.list_containers()

# List Blobs
azure_blob_service.list_blobs(container.name)

# Download a Blob
blob, content = azure_blob_service.get_blob(container.name, "image-blob")
File.open("download.png", "w") {|f| f.write(content)}

# Delete a Blob
azure_blob_service.delete_blob(container.name, "image-blob")
```

### Table

### Queue
## Service Bus
### Subscription
### Queue
### Topic
### Rule

**For more examples please see the [Windows Azure Ruby Developer Center](http://www.windowsazure.com/en-us/develop/ruby)**

# Need Help?

Be sure to check out the Windows Azure [Developer Forums on Stack Overflow and MSDN](http://go.microsoft.com/fwlink/?LinkId=234489) if you have trouble with the provided code.

# Contribute Code or Provide Feedback

If you would like to become an active contributor to this project please follow the instructions provided in [Windows Azure Projects Contribution Guidelines](http://windowsazure.github.com/guidelines.html).

If you encounter any bugs with the library please file an issue in the [Issues](https://github.com/WindowsAzure/azure-sdk-for-ruby/issues) section of the project.

# Learn More

For documentation on how to host Ruby applications on Windows Azure, please see the [Windows Azure Ruby Developer Center](http://www.windowsazure.com/en-us/develop/ruby/).

For documenation on Azure PowerShell CLI tool for Windows, please see our readme [here](http://github.com/windowsazure/azure-sdk-tools).

For documentation on the Azure cross platform CLI tool for Windows, Mac and Linux, please see our readme [here](http://github.com/windowsazure/azure-sdk-tools-xplat).
