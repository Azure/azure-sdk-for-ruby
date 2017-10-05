# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'Profile_Azure_Stack/profile_azure_stack_module_definition.rb'
require 'Profile_Azure_Stack/modules/storage_profile_module'
require 'Profile_Azure_Stack/modules/network_profile_module'
require 'Profile_Azure_Stack/modules/compute_profile_module'
require 'Profile_Azure_Stack/modules/features_profile_module'
require 'Profile_Azure_Stack/modules/links_profile_module'
require 'Profile_Azure_Stack/modules/locks_profile_module'
require 'Profile_Azure_Stack/modules/policy_profile_module'
require 'Profile_Azure_Stack/modules/resources_profile_module'
require 'Profile_Azure_Stack/modules/subscriptions_profile_module'
require 'utils/configurable'
require 'utils/default'

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
