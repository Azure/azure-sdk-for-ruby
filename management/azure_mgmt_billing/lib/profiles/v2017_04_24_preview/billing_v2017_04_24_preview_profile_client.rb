# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'profiles/v2017_04_24_preview/billing_module_definition.rb'
require 'profiles/v2017_04_24_preview/modules/billing_profile_module'
require 'profiles/common/configurable'
require 'profiles/common/default'

module Azure::Billing::Profiles::V2017_04_24_Preview::Mgmt
  #
  # Client class for the V2017_04_24_Preview profile SDK.
  #
  class Client < BillingClass
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
