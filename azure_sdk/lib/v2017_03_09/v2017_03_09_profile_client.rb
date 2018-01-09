# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'v2017_03_09/module_definition'
require 'v2017_03_09/modules/storage_profile_module'
require 'v2017_03_09/modules/network_profile_module'
require 'v2017_03_09/modules/compute_profile_module'
require 'v2017_03_09/modules/features_profile_module'
require 'v2017_03_09/modules/links_profile_module'
require 'v2017_03_09/modules/locks_profile_module'
require 'v2017_03_09/modules/policy_profile_module'
require 'v2017_03_09/modules/resources_profile_module'
require 'v2017_03_09/modules/subscriptions_profile_module'

module Azure::Profiles::V2017_03_09
  #
  # Client class for the V2017_03_09 profile SDK.
  #
  class Client
    include MsRestAzure::Common::Configurable

    attr_reader  :storage, :network, :compute, :features, :links, :locks, :policy, :resources, :subscriptions

    #
    # Initializes a new instance of the Client class.
    # @param options [Hash] hash of client options.
    #    options = {
    #      tenant_id: 'YOUR TENANT ID',
    #      client_id: 'YOUR CLIENT ID',
    #      client_secret: 'YOUR CLIENT SECRET',
    #      subscription_id: 'YOUR SUBSCRIPTION ID',
    #      credentials: credentials
    #    }
    #   'credentials' are optional and if not passed in the hash, will be obtained
    #   from MsRest::TokenCredentials using MsRestAzure::ApplicationTokenProvider.
    #
    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_default_options
      else
        @options = options
      end

      reset!(options)

      @storage = StorageAdapter.new(self)
      @network = NetworkAdapter.new(self)
      @compute = ComputeAdapter.new(self)
      @features = FeaturesAdapter.new(self)
      @links = LinksAdapter.new(self)
      @locks = LocksAdapter.new(self)
      @policy = PolicyAdapter.new(self)
      @resources = ResourcesAdapter.new(self)
      @subscriptions = SubscriptionsAdapter.new(self)
    end

    class StorageAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::V2017_03_09::Storage::Mgmt::StorageManagementClass.new(context)
      end
    end

    class NetworkAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::V2017_03_09::Network::Mgmt::NetworkManagementClass.new(context)
      end
    end

    class ComputeAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::V2017_03_09::Compute::Mgmt::ComputeManagementClass.new(context)
      end
    end

    class FeaturesAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::V2017_03_09::Features::Mgmt::FeaturesManagementClass.new(context)
      end
    end

    class LinksAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::V2017_03_09::Links::Mgmt::LinksManagementClass.new(context)
      end
    end

    class LocksAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::V2017_03_09::Locks::Mgmt::LocksManagementClass.new(context)
      end
    end

    class PolicyAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::V2017_03_09::Policy::Mgmt::PolicyManagementClass.new(context)
      end
    end

    class ResourcesAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::V2017_03_09::Resources::Mgmt::ResourcesManagementClass.new(context)
      end
    end

    class SubscriptionsAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::V2017_03_09::Subscriptions::Mgmt::SubscriptionsManagementClass.new(context)
      end
    end

  end
end
