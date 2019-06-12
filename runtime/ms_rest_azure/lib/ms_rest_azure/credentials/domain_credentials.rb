# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

module MsRestAzure
    #
    # Class that enables access to Azure EventGrid domains.
    #
    class DomainCredentials < MsRest::ServiceClientCredentials

      private

      # @return [String] the domain key
      attr_reader :domain_key

      public

      #
      # Creates and initialize new instance of the DomainCredentials class.
      # @param domain_key [String] domain key
      def initialize(domain_key)
        fail ArgumentError, 'Domain key cannot be nil' if domain_key.nil?
        fail ArgumentError, 'Domain key must be of type string' if domain_key.class.to_s != 'String'
        @domain_key = domain_key
      end

      def sign_request(request)
        super(request)

        if (request.respond_to?(:request_headers))
          request.request_headers['aeg-sas-key'] = @domain_key
        elsif request.respond_to?(:headers)
          request.headers['aeg-sas-key'] = @domain_key
        else
          fail ArgumentError, 'Incorrect request object was provided'
        end
      end
    end

  end
