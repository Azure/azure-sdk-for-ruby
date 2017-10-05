# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_datalake_analytics'


module Azure::Profiles::DataLakeAnalyticsModule::Management::Profile_2015_10_01_Preview
  module DataLakeAnalytics
    Account = Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Account

    module Models
      DataLakeAnalyticsAccountListDataLakeStoreResult = Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::DataLakeAnalyticsAccountListDataLakeStoreResult
      StorageAccountProperties = Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::StorageAccountProperties
      DataLakeAnalyticsAccountProperties = Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::DataLakeAnalyticsAccountProperties
      BlobContainerProperties = Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::BlobContainerProperties
      AddDataLakeStoreParameters = Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::AddDataLakeStoreParameters
      ListBlobContainersResult = Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::ListBlobContainersResult
      AddStorageAccountParameters = Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::AddStorageAccountParameters
      ListSasTokensResult = Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::ListSasTokensResult
      DataLakeAnalyticsAccount = Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::DataLakeAnalyticsAccount
      DataLakeStoreAccountInfo = Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::DataLakeStoreAccountInfo
      DataLakeAnalyticsAccountListResult = Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::DataLakeAnalyticsAccountListResult
      StorageAccountInfo = Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::StorageAccountInfo
      ErrorDetails = Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::ErrorDetails
      SasTokenInfo = Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::SasTokenInfo
      InnerError = Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::InnerError
      DataLakeAnalyticsAccountListStorageAccountsResult = Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::DataLakeAnalyticsAccountListStorageAccountsResult
      Error = Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::Error
      DataLakeStoreAccountInfoProperties = Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::DataLakeStoreAccountInfoProperties
      AzureAsyncOperationResult = Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::AzureAsyncOperationResult
      BlobContainer = Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::BlobContainer
      DataLakeAnalyticsAccountStatus = Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::DataLakeAnalyticsAccountStatus
      DataLakeAnalyticsAccountState = Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::DataLakeAnalyticsAccountState
      OperationStatus = Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::OperationStatus
    end

    #
    # DataLakeAnalytics
    #
    class DataLakeAnalyticsClass
      attr_accessor :account, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::DataLakeAnalyticsAccountManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.account = Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Account.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2015-10-01-preview'
            client = Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::DataLakeAnalyticsAccountManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def data_lake_analytics_account_list_data_lake_store_result
          Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::DataLakeAnalyticsAccountListDataLakeStoreResult
        end
        def storage_account_properties
          Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::StorageAccountProperties
        end
        def data_lake_analytics_account_properties
          Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::DataLakeAnalyticsAccountProperties
        end
        def blob_container_properties
          Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::BlobContainerProperties
        end
        def add_data_lake_store_parameters
          Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::AddDataLakeStoreParameters
        end
        def list_blob_containers_result
          Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::ListBlobContainersResult
        end
        def add_storage_account_parameters
          Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::AddStorageAccountParameters
        end
        def list_sas_tokens_result
          Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::ListSasTokensResult
        end
        def data_lake_analytics_account
          Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::DataLakeAnalyticsAccount
        end
        def data_lake_store_account_info
          Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::DataLakeStoreAccountInfo
        end
        def data_lake_analytics_account_list_result
          Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::DataLakeAnalyticsAccountListResult
        end
        def storage_account_info
          Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::StorageAccountInfo
        end
        def error_details
          Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::ErrorDetails
        end
        def sas_token_info
          Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::SasTokenInfo
        end
        def inner_error
          Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::InnerError
        end
        def data_lake_analytics_account_list_storage_accounts_result
          Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::DataLakeAnalyticsAccountListStorageAccountsResult
        end
        def error
          Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::Error
        end
        def data_lake_store_account_info_properties
          Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::DataLakeStoreAccountInfoProperties
        end
        def azure_async_operation_result
          Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::AzureAsyncOperationResult
        end
        def blob_container
          Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::BlobContainer
        end
        def data_lake_analytics_account_status
          Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::DataLakeAnalyticsAccountStatus
        end
        def data_lake_analytics_account_state
          Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::DataLakeAnalyticsAccountState
        end
        def operation_status
          Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview::Models::OperationStatus
        end
      end
    end
  end
end
