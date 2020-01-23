# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'profiles/latest/graphrbac_module_definition'
require 'profiles/latest/modules/graphrbac_profile_module'

module Azure::GraphRbac::Profiles::Latest
  #
  # Client class for the Latest profile SDK.
  #
  class Client < GraphRbacDataClass
    include MsRestAzure::Common::Configurable

    #
    # Initializes a new instance of the Client class.
    # @param options [Hash] hash of client options.
    #    options = {
    #      tenant_id: 'YOUR TENANT ID',
    #      client_id: 'YOUR CLIENT ID',
    #      client_secret: 'YOUR CLIENT SECRET',
    #      subscription_id: 'YOUR SUBSCRIPTION ID',
    #      credentials: credentials,
    #      active_directory_settings: active_directory_settings,
    #      base_url: 'YOUR BASE URL',
    #      options: options
    #    }
    #   'credentials' are optional and if not passed in the hash, will be obtained
    #   from MsRest::TokenCredentials using MsRestAzure::ApplicationTokenProvider.
    #
    #   Also, base_url, active_directory_settings & options are optional.
    #
    def initialize(options = {})
      options[:active_directory_settings] ||= default_active_directory_settings
      super(options)
      @client_0.tenant_id = tenant_id if @client_0
    end

    private

    def default_active_directory_settings
      MsRestAzure::ActiveDirectoryServiceSettings.new.tap do |ad|
        ad.authentication_endpoint = MsRestAzure::AzureEnvironments::AzureCloud.active_directory_endpoint_url
        ad.token_audience = MsRestAzure::AzureEnvironments::AzureCloud.active_directory_graph_resource_id
      end
    end

  end
end
