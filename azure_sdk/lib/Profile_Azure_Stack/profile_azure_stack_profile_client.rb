# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'profile_azure_stack/profile_azure_stack_module_definition.rb'
require 'profile_azure_stack/modules/storage_profile_module'
require 'profile_azure_stack/modules/network_profile_module'
require 'profile_azure_stack/modules/compute_profile_module'
require 'profile_azure_stack/modules/features_profile_module'
require 'profile_azure_stack/modules/links_profile_module'
require 'profile_azure_stack/modules/locks_profile_module'
require 'profile_azure_stack/modules/policy_profile_module'
require 'profile_azure_stack/modules/resources_profile_module'
require 'profile_azure_stack/modules/subscriptions_profile_module'
require 'common/configurable'
require 'common/default'

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

      self.storage = Storage::StorageClass.new(self)
      self.network = Network::NetworkClass.new(self)
      self.compute = Compute::ComputeClass.new(self)
      self.features = Features::FeaturesClass.new(self)
      self.links = Links::LinksClass.new(self)
      self.locks = Locks::LocksClass.new(self)
      self.policy = Policy::PolicyClass.new(self)
      self.resources = Resources::ResourcesClass.new(self)
      self.subscriptions = Subscriptions::SubscriptionsClass.new(self)
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
