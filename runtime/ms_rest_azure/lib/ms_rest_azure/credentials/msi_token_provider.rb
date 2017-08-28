# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

module MsRestAzure
  #
  # Class that provides access to authentication token via Managed Service Identity.
  #
  class MSITokenProvider < MsRest::TokenProvider

    private

    TOKEN_ACQUIRE_URL = 'http://localhost:{port}/oauth2/token'
    REQUEST_BODY_PATTERN = 'authority={authentication_endpoint}{tenant_id}&resource={resource_uri}'
    DEFAULT_SCHEME = 'Bearer'

    # @return [MSIActiveDirectoryServiceSettings] settings.
    attr_accessor :settings

    # @return [String] tenant id (also known as domain).
    attr_accessor :tenant_id

    # @return [Integer] port number where MSI service is running.
    attr_accessor :port

    # @return [String] auth token.
    attr_accessor :token

    # @return [Time] the date when the current token expires.
    attr_accessor :token_expires_on

    # @return [Integer] the amount of time we refresh token before it expires.
    attr_reader :expiration_threshold

    # @return [String] the type of token.
    attr_reader :token_type

    public

    #
    # Creates and initialize new instance of the MSITokenProvider class.
    # @param tenant_id [String] tenant id (also known as domain).
    # @param port [Integer] port number where MSI service is running.
    # @param settings [ActiveDirectoryServiceSettings] active directory setting.
    def initialize(tenant_id, port = 50342, settings = ActiveDirectoryServiceSettings.get_azure_settings)
      fail ArgumentError, 'Tenant id cannot be nil' if tenant_id.nil?
      fail ArgumentError, 'Port cannot be nil' if port.nil?
      fail ArgumentError, 'Port must be an Integer' unless port.is_a? Integer
      fail ArgumentError, 'Azure AD settings cannot be nil' if settings.nil?

      @tenant_id = tenant_id
      @port = port
      @settings = settings

      @expiration_threshold = 5 * 60
    end

    #
    # Returns the string value which needs to be attached
    # to HTTP request header in order to be authorized.
    #
    # @return [String] authentication headers.
    def get_authentication_header
      acquire_token if token_expired
      "#{token_type} #{token}"
    end

    private

    #
    # Checks whether token is about to expire.
    #
    # @return [Bool] True if token is about to expire, false otherwise.
    def token_expired
      @token.nil? || Time.now >= @token_expires_on + expiration_threshold
    end

    #
    # Retrieves a new authentication token.
    #
    # @return [String] new authentication token.
    def acquire_token
      token_acquire_url = TOKEN_ACQUIRE_URL.dup
      token_acquire_url['{port}'] = @port.to_s

      url = URI.parse(token_acquire_url)

      connection = Faraday.new(:url => url, :ssl => MsRest.ssl_options) do |builder|
        builder.adapter Faraday.default_adapter
      end

      request_body = REQUEST_BODY_PATTERN.dup
      request_body['{authentication_endpoint}'] = ERB::Util.url_encode(@settings.authentication_endpoint)
      request_body['{tenant_id}'] = ERB::Util.url_encode(@tenant_id)
      request_body['{resource_uri}'] = ERB::Util.url_encode(@settings.token_audience)

      response = connection.post do |request|
        request.headers['content-type'] = 'application/x-www-form-urlencoded'
        request.headers['Metadata'] = 'true'
        request.body = request_body
      end

      fail AzureOperationError,
        'Couldn\'t acquire access token from Managed Service Identity, please verify your tenant id, port and settings' unless response.status == 200

      response_body = JSON.load(response.body)
      @token = response_body['access_token']
      @token_expires_on = Time.at(Integer(response_body['expires_on']))
      @token_type = response_body['token_type']
    end
  end

end
