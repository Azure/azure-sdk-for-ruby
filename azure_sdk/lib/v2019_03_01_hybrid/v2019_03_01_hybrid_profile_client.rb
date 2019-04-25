# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'v2019_03_01_hybrid/module_definition'
require 'v2019_03_01_hybrid/modules/authorization_profile_module'
require 'v2019_03_01_hybrid/modules/locks_profile_module'
require 'v2019_03_01_hybrid/modules/policy_profile_module'
require 'v2019_03_01_hybrid/modules/compute_profile_module'
require 'v2019_03_01_hybrid/modules/keyvault_profile_module'
require 'v2019_03_01_hybrid/modules/network_profile_module'
require 'v2019_03_01_hybrid/modules/dns_profile_module'
require 'v2019_03_01_hybrid/modules/resources_profile_module'
require 'v2019_03_01_hybrid/modules/subscriptions_profile_module'
require 'v2019_03_01_hybrid/modules/storage_profile_module'
require 'v2019_03_01_hybrid/modules/monitor_profile_module'
require 'v2019_03_01_hybrid/modules/web_profile_module'

module Azure::Profiles::V2019_03_01_Hybrid
  #
  # Client class for the V2019_03_01_Hybrid profile SDK.
  #
  class Client
    include MsRestAzure::Common::Configurable

    attr_reader  :authorization, :locks, :policy, :compute, :key_vault, :network, :dns, :resources, :subscriptions, :storage, :monitor, :web

    #
    # Initializes a new instance of the Client class.
    # @param options [Hash] hash of client options.
    #    options = {
    #      tenant_id: 'YOUR TENANT ID',
    #      client_id: 'YOUR CLIENT ID',
    #      client_secret: 'YOUR CLIENT SECRET',
    #      subscription_id: 'YOUR SUBSCRIPTION ID',
    #      credentials: credentials,
    #      active_directory_settings: active_directory_settings,
    #      base_url: 'YOUR BASE URL',
    #      options: options
    #    }
    #   'credentials' are optional and if not passed in the hash, will be obtained
    #   from MsRest::TokenCredentials using MsRestAzure::ApplicationTokenProvider.
    #
    #   Also, base_url, active_directory_settings & options are optional.
    #
    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_default_options
      else
        @options = options
      end

      reset!(options)

      base_url = options[:base_url].nil? ? nil:options[:base_url]
      sdk_options = options[:options].nil? ? nil:options[:options]

      @authorization = AuthorizationAdapter.new(self, base_url, sdk_options)
      @locks = LocksAdapter.new(self, base_url, sdk_options)
      @policy = PolicyAdapter.new(self, base_url, sdk_options)
      @compute = ComputeAdapter.new(self, base_url, sdk_options)
      @key_vault = KeyVaultAdapter.new(self, base_url, sdk_options)
      @network = NetworkAdapter.new(self, base_url, sdk_options)
      @dns = DnsAdapter.new(self, base_url, sdk_options)
      @resources = ResourcesAdapter.new(self, base_url, sdk_options)
      @subscriptions = SubscriptionsAdapter.new(self, base_url, sdk_options)
      @storage = StorageAdapter.new(self, base_url, sdk_options)
      @monitor = MonitorAdapter.new(self, base_url, sdk_options)
      @web = WebAdapter.new(self, base_url, sdk_options)
    end

    class AuthorizationAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_03_01_Hybrid::Authorization::Mgmt::AuthorizationManagementClass.new(context, base_url, options)
      end
    end

    class LocksAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_03_01_Hybrid::Locks::Mgmt::LocksManagementClass.new(context, base_url, options)
      end
    end

    class PolicyAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_03_01_Hybrid::Policy::Mgmt::PolicyManagementClass.new(context, base_url, options)
      end
    end

    class ComputeAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_03_01_Hybrid::Compute::Mgmt::ComputeManagementClass.new(context, base_url, options)
      end
    end

    class KeyVaultAdapter < Azure::Profiles::V2019_03_01_Hybrid::KeyVault::KeyVaultDataClass
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        super(context)
        @mgmt = Azure::Profiles::V2019_03_01_Hybrid::KeyVault::Mgmt::KeyVaultManagementClass.new(context, base_url, options)
      end
    end

    class NetworkAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_03_01_Hybrid::Network::Mgmt::NetworkManagementClass.new(context, base_url, options)
      end
    end

    class DnsAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_03_01_Hybrid::Dns::Mgmt::DnsManagementClass.new(context, base_url, options)
      end
    end

    class ResourcesAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_03_01_Hybrid::Resources::Mgmt::ResourcesManagementClass.new(context, base_url, options)
      end
    end

    class SubscriptionsAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_03_01_Hybrid::Subscriptions::Mgmt::SubscriptionsManagementClass.new(context, base_url, options)
      end
    end

    class StorageAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_03_01_Hybrid::Storage::Mgmt::StorageManagementClass.new(context, base_url, options)
      end
    end

    class MonitorAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_03_01_Hybrid::Monitor::Mgmt::MonitorManagementClass.new(context, base_url, options)
      end
    end

    class WebAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_03_01_Hybrid::Web::Mgmt::WebManagementClass.new(context, base_url, options)
      end
    end

  end
end
