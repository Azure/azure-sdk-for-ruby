# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

module MsRestAzure
  #
  # Class which represents an settings for MSI Azure AD authentication.
  #
  class MSIActiveDirectoryServiceSettings < ActiveDirectoryServiceSettings

    private

    #
    # Returns a set of properties required to login into Azure Cloud via MSI.
    #
    # @param azure_environment [AzureEnvironment] An instance of AzureEnvironment.
    # @return [MSIActiveDirectoryServiceSettings] settings required for authentication.
    def self.get_settings(azure_environment = MsRestAzure::AzureEnvironments::Azure)
      settings = ActiveDirectoryServiceSettings.new
      settings.authentication_endpoint = azure_environment.active_directory_endpoint_url
      settings.token_audience = azure_environment.resource_manager_endpoint_url
      settings
    end
  end
end
