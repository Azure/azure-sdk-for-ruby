# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative './module_definition'
require_relative 'modules/storage_profile_module'
require_relative 'modules/network_profile_module'
require_relative 'modules/compute_profile_module'
require_relative 'modules/features_profile_module'
require_relative 'modules/links_profile_module'
require_relative 'modules/locks_profile_module'
require_relative 'modules/policy_profile_module'
require_relative 'modules/resources_profile_module'
require_relative 'modules/subscriptions_profile_module'
require_relative '../utils/configurable'
require_relative '../utils/default'

module Azure::Profiles::Management::Profile_Azure_Stack
  #
  # Client class for the Profile_Azure_Stack profile SDK.
  #
  class Client
    include Azure::ARM::Configurable

    attr_accessor  :storage, :network, :compute, :features, :links, :locks, :policy, :resources, :subscriptions

    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_options
      else
        @options = options
      end

      reset!(options)

      self.storage = Storage::StorageClass.new(self, nil, nil)
      self.network = Network::NetworkClass.new(self, nil, nil)
      self.compute = Compute::ComputeClass.new(self, nil, nil)
      self.features = Features::FeaturesClass.new(self, nil, nil)
      self.links = Links::LinksClass.new(self, nil, nil)
      self.locks = Locks::LocksClass.new(self, nil, nil)
      self.policy = Policy::PolicyClass.new(self, nil, nil)
      self.resources = Resources::ResourcesClass.new(self, nil, nil)
      self.subscriptions = Subscriptions::SubscriptionsClass.new(self, nil, nil)
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
