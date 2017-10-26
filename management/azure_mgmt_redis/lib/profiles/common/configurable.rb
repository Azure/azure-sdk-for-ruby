# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

module Azure::Common
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
        @keys ||= [:tenant_id, :client_id, :client_secret, :subscription_id, :active_directory_settings]
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
      Azure::Common::Configurable.keys.each do |key|
        default_value = Azure::Common::Default.options[key]
        instance_variable_set(:"@#{key}", options.fetch(key, default_value))
      end

      fail ArgumentError, 'tenant_id is nil' if self.tenant_id.nil?
      fail ArgumentError, 'client_id is nil' if self.client_id.nil?
      fail ArgumentError, 'client_secret is nil' if self.client_secret.nil?
      fail ArgumentError, 'subscription_id is nil' if self.subscription_id.nil?
      fail ArgumentError, 'active_directory_settings is nil' if self.active_directory_settings.nil?

      default_value = MsRest::TokenCredentials.new(
        MsRestAzure::ApplicationTokenProvider.new(
          self.tenant_id, self.client_id, self.client_secret, self.active_directory_settings))

      instance_variable_set(:"@credentials", options.fetch(:credentials, default_value))

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
      Azure::Common::Configurable.keys.map do |key|
        opts[key] = Azure::Common::Default.options[key]
      end

      opts
    end
  end
end
