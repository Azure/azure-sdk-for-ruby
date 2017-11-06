# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'profiles/v2017_03_09/subscriptions_module_definition'
require 'profiles/v2017_03_09/modules/subscriptions_profile_module'
require 'profiles/common/configurable'
require 'profiles/common/default'

module Azure::Subscriptions::Profiles::V2017_03_09::Mgmt
  #
  # Client class for the V2017_03_09 profile SDK.
  #
  class Client < SubscriptionsClass
    include Azure::Common::Configurable


    def initialize(options = {})
      super(options)
    end

  end
end
