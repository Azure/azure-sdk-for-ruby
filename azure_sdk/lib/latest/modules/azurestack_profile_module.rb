# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_azurestack'

module Azure::Profiles::Latest
  module AzureStack
    module Mgmt
      Operations = Azure::AzureStack::Mgmt::V2017_06_01::Operations
      Products = Azure::AzureStack::Mgmt::V2017_06_01::Products
      Registrations = Azure::AzureStack::Mgmt::V2017_06_01::Registrations
      CustomerSubscriptions = Azure::AzureStack::Mgmt::V2017_06_01::CustomerSubscriptions

      module Models
        VirtualMachineProductProperties = Azure::AzureStack::Mgmt::V2017_06_01::Models::VirtualMachineProductProperties
        IconUris = Azure::AzureStack::Mgmt::V2017_06_01::Models::IconUris
        TrackedResource = Azure::AzureStack::Mgmt::V2017_06_01::Models::TrackedResource
        ProductLink = Azure::AzureStack::Mgmt::V2017_06_01::Models::ProductLink
        Operation = Azure::AzureStack::Mgmt::V2017_06_01::Models::Operation
        ProductProperties = Azure::AzureStack::Mgmt::V2017_06_01::Models::ProductProperties
        ErrorDetails = Azure::AzureStack::Mgmt::V2017_06_01::Models::ErrorDetails
        OperationList = Azure::AzureStack::Mgmt::V2017_06_01::Models::OperationList
        ErrorResponse = Azure::AzureStack::Mgmt::V2017_06_01::Models::ErrorResponse
        DataDiskImage = Azure::AzureStack::Mgmt::V2017_06_01::Models::DataDiskImage
        VirtualMachineExtensionProductProperties = Azure::AzureStack::Mgmt::V2017_06_01::Models::VirtualMachineExtensionProductProperties
        ProductList = Azure::AzureStack::Mgmt::V2017_06_01::Models::ProductList
        Display = Azure::AzureStack::Mgmt::V2017_06_01::Models::Display
        CustomerSubscriptionList = Azure::AzureStack::Mgmt::V2017_06_01::Models::CustomerSubscriptionList
        ExtendedProduct = Azure::AzureStack::Mgmt::V2017_06_01::Models::ExtendedProduct
        RegistrationList = Azure::AzureStack::Mgmt::V2017_06_01::Models::RegistrationList
        OsDiskImage = Azure::AzureStack::Mgmt::V2017_06_01::Models::OsDiskImage
        ActivationKeyResult = Azure::AzureStack::Mgmt::V2017_06_01::Models::ActivationKeyResult
        Resource = Azure::AzureStack::Mgmt::V2017_06_01::Models::Resource
        RegistrationParameter = Azure::AzureStack::Mgmt::V2017_06_01::Models::RegistrationParameter
        Product = Azure::AzureStack::Mgmt::V2017_06_01::Models::Product
        Registration = Azure::AzureStack::Mgmt::V2017_06_01::Models::Registration
        CustomerSubscription = Azure::AzureStack::Mgmt::V2017_06_01::Models::CustomerSubscription
        ProvisioningState = Azure::AzureStack::Mgmt::V2017_06_01::Models::ProvisioningState
        ComputeRole = Azure::AzureStack::Mgmt::V2017_06_01::Models::ComputeRole
        OperatingSystem = Azure::AzureStack::Mgmt::V2017_06_01::Models::OperatingSystem
        Location = Azure::AzureStack::Mgmt::V2017_06_01::Models::Location
      end

      class AzureStackManagementClass
        attr_reader :operations, :products, :registrations, :customer_subscriptions, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

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
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/AzureStack/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def virtual_machine_product_properties
            Azure::AzureStack::Mgmt::V2017_06_01::Models::VirtualMachineProductProperties
          end
          def icon_uris
            Azure::AzureStack::Mgmt::V2017_06_01::Models::IconUris
          end
          def tracked_resource
            Azure::AzureStack::Mgmt::V2017_06_01::Models::TrackedResource
          end
          def product_link
            Azure::AzureStack::Mgmt::V2017_06_01::Models::ProductLink
          end
          def operation
            Azure::AzureStack::Mgmt::V2017_06_01::Models::Operation
          end
          def product_properties
            Azure::AzureStack::Mgmt::V2017_06_01::Models::ProductProperties
          end
          def error_details
            Azure::AzureStack::Mgmt::V2017_06_01::Models::ErrorDetails
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
          def virtual_machine_extension_product_properties
            Azure::AzureStack::Mgmt::V2017_06_01::Models::VirtualMachineExtensionProductProperties
          end
          def product_list
            Azure::AzureStack::Mgmt::V2017_06_01::Models::ProductList
          end
          def display
            Azure::AzureStack::Mgmt::V2017_06_01::Models::Display
          end
          def customer_subscription_list
            Azure::AzureStack::Mgmt::V2017_06_01::Models::CustomerSubscriptionList
          end
          def extended_product
            Azure::AzureStack::Mgmt::V2017_06_01::Models::ExtendedProduct
          end
          def registration_list
            Azure::AzureStack::Mgmt::V2017_06_01::Models::RegistrationList
          end
          def os_disk_image
            Azure::AzureStack::Mgmt::V2017_06_01::Models::OsDiskImage
          end
          def activation_key_result
            Azure::AzureStack::Mgmt::V2017_06_01::Models::ActivationKeyResult
          end
          def resource
            Azure::AzureStack::Mgmt::V2017_06_01::Models::Resource
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
          def location
            Azure::AzureStack::Mgmt::V2017_06_01::Models::Location
          end
        end
      end
    end
  end
end
