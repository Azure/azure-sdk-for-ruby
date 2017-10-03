# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

module Azure::ARM
  # The Azure::ARM::Configurable module provides basic configuration for Azure ARM activities.
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
      # List of configurable keys for {Azure::ARM::Client}.
      # @return [Array] of option keys.
      #
      def keys
        @keys ||= [:tenant_id, :client_id, :client_secret, :subscription_id, :active_directory_settings, :credentials]
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
      Azure::ARM::Configurable.keys.each do |key|
        default_value = Azure::ARM::Default.options[key]
        instance_variable_set(:"@#{key}", options.fetch(key, default_value))
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
    def setup_options
      opts = {}
      Azure::ARM::Configurable.keys.map do |key|
        opts[key] = Azure::ARM::Default.options[key]
      end
      opts
    end
  end
end
