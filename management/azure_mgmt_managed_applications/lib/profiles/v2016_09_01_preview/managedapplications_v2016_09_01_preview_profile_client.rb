# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'profiles/v2016_09_01_preview/managedapplications_v2016_09_01_preview_module_definition.rb'
require 'profiles/v2016_09_01_preview/modules/managedapplications_profile_module'
require 'profiles/common/configurable'
require 'profiles/common/default'

module Azure::ManagedApplications::Profiles::V2016_09_01_Preview::Mgmt
  #
  # Client class for the V2016_09_01_Preview profile SDK.
  #
  class Client
    include Azure::ARM::Configurable

    attr_reader  :managed_applications

    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_options
      else
        @options = options
      end

      reset!(options)

      @managed_applications = ManagedApplicationsClass.new(self)
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
