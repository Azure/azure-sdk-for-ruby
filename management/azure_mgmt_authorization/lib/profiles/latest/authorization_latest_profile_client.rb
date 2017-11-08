# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'profiles/latest/authorization_module_definition'
require 'profiles/latest/modules/authorization_profile_module'

module Azure::Authorization::Profiles::Latest::Mgmt
  #
  # Client class for the Latest profile SDK.
  #
  class Client < AuthorizationClass
    include MsRestAzure::Common::Configurable


    def initialize(options = {})
      super(options)
    end

  end
end
