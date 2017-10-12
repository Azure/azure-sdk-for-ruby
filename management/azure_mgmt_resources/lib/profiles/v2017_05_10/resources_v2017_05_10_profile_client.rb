# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'profiles/v2017_05_10/resources_v2017_05_10_module_definition.rb'
require 'profiles/v2017_05_10/modules/resources_profile_module'
require 'profiles/common/configurable'
require 'profiles/common/default'

module Azure::Resources::Profiles::V2017_05_10::Mgmt
  #
  # Client class for the V2017_05_10 profile SDK.
  #
  class Client < ResourcesClass
    include Azure::ARM::Configurable


    def initialize(options = {})
      super(options)
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
