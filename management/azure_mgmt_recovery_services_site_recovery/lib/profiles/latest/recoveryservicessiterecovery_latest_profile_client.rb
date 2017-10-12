# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'profiles/latest/recoveryservicessiterecovery_latest_module_definition.rb'
require 'profiles/latest/modules/recoveryservicessiterecovery_profile_module'
require 'profiles/common/configurable'
require 'profiles/common/default'

module Azure::RecoveryServicesSiteRecovery::Profiles::Latest::Mgmt
  #
  # Client class for the Latest profile SDK.
  #
  class Client
    include Azure::ARM::Configurable

    attr_reader  :recovery_services_site_recovery

    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_options
      else
        @options = options
      end

      reset!(options)

      @recovery_services_site_recovery = RecoveryServicesSiteRecoveryClass.new(self)
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
