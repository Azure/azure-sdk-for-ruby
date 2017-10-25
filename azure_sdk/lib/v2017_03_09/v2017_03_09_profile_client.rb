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
require 'common/configurable'
require 'common/default'

module Azure::Profiles::V2017_03_09::Mgmt
  #
  # Client class for the V2017_03_09 profile SDK.
  #
  class Client
    include Azure::Common::Configurable

    attr_reader  :storage, :network, :compute, :features, :links, :locks, :policy, :resources, :subscriptions

    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_options
      else
        @options = options
      end

      reset!(options)

      @storage = Azure::Profiles::V2017_03_09::Storage::Mgmt::StorageClass.new(self)
      @network = Azure::Profiles::V2017_03_09::Network::Mgmt::NetworkClass.new(self)
      @compute = Azure::Profiles::V2017_03_09::Compute::Mgmt::ComputeClass.new(self)
      @features = Azure::Profiles::V2017_03_09::Features::Mgmt::FeaturesClass.new(self)
      @links = Azure::Profiles::V2017_03_09::Links::Mgmt::LinksClass.new(self)
      @locks = Azure::Profiles::V2017_03_09::Locks::Mgmt::LocksClass.new(self)
      @policy = Azure::Profiles::V2017_03_09::Policy::Mgmt::PolicyClass.new(self)
      @resources = Azure::Profiles::V2017_03_09::Resources::Mgmt::ResourcesClass.new(self)
      @subscriptions = Azure::Profiles::V2017_03_09::Subscriptions::Mgmt::SubscriptionsClass.new(self)
    end

    def credentials
      if @credentials.nil?
        self.active_directory_settings ||= Azure::Common::Default.active_directory_settings

        @credentials = MsRest::TokenCredentials.new(
                    MsRestAzure::ApplicationTokenProvider.new(
                        self.tenant_id, self.client_id, self.client_secret, self.active_directory_settings))
      end
      @credentials
    end
  end
end
