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
require 'azure/core/signed_service'

module Azure
  module Service
    # A base class for StorageService implementations
    class StorageService < Azure::Core::SignedService
      # Create a new instance of the StorageService
      #
      # signer        - Azure::Core::Auth::Signer. An implementation of Signer used for signing requests. (optional, Default=Azure::Core::Auth::SharedKey.new)
      # account_name  - String. The account name (optional, Default=Azure.config.storage_account_name)  
      def initialize(signer=Core::Auth::SharedKey.new, account_name=Azure.config.storage_account_name)
        super(signer, account_name)
      end


      # Public: Get Storage Service properties
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/hh452239
      # See http://msdn.microsoft.com/en-us/library/windowsazure/hh452243
      #
      # Returns a Hash with the service properties or nil if the operation failed
      def get_service_properties
        uri = service_properties_uri
        response = call(:get, uri)
        Serialization.service_properties_from_xml response.body
      end

      # Public: Set Storage Service properties
      #
      # service_properties - An instance of Azure::Entity::Service::StorageServiceProperties
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/hh452235
      # See http://msdn.microsoft.com/en-us/library/windowsazure/hh452232
      #
      # Returns boolean indicating success.
      def set_service_properties(service_properties)
        body = Serialization.service_properties_to_xml service_properties

        uri = service_properties_uri
        call(:put, uri, body)
        nil
      end

      # Public: Generate the URI for the service properties
      #
      # query - see Azure::Services::GetServiceProperties#call documentation.
      #
      # Returns a URI.
      def service_properties_uri(query={})
        query.update(restype: 'service', comp: 'properties')
        generate_uri("", query)
      end

      # Adds metadata properties to header hash with required prefix
      # 
      # metadata  - A Hash of metadata name/value pairs
      # headers   - A Hash of HTTP headers 
      def add_metadata_to_headers(metadata, headers)
        metadata.each do |key, value|
          headers["x-ms-meta-#{key}"] = value
        end
      end
    end
  end
end