# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'profiles/latest/servicebus_module_definition'
require 'profiles/latest/modules/servicebus_profile_module'

module Azure::ServiceBus::Profiles::Latest
  module Mgmt
    #
    # Client class for the Latest profile SDK.
    #
    class Client < ServiceBusManagementClass
      include MsRestAzure::Common::Configurable

      def initialize(options = {})
        super(options)
      end

    end
  end
end
