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

require "azure/core/configuration"
require "azure/core/auth/signer"

# This will break if used against API version prior to 2013-08-15 as the format
# changed
# See https://msdn.microsoft.com/library/azure/dn140255.aspx for more information on construction
module Azure
  module Blob
    module Auth
      class SharedAccessSignature < Core::Auth::Signer
        DEFAULTS = {
          resource: 'b',
          permissions: 'r',
          version: '2013-08-15'
        }

        KEY_MAPPINGS = {
          permissions:         :sp,
          start:               :st,
          expiry:              :se,
          resource:            :sr,
          identifier:          :si,
          version:             :sv,
          cache_control:       :rscc,
          content_disposition: :rscd,
          content_encoding:    :rsce,
          content_language:    :rscl,
          content_type:        :rsct
        }

        OPTIONAL_QUERY_PARAMS = [:sp, :si, :rscc, :rscd, :rsce, :rscl, :rsct]

        attr :path
        attr :options
        attr :account_name

        # Public: Initialize the Signer.
        #
        # ==== Attributes
        #
        # * +path+         - the container or blob path
        # * +options+      - Hash. Optional parameters
        # * +account_name+ - The account name. Defaults to the one in the
        #                    global configuration.
        # * +access_key+   - The access_key encoded in Base64. Defaults to the
        #                    one in the global configuration.
        #
        # ==== Options
        #
        # * +:permissions+  - String. Combination of 'r','w','d','l' (container only) in this order. Default 'r'
        # * +:start+        - String. Date/Time in ISO8601 format. Optional.
        # * +:expiry+       - String. Date/Time in ISO8601 format. Required.
        # * +:identifier+   - String. Identifier for stored access policy. Optional
        # * +:version+      - String. API version. Default '2013-08-15'
        #
        # * +:cache_control       - String. Response header override. Optional.
        # * +:content_disposition - String. Response header override. Optional.
        # * +:content_encoding    - String. Response header override. Optional.
        # * +:content_language    - String. Response header override. Optional.
        # * +:content_type        - String. Response header override. Optional.
        def initialize(path='/', options={}, account_name=Azure.config.storage_account_name, access_key=Azure.config.storage_access_key)
          @path = path
          @account_name = account_name
          @options = DEFAULTS.merge(options)

          super(access_key)
        end

        # Public: Construct the plaintext to the spec required for signatures
        def signable_string
          # Order is significant
          # The newlines from empty strings here are required
          [
            options[:permissions],
            options[:start],
            options[:expiry],
            canonicalized_resource,
            options[:identifier],

            options[:version],

            options[:cache_control],
            options[:content_disposition],
            options[:content_encoding],
            options[:content_language],
            options[:content_type]
          ].join("\n")
        end

        def canonicalized_resource
          "/#{account_name}/#{path}"
        end

        # Public: A customised URI reflecting options for the resource signed with the Shared Access Signature
        def signed_uri
          query_params = URI.encode_www_form(query_hash)
          "https://#{account_name}.blob.core.windows.net/#{path}?#{query_params}"
        end

        def to_s
          signed_uri
        end

        private

        def signature
          sign(signable_string)
        end

        def query_hash
          Hash[options.map { |k, v|
            [KEY_MAPPINGS[k], v]
          }].reject { |k,v|
            OPTIONAL_QUERY_PARAMS.include?(k) && v.to_s == ''
          }.merge(
            sig: signature
          )
        end

      end
    end
  end
end