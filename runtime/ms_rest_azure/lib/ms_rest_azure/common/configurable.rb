# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

module MsRestAzure::Common
  # The Azure::Common::Configurable module provides basic configuration for Azure activities.
  module Configurable
    # @return [String] Azure tenant id (also known as domain).
    attr_accessor :tenant_id

    # @return [String] Azure client id.
    attr_accessor :client_id

    # @return [String] Azure secret key.
    attr_accessor :client_secret

    # @return [String] Azure subscription id.
    attr_accessor :subscription_id

    # @return [MsRestAzure::ActiveDirectoryServiceSettings] Azure active directory service settings.
    attr_accessor :active_directory_settings

    # @return [MsRest::ServiceClientCredentials] credentials to authorize HTTP requests made by the service client.
    attr_accessor :credentials

    class << self
      #
      # List of configurable keys for {Azure::Common::Client}.
      # @return [Array] of option keys.
      #
      def keys
        @keys ||= %i[tenant_id client_id client_secret subscription_id active_directory_settings]
      end
    end

    #
    # Set configuration options using a block.
    #
    def configure
      yield self
    end

    #
    # Resets the configurable options to provided options or defaults.
    # This will also creates MsRest::TokenCredentials to be used for subsequent Azure Resource Manager clients.
    #
    def reset!(options = {})
      MsRestAzure::Common::Configurable.keys.each do |key|
        default_value = MsRestAzure::Common::Default.options[key]
        instance_variable_set(:"@#{key}", options.fetch(key, default_value))
      end

      if options[:credentials].nil?
        # The user has not passed in the credentials. So, the SDK has to
        # build the credentials itself.
        raise ArgumentError, 'tenant_id is nil' if tenant_id.nil?
        raise ArgumentError, 'client_id is nil' if client_id.nil?
        raise ArgumentError, 'client_secret is nil' if client_secret.nil?
        raise ArgumentError, 'active_directory_settings is nil' if active_directory_settings.nil?

        self.credentials = MsRest::TokenCredentials.new(
          MsRestAzure::ApplicationTokenProvider.new(
            tenant_id, client_id, client_secret, active_directory_settings
          )
        )
      else
        self.credentials = options[:credentials]
      end

      self
    end

    def config
      self
    end

    private

    #
    # configures configurable options to default values
    #
    def setup_default_options
      opts = {}
      MsRestAzure::Common::Configurable.keys.map do |key|
        opts[key] = MsRestAzure::Common::Default.options[key]
      end

      opts
    end
  end
end
