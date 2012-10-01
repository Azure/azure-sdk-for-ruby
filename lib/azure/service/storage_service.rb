#-------------------------------------------------------------------------
# Copyright 2012 Microsoft Corporation
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
require 'azure/core/http_request'
require 'azure/core/auth/shared_key'
require 'azure/entity/service/storage_service_properties'

module Azure
  module Service
    # A base class for StorageService implementations
    class StorageService

      # Create a new instance of the StorageService
      #
      # signer        - Azure::Core::Signer. An implementation of Signer used for signing requests. (optional, Default=Azure::Core::Auth::Strategies::SharedKey.new)
      # account_name  - String. The account name (optional, Default=Azure.config.account_name)  
      def initialize(signer=Azure::Core::Auth::Strategies::SharedKey.new, account_name=Azure.config.account_name)
        @account_name = account_name
        @signer = signer
        @filters = []
        @host = ""
        @default_timeout = 30
      end

      attr_accessor :account_name
      attr_accessor :signer
      attr_accessor :filters
      attr_accessor :host
      attr_accessor :default_timeout

      def call(method, uri, body=nil, headers=nil)
        request = Azure::Core::HttpRequest.new(method, uri, body)
        request.headers.merge!(headers) if headers
        
        if signer
          request.with_filter do |req, _next|
            signature = signer.sign(req.method, req.uri, req.headers)
            req.headers["Authorization"] = "#{signer.name} #{account_name}:#{signature}"
            _next.call
          end
        end

        filters.each { |filter| request.with_filter filter } if filters

        request.call
      end

      def with_filter(filter=nil, &block)
        filter = filter || block
        filters.push filter if filter
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
        properties = Azure::Entity::Service::StorageServiceProperties.parse(response.body)
        properties
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
        body = Azure::Entity::Service::StorageServiceProperties.to_xml

        uri = service_properties_uri
        response = call(:put, uri, body)
        response.success?
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
      
      def generate_uri(path='', query={})
        uri = ::URI.parse(File.join(host, path))
        query["timeout"] = default_timeout.to_s unless query == nil or query.has_key? "timeout"
        uri.query = ::URI.encode_www_form(query) unless query == nil or query.empty?
        uri
      end
    end
  end
end