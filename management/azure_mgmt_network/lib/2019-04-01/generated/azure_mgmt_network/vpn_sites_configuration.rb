# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_04_01
  #
  # VpnSitesConfiguration
  #
  class VpnSitesConfiguration
    include MsRestAzure

    #
    # Creates and initializes a new instance of the VpnSitesConfiguration class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [NetworkManagementClient] reference to the NetworkManagementClient
    attr_reader :client

    #
    # Gives the sas-url to download the configurations for vpn-sites in a resource
    # group.
    #
    # @param resource_group_name [String] The resource group name.
    # @param virtual_wanname [String] The name of the VirtualWAN for which
    # configuration of all vpn-sites is needed.
    # @param request [GetVpnSitesConfigurationRequest] Parameters supplied to
    # download vpn-sites configuration.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    def download(resource_group_name, virtual_wanname, request, custom_headers:nil)
      response = download_async(resource_group_name, virtual_wanname, request, custom_headers:custom_headers).value!
      nil
    end

    #
    # @param resource_group_name [String] The resource group name.
    # @param virtual_wanname [String] The name of the VirtualWAN for which
    # configuration of all vpn-sites is needed.
    # @param request [GetVpnSitesConfigurationRequest] Parameters supplied to
    # download vpn-sites configuration.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def download_async(resource_group_name, virtual_wanname, request, custom_headers:nil)
      # Send request
      promise = begin_download_async(resource_group_name, virtual_wanname, request, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method, FinalStateVia::LOCATION)
      end

      promise
    end

    #
    # Gives the sas-url to download the configurations for vpn-sites in a resource
    # group.
    #
    # @param resource_group_name [String] The resource group name.
    # @param virtual_wanname [String] The name of the VirtualWAN for which
    # configuration of all vpn-sites is needed.
    # @param request [GetVpnSitesConfigurationRequest] Parameters supplied to
    # download vpn-sites configuration.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def begin_download(resource_group_name, virtual_wanname, request, custom_headers:nil)
      response = begin_download_async(resource_group_name, virtual_wanname, request, custom_headers:custom_headers).value!
      nil
    end

    #
    # Gives the sas-url to download the configurations for vpn-sites in a resource
    # group.
    #
    # @param resource_group_name [String] The resource group name.
    # @param virtual_wanname [String] The name of the VirtualWAN for which
    # configuration of all vpn-sites is needed.
    # @param request [GetVpnSitesConfigurationRequest] Parameters supplied to
    # download vpn-sites configuration.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_download_with_http_info(resource_group_name, virtual_wanname, request, custom_headers:nil)
      begin_download_async(resource_group_name, virtual_wanname, request, custom_headers:custom_headers).value!
    end

    #
    # Gives the sas-url to download the configurations for vpn-sites in a resource
    # group.
    #
    # @param resource_group_name [String] The resource group name.
    # @param virtual_wanname [String] The name of the VirtualWAN for which
    # configuration of all vpn-sites is needed.
    # @param request [GetVpnSitesConfigurationRequest] Parameters supplied to
    # download vpn-sites configuration.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_download_async(resource_group_name, virtual_wanname, request, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'virtual_wanname is nil' if virtual_wanname.nil?
      fail ArgumentError, 'request is nil' if request.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::Network::Mgmt::V2019_04_01::Models::GetVpnSitesConfigurationRequest.mapper()
      request_content = @client.serialize(request_mapper,  request)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualWans/{virtualWANName}/vpnConfiguration'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'virtualWANName' => virtual_wanname},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?

        result
      end

      promise.execute
    end

  end
end
