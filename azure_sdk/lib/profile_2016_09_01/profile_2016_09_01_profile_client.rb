# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'profile_2016_09_01/profile_2016_09_01_module_definition.rb'
require 'profile_2016_09_01/modules/storage_profile_module'
require 'profile_2016_09_01/modules/network_profile_module'
require 'profile_2016_09_01/modules/compute_profile_module'
require 'profile_2016_09_01/modules/features_profile_module'
require 'profile_2016_09_01/modules/links_profile_module'
require 'profile_2016_09_01/modules/locks_profile_module'
require 'profile_2016_09_01/modules/policy_profile_module'
require 'profile_2016_09_01/modules/resources_profile_module'
require 'profile_2016_09_01/modules/subscriptions_profile_module'
require 'common/configurable'
require 'common/default'

module Azure::Profiles::Management::Profile_2016_09_01
  #
  # Client class for the Profile_2016_09_01 profile SDK.
  #
  class Client
    include Azure::ARM::Configurable

    attr_reader  :storage, :network, :compute, :features, :links, :locks, :policy, :resources, :subscriptions

    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_options
      else
        @options = options
      end

      reset!(options)

      @storage = Storage::StorageClass.new(self)
      @network = Network::NetworkClass.new(self)
      @compute = Compute::ComputeClass.new(self)
      @features = Features::FeaturesClass.new(self)
      @links = Links::LinksClass.new(self)
      @locks = Locks::LocksClass.new(self)
      @policy = Policy::PolicyClass.new(self)
      @resources = Resources::ResourcesClass.new(self)
      @subscriptions = Subscriptions::SubscriptionsClass.new(self)
    end

    def credentials
      if @credentials.nil?
        self.active_directory_settings ||= Azure::ARM::Default.active_directory_settings

        @credentials = MsRest::TokenCredentials.new(
                    MsRestAzure::ApplicationTokenProvider.new(
                        self.tenant_id, self.client_id, self.client_secret, self.active_directory_settings))
      end
      @credentials
    end
  end
end
