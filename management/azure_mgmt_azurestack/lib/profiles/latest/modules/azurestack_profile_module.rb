# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_azurestack'

module Azure::AzureStack::Profiles::Latest
  module Mgmt
    Operations = Azure::AzureStack::Mgmt::V2017_06_01::Operations
    Products = Azure::AzureStack::Mgmt::V2017_06_01::Products
    Registrations = Azure::AzureStack::Mgmt::V2017_06_01::Registrations
    CustomerSubscriptions = Azure::AzureStack::Mgmt::V2017_06_01::CustomerSubscriptions

    module Models
      ProductLink = Azure::AzureStack::Mgmt::V2017_06_01::Models::ProductLink
      ProductProperties = Azure::AzureStack::Mgmt::V2017_06_01::Models::ProductProperties
      TrackedResource = Azure::AzureStack::Mgmt::V2017_06_01::Models::TrackedResource
      Compatibility = Azure::AzureStack::Mgmt::V2017_06_01::Models::Compatibility
      Operation = Azure::AzureStack::Mgmt::V2017_06_01::Models::Operation
      Display = Azure::AzureStack::Mgmt::V2017_06_01::Models::Display
      OperationList = Azure::AzureStack::Mgmt::V2017_06_01::Models::OperationList
      ErrorResponse = Azure::AzureStack::Mgmt::V2017_06_01::Models::ErrorResponse
      DataDiskImage = Azure::AzureStack::Mgmt::V2017_06_01::Models::DataDiskImage
      ProductList = Azure::AzureStack::Mgmt::V2017_06_01::Models::ProductList
      VirtualMachineExtensionProductProperties = Azure::AzureStack::Mgmt::V2017_06_01::Models::VirtualMachineExtensionProductProperties
      DeviceConfiguration = Azure::AzureStack::Mgmt::V2017_06_01::Models::DeviceConfiguration
      IconUris = Azure::AzureStack::Mgmt::V2017_06_01::Models::IconUris
      MarketplaceProductLogUpdate = Azure::AzureStack::Mgmt::V2017_06_01::Models::MarketplaceProductLogUpdate
      ErrorDetails = Azure::AzureStack::Mgmt::V2017_06_01::Models::ErrorDetails
      ProductLog = Azure::AzureStack::Mgmt::V2017_06_01::Models::ProductLog
      ExtendedProduct = Azure::AzureStack::Mgmt::V2017_06_01::Models::ExtendedProduct
      CustomerSubscriptionList = Azure::AzureStack::Mgmt::V2017_06_01::Models::CustomerSubscriptionList
      Resource = Azure::AzureStack::Mgmt::V2017_06_01::Models::Resource
      RegistrationList = Azure::AzureStack::Mgmt::V2017_06_01::Models::RegistrationList
      VirtualMachineProductProperties = Azure::AzureStack::Mgmt::V2017_06_01::Models::VirtualMachineProductProperties
      ActivationKeyResult = Azure::AzureStack::Mgmt::V2017_06_01::Models::ActivationKeyResult
      OsDiskImage = Azure::AzureStack::Mgmt::V2017_06_01::Models::OsDiskImage
      RegistrationParameter = Azure::AzureStack::Mgmt::V2017_06_01::Models::RegistrationParameter
      Product = Azure::AzureStack::Mgmt::V2017_06_01::Models::Product
      Registration = Azure::AzureStack::Mgmt::V2017_06_01::Models::Registration
      CustomerSubscription = Azure::AzureStack::Mgmt::V2017_06_01::Models::CustomerSubscription
      ProvisioningState = Azure::AzureStack::Mgmt::V2017_06_01::Models::ProvisioningState
      ComputeRole = Azure::AzureStack::Mgmt::V2017_06_01::Models::ComputeRole
      OperatingSystem = Azure::AzureStack::Mgmt::V2017_06_01::Models::OperatingSystem
      CompatibilityIssue = Azure::AzureStack::Mgmt::V2017_06_01::Models::CompatibilityIssue
      Category = Azure::AzureStack::Mgmt::V2017_06_01::Models::Category
      Location = Azure::AzureStack::Mgmt::V2017_06_01::Models::Location
    end

    #
    # AzureStackManagementClass
    #
    class AzureStackManagementClass
      attr_reader :operations, :products, :registrations, :customer_subscriptions, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_default_options
        else
          @options = options
        end

        reset!(options)

        @configurable = self
        @base_url = options[:base_url].nil? ? nil:options[:base_url]
        @options = options[:options].nil? ? nil:options[:options]

        @client_0 = Azure::AzureStack::Mgmt::V2017_06_01::AzureStackManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @operations = @client_0.operations
        @products = @client_0.products
        @registrations = @client_0.registrations
        @customer_subscriptions = @client_0.customer_subscriptions

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/AzureStack/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
      end

    end

    class ModelClasses
      def product_link
        Azure::AzureStack::Mgmt::V2017_06_01::Models::ProductLink
      end
      def product_properties
        Azure::AzureStack::Mgmt::V2017_06_01::Models::ProductProperties
      end
      def tracked_resource
        Azure::AzureStack::Mgmt::V2017_06_01::Models::TrackedResource
      end
      def compatibility
        Azure::AzureStack::Mgmt::V2017_06_01::Models::Compatibility
      end
      def operation
        Azure::AzureStack::Mgmt::V2017_06_01::Models::Operation
      end
      def display
        Azure::AzureStack::Mgmt::V2017_06_01::Models::Display
      end
      def operation_list
        Azure::AzureStack::Mgmt::V2017_06_01::Models::OperationList
      end
      def error_response
        Azure::AzureStack::Mgmt::V2017_06_01::Models::ErrorResponse
      end
      def data_disk_image
        Azure::AzureStack::Mgmt::V2017_06_01::Models::DataDiskImage
      end
      def product_list
        Azure::AzureStack::Mgmt::V2017_06_01::Models::ProductList
      end
      def virtual_machine_extension_product_properties
        Azure::AzureStack::Mgmt::V2017_06_01::Models::VirtualMachineExtensionProductProperties
      end
      def device_configuration
        Azure::AzureStack::Mgmt::V2017_06_01::Models::DeviceConfiguration
      end
      def icon_uris
        Azure::AzureStack::Mgmt::V2017_06_01::Models::IconUris
      end
      def marketplace_product_log_update
        Azure::AzureStack::Mgmt::V2017_06_01::Models::MarketplaceProductLogUpdate
      end
      def error_details
        Azure::AzureStack::Mgmt::V2017_06_01::Models::ErrorDetails
      end
      def product_log
        Azure::AzureStack::Mgmt::V2017_06_01::Models::ProductLog
      end
      def extended_product
        Azure::AzureStack::Mgmt::V2017_06_01::Models::ExtendedProduct
      end
      def customer_subscription_list
        Azure::AzureStack::Mgmt::V2017_06_01::Models::CustomerSubscriptionList
      end
      def resource
        Azure::AzureStack::Mgmt::V2017_06_01::Models::Resource
      end
      def registration_list
        Azure::AzureStack::Mgmt::V2017_06_01::Models::RegistrationList
      end
      def virtual_machine_product_properties
        Azure::AzureStack::Mgmt::V2017_06_01::Models::VirtualMachineProductProperties
      end
      def activation_key_result
        Azure::AzureStack::Mgmt::V2017_06_01::Models::ActivationKeyResult
      end
      def os_disk_image
        Azure::AzureStack::Mgmt::V2017_06_01::Models::OsDiskImage
      end
      def registration_parameter
        Azure::AzureStack::Mgmt::V2017_06_01::Models::RegistrationParameter
      end
      def product
        Azure::AzureStack::Mgmt::V2017_06_01::Models::Product
      end
      def registration
        Azure::AzureStack::Mgmt::V2017_06_01::Models::Registration
      end
      def customer_subscription
        Azure::AzureStack::Mgmt::V2017_06_01::Models::CustomerSubscription
      end
      def provisioning_state
        Azure::AzureStack::Mgmt::V2017_06_01::Models::ProvisioningState
      end
      def compute_role
        Azure::AzureStack::Mgmt::V2017_06_01::Models::ComputeRole
      end
      def operating_system
        Azure::AzureStack::Mgmt::V2017_06_01::Models::OperatingSystem
      end
      def compatibility_issue
        Azure::AzureStack::Mgmt::V2017_06_01::Models::CompatibilityIssue
      end
      def category
        Azure::AzureStack::Mgmt::V2017_06_01::Models::Category
      end
      def location
        Azure::AzureStack::Mgmt::V2017_06_01::Models::Location
      end
    end
  end
end
