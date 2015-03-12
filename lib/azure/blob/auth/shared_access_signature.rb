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

# TODO: add expected commenting
# TODO: extract common SAS logic, add support for the other SAS types
# TODO: tests
# TODO: can the empty strings be safely removed?

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
          path: '/',
          resource: 'b',
          permissions: 'r',
          start: '',
          expiry: '',
          identifier: '',
          version: '2013-08-15',
          cache_control: '',
          content_disposition: '',
          content_encoding: '',
          content_language: '',
          content_type: ''
        }

        MAPPINGS = {
          sp: :permissions,
          st: :start,
          se: :expiry,
          sr: :resource,
          si: :identifier,

          sv: :version,

          rscc: :cache_control,
          rscd: :content_disposition,
          rsce: :content_encoding,
          rscl: :content_language,
          rsct: :content_type
        }

        OPTIONAL_QUERY_PARAMS = [:sp, :si, :rscc, :rscd, :rsce, :rscl, :rsct]

        # The Azure account's name.
        attr :account_name
        attr :options

        # Public: Initialize the Signer.
        #
        # account_name - The account name. Defaults to the one in the
        #                global configuration.
        # access_key   - The access_key encoded in Base64. Defaults to the
        #                one in the global configuration.
        def initialize(options={}, account_name=Azure.config.storage_account_name, access_key=Azure.config.storage_access_key)
          @account_name = account_name
          @options = DEFAULTS.merge(options)

          super(access_key)
        end

        def signable_string
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

        def canonicalized_path
          # Note: 'c' is planned to become 'container' in a forthcoming API update
          if options[:resource].first == 'c' then
            # If resource is a container, remove the last part (which is the filename)
            options[:path].split('/').reverse.drop(1).reverse.join('/')
          else
            options[:path]
          end
        end

        def canonicalized_resource
          "/#{account_name}/#{canonicalized_path}"
        end

        def signature
          sign(signable_string)
        end

        def query_hash
          Hash[MAPPINGS.map { |query_key, friendly_key|
            [query_key, URI.unescape(options[friendly_key])]
          }].reject { |k,v|
            OPTIONAL_QUERY_PARAMS.include?(k) && v == ''
          }.merge(sig: URI.unescape(signature))
        end

        def signed_uri
          uri  = Addressable::URI.new
          uri.query_values = query_hash
          "https://#{account_name}.blob.core.windows.net/#{options[:path]}?#{uri.query}"
        end

        def to_s
          signed_uri
        end

      end
    end
  end
end