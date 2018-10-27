# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'v2017_03_09/module_definition'
require 'v2017_03_09/modules/authorization_profile_module'
require 'v2017_03_09/modules/locks_profile_module'
require 'v2017_03_09/modules/policy_profile_module'
require 'v2017_03_09/modules/compute_profile_module'
require 'v2017_03_09/modules/keyvault_profile_module'
require 'v2017_03_09/modules/network_profile_module'
require 'v2017_03_09/modules/dns_profile_module'
require 'v2017_03_09/modules/resources_profile_module'
require 'v2017_03_09/modules/links_profile_module'
require 'v2017_03_09/modules/subscriptions_profile_module'
require 'v2017_03_09/modules/storage_profile_module'
require 'v2017_03_09/modules/features_profile_module'

module Azure::Profiles::V2017_03_09
  #
  # Client class for the V2017_03_09 profile SDK.
  #
  class Client
    include MsRestAzure::Common::Configurable

    attr_reader :authorization, :locks, :policy, :compute, :key_vault, :network, :dns, :resources, :links, :subscriptions, :storage, :features

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
      @options = if options.is_a?(Hash) && options.empty?
                   setup_default_options
                 else
                   options
                 end

      reset!(options)

      base_url = options[:base_url].nil? ? nil : options[:base_url]
      sdk_options = options[:options].nil? ? nil : options[:options]

      @authorization = AuthorizationAdapter.new(self, base_url, sdk_options)
      @locks = LocksAdapter.new(self, base_url, sdk_options)
      @policy = PolicyAdapter.new(self, base_url, sdk_options)
      @compute = ComputeAdapter.new(self, base_url, sdk_options)
      @key_vault = KeyVaultAdapter.new(self, base_url, sdk_options)
      @network = NetworkAdapter.new(self, base_url, sdk_options)
      @dns = DnsAdapter.new(self, base_url, sdk_options)
      @resources = ResourcesAdapter.new(self, base_url, sdk_options)
      @links = LinksAdapter.new(self, base_url, sdk_options)
      @subscriptions = SubscriptionsAdapter.new(self, base_url, sdk_options)
      @storage = StorageAdapter.new(self, base_url, sdk_options)
      @features = FeaturesAdapter.new(self, base_url, sdk_options)
    end

    class AuthorizationAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2017_03_09::Authorization::Mgmt::AuthorizationManagementClass.new(context, base_url, options)
      end
    end

    class LocksAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2017_03_09::Locks::Mgmt::LocksManagementClass.new(context, base_url, options)
      end
    end

    class PolicyAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2017_03_09::Policy::Mgmt::PolicyManagementClass.new(context, base_url, options)
      end
    end

    class ComputeAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2017_03_09::Compute::Mgmt::ComputeManagementClass.new(context, base_url, options)
      end
    end

    class KeyVaultAdapter < Azure::Profiles::V2017_03_09::KeyVault::KeyVaultDataClass
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        super(context)
        @mgmt = Azure::Profiles::V2017_03_09::KeyVault::Mgmt::KeyVaultManagementClass.new(context, base_url, options)
      end
    end

    class NetworkAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2017_03_09::Network::Mgmt::NetworkManagementClass.new(context, base_url, options)
      end
    end

    class DnsAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2017_03_09::Dns::Mgmt::DnsManagementClass.new(context, base_url, options)
      end
    end

    class ResourcesAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2017_03_09::Resources::Mgmt::ResourcesManagementClass.new(context, base_url, options)
      end
    end

    class LinksAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2017_03_09::Links::Mgmt::LinksManagementClass.new(context, base_url, options)
      end
    end

    class SubscriptionsAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2017_03_09::Subscriptions::Mgmt::SubscriptionsManagementClass.new(context, base_url, options)
      end
    end

    class StorageAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2017_03_09::Storage::Mgmt::StorageManagementClass.new(context, base_url, options)
      end
    end

    class FeaturesAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2017_03_09::Features::Mgmt::FeaturesManagementClass.new(context, base_url, options)
      end
    end
  end
end
