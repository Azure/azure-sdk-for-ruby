# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Dns
  #
  # Zones
  #
  class Zones
    include Azure::ARM::Dns::Models
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Zones class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return reference to the DnsManagementClient
    attr_reader :client

    #
    # Creates or Updates a DNS zone within a resource group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param zone_name [String] The name of the zone without a terminating dot.
    # @param parameters [Zone] Parameters supplied to the CreateOrUpdate operation.
    # @param if_match [String] The etag of Zone.
    # @param if_none_match [String] Defines the If-None-Match condition. Set to
    # '*' to force Create-If-Not-Exist. Other values will be ignored.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Zone] operation results.
    #
    def create_or_update(resource_group_name, zone_name, parameters, if_match = nil, if_none_match = nil, custom_headers = nil)
      response = create_or_update_async(resource_group_name, zone_name, parameters, if_match, if_none_match, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates or Updates a DNS zone within a resource group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param zone_name [String] The name of the zone without a terminating dot.
    # @param parameters [Zone] Parameters supplied to the CreateOrUpdate operation.
    # @param if_match [String] The etag of Zone.
    # @param if_none_match [String] Defines the If-None-Match condition. Set to
    # '*' to force Create-If-Not-Exist. Other values will be ignored.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(resource_group_name, zone_name, parameters, if_match = nil, if_none_match = nil, custom_headers = nil)
      create_or_update_async(resource_group_name, zone_name, parameters, if_match, if_none_match, custom_headers).value!
    end

    #
    # Creates or Updates a DNS zone within a resource group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param zone_name [String] The name of the zone without a terminating dot.
    # @param parameters [Zone] Parameters supplied to the CreateOrUpdate operation.
    # @param if_match [String] The etag of Zone.
    # @param if_none_match [String] Defines the If-None-Match condition. Set to
    # '*' to force Create-If-Not-Exist. Other values will be ignored.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(resource_group_name, zone_name, parameters, if_match = nil, if_none_match = nil, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'zone_name is nil' if zone_name.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['If-Match'] = if_match unless if_match.nil?
      request_headers['If-None-Match'] = if_none_match unless if_none_match.nil?
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Zone.mapper()
      request_content = @client.serialize(request_mapper,  parameters, 'parameters')
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/dnszones/{zoneName}'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'zoneName' => zone_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {})
      }

      request_url = @base_url || @client.base_url

      request = MsRest::HttpOperationRequest.new(request_url, path_template, :put, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 201
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Zone.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Zone.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Removes a DNS zone from a resource group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param zone_name [String] The name of the zone without a terminating dot.
    # @param if_match [String] Defines the If-Match condition. The delete
    # operation will be performed only if the ETag of the zone on the server
    # matches this value.
    # @param if_none_match [String] Defines the If-None-Match condition. The
    # delete operation will be performed only if the ETag of the zone on the
    # server does not match this value.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ZoneDeleteResult] operation results.
    #
    def delete(resource_group_name, zone_name, if_match = nil, if_none_match = nil, custom_headers = nil)
      response = delete_async(resource_group_name, zone_name, if_match, if_none_match, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] The name of the resource group.
    # @param zone_name [String] The name of the zone without a terminating dot.
    # @param if_match [String] Defines the If-Match condition. The delete
    # operation will be performed only if the ETag of the zone on the server
    # matches this value.
    # @param if_none_match [String] Defines the If-None-Match condition. The
    # delete operation will be performed only if the ETag of the zone on the
    # server does not match this value.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def delete_async(resource_group_name, zone_name, if_match = nil, if_none_match = nil, custom_headers = nil)
      # Send request
      promise = begin_delete_async(resource_group_name, zone_name, if_match, if_none_match, custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = ZoneDeleteResult.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response, 'parsed_response')
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Removes a DNS zone from a resource group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param zone_name [String] The name of the zone without a terminating dot.
    # @param if_match [String] Defines the If-Match condition. The delete
    # operation will be performed only if the ETag of the zone on the server
    # matches this value.
    # @param if_none_match [String] Defines the If-None-Match condition. The
    # delete operation will be performed only if the ETag of the zone on the
    # server does not match this value.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ZoneDeleteResult] operation results.
    #
    def begin_delete(resource_group_name, zone_name, if_match = nil, if_none_match = nil, custom_headers = nil)
      response = begin_delete_async(resource_group_name, zone_name, if_match, if_none_match, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Removes a DNS zone from a resource group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param zone_name [String] The name of the zone without a terminating dot.
    # @param if_match [String] Defines the If-Match condition. The delete
    # operation will be performed only if the ETag of the zone on the server
    # matches this value.
    # @param if_none_match [String] Defines the If-None-Match condition. The
    # delete operation will be performed only if the ETag of the zone on the
    # server does not match this value.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_delete_with_http_info(resource_group_name, zone_name, if_match = nil, if_none_match = nil, custom_headers = nil)
      begin_delete_async(resource_group_name, zone_name, if_match, if_none_match, custom_headers).value!
    end

    #
    # Removes a DNS zone from a resource group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param zone_name [String] The name of the zone without a terminating dot.
    # @param if_match [String] Defines the If-Match condition. The delete
    # operation will be performed only if the ETag of the zone on the server
    # matches this value.
    # @param if_none_match [String] Defines the If-None-Match condition. The
    # delete operation will be performed only if the ETag of the zone on the
    # server does not match this value.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_delete_async(resource_group_name, zone_name, if_match = nil, if_none_match = nil, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'zone_name is nil' if zone_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['If-Match'] = if_match unless if_match.nil?
      request_headers['If-None-Match'] = if_none_match unless if_none_match.nil?
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/dnszones/{zoneName}'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'zoneName' => zone_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {})
      }

      request_url = @base_url || @client.base_url

      request = MsRest::HttpOperationRequest.new(request_url, path_template, :delete, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 204 || status_code == 202 || status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = ZoneDeleteResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets a DNS zone.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param zone_name [String] The name of the zone without a terminating dot.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Zone] operation results.
    #
    def get(resource_group_name, zone_name, custom_headers = nil)
      response = get_async(resource_group_name, zone_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a DNS zone.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param zone_name [String] The name of the zone without a terminating dot.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, zone_name, custom_headers = nil)
      get_async(resource_group_name, zone_name, custom_headers).value!
    end

    #
    # Gets a DNS zone.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param zone_name [String] The name of the zone without a terminating dot.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, zone_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'zone_name is nil' if zone_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/dnszones/{zoneName}'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'zoneName' => zone_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {})
      }

      request_url = @base_url || @client.base_url

      request = MsRest::HttpOperationRequest.new(request_url, path_template, :get, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Zone.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Lists the DNS zones within a resource group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param top [String] Query parameters. If null is passed returns the default
    # number of zones.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ZoneListResult] which provide lazy access to pages of the response.
    #
    def list_in_resource_group_as_lazy(resource_group_name, top = nil, custom_headers = nil)
      response = list_in_resource_group_async(resource_group_name, top, custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_link|
          list_in_resource_group_next_async(next_link, custom_headers)
        end
        page
      end
    end

    #
    # Lists the DNS zones within a resource group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param top [String] Query parameters. If null is passed returns the default
    # number of zones.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<Zone>] operation results.
    #
    def list_in_resource_group(resource_group_name, top = nil, custom_headers = nil)
      first_page = list_in_resource_group_as_lazy(resource_group_name, top, custom_headers)
      first_page.get_all_items
    end

    #
    # Lists the DNS zones within a resource group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param top [String] Query parameters. If null is passed returns the default
    # number of zones.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_in_resource_group_with_http_info(resource_group_name, top = nil, custom_headers = nil)
      list_in_resource_group_async(resource_group_name, top, custom_headers).value!
    end

    #
    # Lists the DNS zones within a resource group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param top [String] Query parameters. If null is passed returns the default
    # number of zones.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_in_resource_group_async(resource_group_name, top = nil, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/dnszones'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id},
          query_params: {'$top' => top,'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {})
      }

      request_url = @base_url || @client.base_url

      request = MsRest::HttpOperationRequest.new(request_url, path_template, :get, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = ZoneListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Lists the DNS zones within a resource group.
    #
    # @param top [String] Query parameters. If null is passed returns the default
    # number of zones.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ZoneListResult] which provide lazy access to pages of the response.
    #
    def list_in_subscription_as_lazy(top = nil, custom_headers = nil)
      response = list_in_subscription_async(top, custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_link|
          list_in_subscription_next_async(next_link, custom_headers)
        end
        page
      end
    end

    #
    # Lists the DNS zones within a resource group.
    #
    # @param top [String] Query parameters. If null is passed returns the default
    # number of zones.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<Zone>] operation results.
    #
    def list_in_subscription(top = nil, custom_headers = nil)
      first_page = list_in_subscription_as_lazy(top, custom_headers)
      first_page.get_all_items
    end

    #
    # Lists the DNS zones within a resource group.
    #
    # @param top [String] Query parameters. If null is passed returns the default
    # number of zones.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_in_subscription_with_http_info(top = nil, custom_headers = nil)
      list_in_subscription_async(top, custom_headers).value!
    end

    #
    # Lists the DNS zones within a resource group.
    #
    # @param top [String] Query parameters. If null is passed returns the default
    # number of zones.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_in_subscription_async(top = nil, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/subscriptions/{subscriptionId}/providers/Microsoft.Network/dnszones'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id},
          query_params: {'$top' => top,'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {})
      }

      request_url = @base_url || @client.base_url

      request = MsRest::HttpOperationRequest.new(request_url, path_template, :get, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = ZoneListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Lists the DNS zones within a resource group.
    #
    # @param next_page_link [String] The NextLink from the previous successful
    # call to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ZoneListResult] operation results.
    #
    def list_in_resource_group_next(next_page_link, custom_headers = nil)
      response = list_in_resource_group_next_async(next_page_link, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists the DNS zones within a resource group.
    #
    # @param next_page_link [String] The NextLink from the previous successful
    # call to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_in_resource_group_next_with_http_info(next_page_link, custom_headers = nil)
      list_in_resource_group_next_async(next_page_link, custom_headers).value!
    end

    #
    # Lists the DNS zones within a resource group.
    #
    # @param next_page_link [String] The NextLink from the previous successful
    # call to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_in_resource_group_next_async(next_page_link, custom_headers = nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
          headers: request_headers.merge(custom_headers || {})
      }

      request_url = @base_url || @client.base_url

      request = MsRest::HttpOperationRequest.new(request_url, path_template, :get, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = ZoneListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Lists the DNS zones within a resource group.
    #
    # @param next_page_link [String] The NextLink from the previous successful
    # call to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ZoneListResult] operation results.
    #
    def list_in_subscription_next(next_page_link, custom_headers = nil)
      response = list_in_subscription_next_async(next_page_link, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists the DNS zones within a resource group.
    #
    # @param next_page_link [String] The NextLink from the previous successful
    # call to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_in_subscription_next_with_http_info(next_page_link, custom_headers = nil)
      list_in_subscription_next_async(next_page_link, custom_headers).value!
    end

    #
    # Lists the DNS zones within a resource group.
    #
    # @param next_page_link [String] The NextLink from the previous successful
    # call to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_in_subscription_next_async(next_page_link, custom_headers = nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
          headers: request_headers.merge(custom_headers || {})
      }

      request_url = @base_url || @client.base_url

      request = MsRest::HttpOperationRequest.new(request_url, path_template, :get, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = ZoneListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
