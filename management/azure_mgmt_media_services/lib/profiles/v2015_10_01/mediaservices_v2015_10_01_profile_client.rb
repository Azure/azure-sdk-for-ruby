# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'profiles/v2015_10_01/mediaservices_v2015_10_01_module_definition.rb'
require 'profiles/v2015_10_01/modules/mediaservices_profile_module'
require 'profiles/common/configurable'
require 'profiles/common/default'

module Azure::MediaServices::Profiles::V2015_10_01::Mgmt
  #
  # Client class for the V2015_10_01 profile SDK.
  #
  class Client
    include Azure::ARM::Configurable

    attr_reader  :media_services

    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_options
      else
        @options = options
      end

      reset!(options)

      @media_services = MediaServicesClass.new(self)
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
