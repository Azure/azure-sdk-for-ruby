# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

module Azure::ARM
  # Default configuration options for {Azure::ARM.Client}
  module Default
    class << self
      #
      # Default Azure Tenant Id.
      # @return [String] Azure Tenant Id.
      #
      def tenant_id
        ENV['AZURE_TENANT_ID']
      end

      #
      # Default Azure Client Id.
      # @return [String] Azure Client Id.
      #
      def client_id
        ENV['AZURE_CLIENT_ID']
      end

      #
      # Default Azure Client Secret.
      # @return [String] Azure Client Secret.
      #
      def client_secret
        ENV['AZURE_CLIENT_SECRET']
      end

      #
      # Default Azure Subscription Id.
      # @return [String] Azure Subscription Id.
      #
      def subscription_id
        ENV['AZURE_SUBSCRIPTION_ID']
      end

      #
      # Default Azure credentials to authorize HTTP requests made by the service client.
      # @return [MsRest::ServiceClientCredentials] Azure credentials to authorize HTTP requests made by the service client.
      #
      def credentials
        MsRest::TokenCredentials.new(
            MsRestAzure::ApplicationTokenProvider.new(
                self.tenant_id, self.client_id, self.client_secret, self.active_directory_settings))
      end

      #
      # Default Azure Active Directory Service Settings.
      # @return [MsRestAzure::ActiveDirectoryServiceSettings] Azure Active Directory Service Settings.
      #
      def active_directory_settings
        MsRestAzure::ActiveDirectoryServiceSettings.get_azure_settings
      end

      #
      # Configuration options.
      # @return [Hash] Configuration options.
      #
      def options
        Hash[Azure::ARM::Configurable.keys.map{|key| [key, send(key)]}]
      end
    end
  end
end
