# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

module MsRest
  #
  # Class which represents a point of access to the REST API.
  #
  class ServiceClient

    # @return [MsRest::ServiceClientCredentials] the credentials object.
    attr_accessor :credentials

    # @return [Hash{String=>String}] default middlewares configuration for requests.
    attr_accessor :middlewares

    # @return [Hash{String=>String}] default request headers for requests.
    attr_accessor :request_headers

    # @return [Array] strings to be appended to the user agent in the request
    attr_accessor :user_agent_extended

    #
    # Creates and initialize new instance of the ServiceClient class.
    #
    # @param credentials [MsRest::ServiceClientCredentials] credentials to authorize
    # HTTP requests made by the service client.
    # @param options additional parameters for the HTTP request (not implemented yet).
    #
    def initialize(credentials = nil, options = nil)
      @credentials = credentials
      @request_headers = {}
      @middlewares = {middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]]}
      @user_agent_extended = []
      @user_agent_extended.push("ms_rest/#{MsRest::VERSION}")
    end

    #
    # @param base_url [String] the base url for the request.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :credentials, :body, etc.
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def make_request_async(base_url, method, path, options = {})
      options = @middlewares.merge(options)
      options[:credentials] = options[:credentials] || @credentials
      options[:user_agent_extended] = @user_agent_extended
      request  = MsRest::HttpOperationRequest.new(base_url, path, method, options)
      promise = request.run_promise do |req|
        options[:credentials].sign_request(req) unless options[:credentials].nil?
      end
      promise = promise.then do |http_response|
        response_content = http_response.body.to_s.empty? ? nil : http_response.body
        # Create response
        create_response(request, http_response, response_content)
      end
      promise.execute
    end

    #
    # Add additional information into User-Agent header.
    # @param [String] additional_user_agent_information additional product information for user agent string.
    #
    # Example:
    #  recommended format is Product/[version]
    #  please refer https://github.com/Azure/azure-sdk-for-ruby/issues/517 for more information.
    #
    #  add_user_agent_information('fog-azure-rm/0.2.0')
    #
    def add_user_agent_information(additional_user_agent_information)
      @user_agent_extended.push(additional_user_agent_information)
    end

    private
      #
      # Retrieves a new instance of the HttpOperationResponse class.
      # @param [MsRest::HttpOperationRequest] request the HTTP request object.
      # @param [Faraday::Response] response the HTTP response object.
      # @param [String] body the HTTP response body.
      # @return [MsRest::HttpOperationResponse] the operation response.
      #
      def create_response(request, http_response, body = nil)
        HttpOperationResponse.new(request, http_response, body)
      end
  end

  #
  # Hash of SSL options for Faraday connection. Default is nil.
  #
  @@ssl_options = {}

  #
  # Stores the SSL options to be used for Faraday connections.
  # ==== Examples
  #   MsRest.use_ssl_cert                                  # => Uses bundled certificate for all the connections
  #   MsRest.use_ssl_cert({:ca_file => "path_to_ca_file"}) # => Uses supplied certificate for all the connections
  #
  # @param ssl_options [Hash] Hash of SSL options for Faraday connection. It defaults to the bundled certificate.
  #
  def self.use_ssl_cert(ssl_options = nil)
    if ssl_options.nil?
      @@ssl_options = {:ca_file => File.expand_path(File.join(File.dirname(__FILE__), '../..', 'ca-cert.pem')) }
    else
      @@ssl_options = ssl_options
    end
  end

  #
  # @return [Hash] Hash of SSL options to be used for Faraday connection.
  #
  def self.ssl_options
    @@ssl_options
  end
end
