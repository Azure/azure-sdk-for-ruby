# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'profiles/Profile_2015_03_20/operationalinsights_profile_2015_03_20_module_definition.rb'
require 'profiles/Profile_2015_03_20/modules/operationalinsights_profile_module'
require 'profiles/utils/configurable'
require 'profiles/utils/default'

module Azure::Profiles::OperationalInsightsModule::Management::Profile_2015_03_20
  #
  # Client class for the Profile_2015_03_20 profile SDK.
  #
  class Client
    include Azure::ARM::Configurable

    attr_accessor  :operationalinsights

    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_options
      else
        @options = options
      end

      reset!(options)

      self.operationalinsights = OperationalInsights::OperationalInsightsClass.new(self)
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
