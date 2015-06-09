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

# TODO: extract common SAS logic, add support for the other SAS types

require 'azure/core/auth/signer'

# This will break if used against API version prior to 2013-08-15 as the format
# changed
# @see https://msdn.microsoft.com/library/azure/dn140255.aspx for more information on construction
module Azure
  module Blob
    module Auth
      class SharedAccessSignature < Azure::Core::Auth::Signer
        DEFAULTS = {
            resource: 'b',
            permissions: 'r',
            version: '2014-02-14'
        }

        KEY_MAPPINGS = {
            permissions:          :sp,
            start:                :st,
            expiry:               :se,
            resource:             :sr,
            identifier:           :si,
            version:              :sv,
            cache_control:        :rscc,
            content_disposition:  :rscd,
            content_encoding:     :rsce,
            content_language:     :rscl,
            content_type:         :rsct
        }

        OPTIONAL_QUERY_PARAMS = [:sp, :si, :rscc, :rscd, :rsce, :rscl, :rsct]

        attr :account_name

        # Public: Initialize the Signer.
        #
        # @param account_name [String] The account name. Defaults to the one in the global configuration.
        # @param access_key [String]   The access_key encoded in Base64. Defaults to the one in the global configuration.
        def initialize(account_name=Azure.storage_account_name, access_key=Azure.storage_access_key)
          @account_name = account_name
          super(access_key)
        end

        # Construct the plaintext to the spec required for signatures
        # @return [String]
        def signable_string(path, options)
          # Order is significant
          # The newlines from empty strings here are required
          [
              options[:permissions],
              options[:start],
              options[:expiry],
              canonicalized_resource(path),
              options[:identifier],

              options[:version],

              options[:cache_control],
              options[:content_disposition],
              options[:content_encoding],
              options[:content_language],
              options[:content_type]
          ].join("\n")
        end

        # Return the cononicalized resource representation of the blob resource
        # @return [String]
        def canonicalized_resource(path)
          "/#{account_name}#{path.start_with?('/') ? '' : '/'}#{path}"
        end

        # A customised URI reflecting options for the resource signed with the Shared Access Signature
        # @param uri      [URI] uri to resource including query options
        # @param options  [Hash]
        #
        # ==== Options
        #
        # * +:resource+     - String. Resource type, either 'b' (blob) or 'c' (container). Default 'b'
        # * +:permissions+  - String. Combination of 'r','w','d','l' (container only) in this order. Default 'r'
        # * +:start+        - String. UTC Date/Time in ISO8601 format. Optional.
        # * +:expiry+       - String. UTC Date/Time in ISO8601 format. Optional. Default now + 30 minutes.
        # * +:identifier+   - String. Identifier for stored access policy. Optional
        # * +:version+      - String. API version. Default 2014-02-14
        #
        # * +:cache_control+       - String. Response header override. Optional.
        # * +:content_disposition+ - String. Response header override. Optional.
        # * +:content_encoding+    - String. Response header override. Optional.
        # * +:content_language+    - String. Response header override. Optional.
        # * +:content_type+        - String. Response header override. Optional.
        def signed_uri(uri, options)
          parsed_query = CGI::parse(uri.query || '').inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

          options[:expiry] ||= (Time.now + 60*30).utc.iso8601

          if parsed_query.has_key?(:restype)
            options[:resource] = parsed_query[:restype].first == 'container' ? 'c' : 'b'
          end

          options = DEFAULTS.merge(options)
          sas_params = URI.encode_www_form(query_hash(uri.path, options))
          URI.parse(uri.to_s + (uri.query.nil? ? '?' : '&') + sas_params)
        end

        def sign_request(req)
          header_options = {}.tap do |opts|
            opts[:version] = req.headers['x-ms-version'] if req.headers.has_key?('x-ms-version')
          end

          req.uri = signed_uri(req.uri, header_options)
        end

        private

        def signature(path, options)
          sign(signable_string(path, options))
        end

        def query_hash(path, options)
          Hash[options.map { |k, v|
                 [KEY_MAPPINGS[k], v]
               }].reject { |k, v|
            OPTIONAL_QUERY_PARAMS.include?(k) && v.to_s == ''
          }.merge(
              sig: signature(path, options)
          )
        end

      end
    end
  end
end