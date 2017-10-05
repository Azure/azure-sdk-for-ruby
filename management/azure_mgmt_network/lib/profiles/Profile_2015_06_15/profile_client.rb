# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative './module_definition'
require_relative 'modules/network_profile_module'
require_relative '../utils/configurable'
require_relative '../utils/default'

module Azure::Profiles::NetworkModule::Management::Profile_2015_06_15
  #
  # Client class for the Profile_2015_06_15 profile SDK.
  #
  class Client
    include Azure::ARM::Configurable

    attr_accessor  :network

    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_options
      else
        @options = options
      end

      reset!(options)

      self.network = Network::NetworkClass.new(self, nil, nil)
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
