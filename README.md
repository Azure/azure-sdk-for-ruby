
# Microsoft Azure SDK for Ruby - Service Management
[![Build Status](https://travis-ci.org/Azure/azure-sdk-for-ruby.png?branch=dev)](https://travis-ci.org/Azure/azure-sdk-for-ruby) [![Code Climate](https://codeclimate.com/github/Azure/azure-sdk-for-ruby/badges/gpa.svg)](https://codeclimate.com/github/Azure/azure-sdk-for-ruby)

This project provides a Ruby package for Azure Service Management, which makes it easy to access and manage Microsoft Azure Services like Storage, Service Bus and Virtual Machines.
* **Azure Service Management (ASM) or Classic**: Supported by most existing Azure resources.

If you're looking for **Azure Resource Management (ARM)**, preview version of the Ruby SDK is available [here](https://github.com/Azure/azure-sdk-ruby)

Information on Azure deployment models: [https://azure.microsoft.com/en-us/documentation/articles/azure-classic-rm/](https://azure.microsoft.com/en-us/documentation/articles/azure-classic-rm/)

## Azure Service Management
* Cloud Service Management
* [SQL Database Server Management](https://github.com/Azure/azure-sdk-for-ruby/blob/master/service_management/README.md#sql)
* Storage Account Management
* [Virtual Network Management](https://github.com/Azure/azure-sdk-for-ruby/blob/master/service_management/README.md#vnets)

## Azure Services
* [Storage](https://github.com/Azure/azure-sdk-for-ruby/blob/master/service_management/README.md#storage)
 Azure Storage is now availabe in its own preview gem and GitHub [repo](https://github.com/Azure/azure-storage-ruby)
* [Service Bus](https://github.com/Azure/azure-sdk-for-ruby/blob/master/service_management/README.md#service-bus)
    * [Relays](https://github.com/Azure/azure-sdk-for-ruby/blob/master/service_management/README.md#relays)
    * [Queues](https://github.com/Azure/azure-sdk-for-ruby/blob/master/service_management/README.md#sb-queues)
    * [Topics](https://github.com/Azure/azure-sdk-for-ruby/blob/master/service_management/README.md#topics)

# Supported Ruby Versions

* Ruby 2+

Note: x64 Ruby for Windows is known to have some compatibility issues.

# Getting Started with Azure Service Management

Please take a look [here](https://github.com/Azure/azure-sdk-for-ruby/blob/master/service_management/README.md)

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
Move to the folder containing Gemfile
```bash
cd service_management/azure
```
Then, run bundler to install all the gem dependencies:

```bash
bundle install
```

### Setup the Environment for Integration Tests

If you would like to run the integration test suite, you will need to setup environment variables which will be used
during the integration tests. These tests will use these credentials to run live tests against Azure with the provided
credentials (you will be charged for usage, so verify the clean up scripts did their job at the end of a test run).

The root of the project contains a .env_sample file. This dot file is a sample of the actual environment vars needed to
run the integration tests.

Do the following to prepare your environment for integration tests:

* Copy .env_sample to .env **relative to root of the project dir**
* Update .env with your credentials **.env is in the .gitignore, so should only reside locally**

Azure Service Management integration tests use VCR, so they are recorded and can be easily played back without
consuming any Azure live resources.

### Run Tests

You can use the following commands to run:

* All the tests: ``rake test``. **This will run integration tests if you have .env file or env vars setup**
* A specific suite of tests: ``rake test:unit``, ``rake test:integration``, ``rake test:integration:blob``, etc.
* one particular test file: ``ruby -I"lib:test" "<path of the test file>"``

To run VCR tests:
* Set the following environment variable ``INTEG_RECORDED = true``, then run ``rake test:recorded``

### Generate Documentation

Running the command ``yard`` will generate the API documentation in the `./doc` directory.

## Provide Feedback

If you encounter any bugs with the library please file an issue in the [Issues](https://github.com/Azure/azure-sdk-for-ruby/issues) section of the project.

# Maintainers

* [David Justice](https://github.com/devigned)

# Azure CLI Tooling

For documentation on [Azure PowerShell](http://github.com/azure/azure-powershell).
For documentation on [Azure CLI](http://github.com/azure/azure-xplat-cli).
