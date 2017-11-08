# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'profiles/latest/streamanalytics_module_definition'
require 'profiles/latest/modules/streamanalytics_profile_module'

module Azure::StreamAnalytics::Profiles::Latest::Mgmt
  #
  # Client class for the Latest profile SDK.
  #
  class Client < StreamAnalyticsClass
    include MsRestAzure::Common::Configurable


    def initialize(options = {})
      super(options)
    end

  end
end
