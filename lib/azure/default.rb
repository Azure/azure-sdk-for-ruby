#-------------------------------------------------------------------------
# # Copyright (c) Microsoft and contributors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#--------------------------------------------------------------------------

module Azure

  # Default configuration options for {Client}
  module Default
    # Default API endpoint
    SERVICE_MANAGEMENT_ENDPOINT = 'https://management.core.windows.net'.freeze

    # Default User Agent header string
    USER_AGENT   = "Azure-SDK-For-Ruby/#{Azure::Version}".freeze

    class << self

      # Configuration options
      # @return [Hash]
      def options
        Hash[Azure::Configurable.keys.map{|key| [key, send(key)]}]
      end

      # Default storage access key
      # @return [String]
      def storage_access_key
        ENV['AZURE_STORAGE_ACCESS_KEY']
      end

      # Default storage account name
      # @return [String]
      def storage_account_name
        ENV['AZURE_STORAGE_ACCOUNT']
      end

      # Default storage table host
      # @return [String]
      def storage_table_host
        ENV['AZURE_STORAGE_TABLE_HOST']
      end

      # Default storage blob host
      # @return [String]
      def storage_blob_host
        ENV['AZURE_STORAGE_BLOB_HOST']
      end

      # Default storage queue host
      # @return [String]
      def storage_queue_host
        ENV['AZURE_STORAGE_QUEUE_HOST']
      end

      # Default service bus namespace
      # @return [String]
      def sb_namespace
        ENV['AZURE_SERVICEBUS_NAMESPACE']
      end

      # Default service bus access key
      # @return [String]
      def sb_access_key
        ENV['AZURE_SERVICEBUS_ACCESS_KEY']
      end

      # Default service bus Shared Access Policy key
      # @return [String]
      def sb_sas_key
        ENV['AZURE_SERVICEBUS_SAS_KEY']
      end

      # Default service bus Shared Access Policy key name
      # @return [String]
      def sb_sas_key_name
        ENV['AZURE_SERVICEBUS_SAS_KEY_NAME']
      end

      # Default service bus issuer
      # @return [String]
      def sb_issuer
        ENV['AZURE_SERVICEBUS_ISSUER'] || 'owner'
      end

      # Default management certificate to use for management activeities
      # @return [String]
      def management_certificate
        ENV['AZURE_MANAGEMENT_CERTIFICATE']
      end

      # Default subscription to use for management activities
      # @return [String]
      def subscription_id
        ENV['AZURE_SUBSCRIPTION_ID']
      end

      # Default Azure management endpoint
      # @return [String]
      def management_endpoint
        ENV['AZURE_MANAGEMENT_ENDPOINT'] || (SERVICE_MANAGEMENT_ENDPOINT + '/')
      end

      # Default SQL database management endpoint
      # @return [String]
      def sql_database_management_endpoint
        ENV['AZURE_SQL_DATABASE_MANAGEMENT_ENDPOINT'] || "#{SERVICE_MANAGEMENT_ENDPOINT}:8443/"
      end

      # Default Certificate Authority bundle to be used for https
      # @return [String]
      def ca_file
        ENV['SSL_CERT_FILE']
      end

    end
  end
end
