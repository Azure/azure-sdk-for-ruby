# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_03_01
  #
  # Recommendations
  #
  class Recommendations
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Recommendations class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [WebSiteManagementClient] reference to the WebSiteManagementClient
    attr_reader :client

    #
    # List all recommendations for a subscription.
    #
    # List all recommendations for a subscription.
    #
    # @param featured [Boolean] Specify <code>true</code> to return only the most
    # critical recommendations. The default is <code>false</code>, which returns
    # all recommendations.
    # @param filter [String] Filter is specified by using OData syntax. Example:
    # $filter=channels eq 'Api' or channel eq 'Notification' and startTime eq
    # '2014-01-01T00:00:00Z' and endTime eq '2014-12-31T23:59:59Z' and timeGrain eq
    # duration'[PT1H|PT1M|P1D]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array] operation results.
    #
    def list(featured = nil, filter = nil, custom_headers = nil)
      response = list_async(featured, filter, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # List all recommendations for a subscription.
    #
    # List all recommendations for a subscription.
    #
    # @param featured [Boolean] Specify <code>true</code> to return only the most
    # critical recommendations. The default is <code>false</code>, which returns
    # all recommendations.
    # @param filter [String] Filter is specified by using OData syntax. Example:
    # $filter=channels eq 'Api' or channel eq 'Notification' and startTime eq
    # '2014-01-01T00:00:00Z' and endTime eq '2014-12-31T23:59:59Z' and timeGrain eq
    # duration'[PT1H|PT1M|P1D]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(featured = nil, filter = nil, custom_headers = nil)
      list_async(featured, filter, custom_headers).value!
    end

    #
    # List all recommendations for a subscription.
    #
    # List all recommendations for a subscription.
    #
    # @param featured [Boolean] Specify <code>true</code> to return only the most
    # critical recommendations. The default is <code>false</code>, which returns
    # all recommendations.
    # @param filter [String] Filter is specified by using OData syntax. Example:
    # $filter=channels eq 'Api' or channel eq 'Notification' and startTime eq
    # '2014-01-01T00:00:00Z' and endTime eq '2014-12-31T23:59:59Z' and timeGrain eq
    # duration'[PT1H|PT1M|P1D]
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(featured = nil, filter = nil, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.Web/recommendations'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id},
          query_params: {'featured' => featured,'api-version' => @client.api_version},
          skip_encoding_query_params: {'$filter' => filter},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = {
              required: false,
              serialized_name: 'parsed_response',
              type: {
                name: 'Sequence',
                element: {
                    required: false,
                    serialized_name: 'RecommendationElementType',
                    type: {
                      name: 'Composite',
                      class_name: 'Recommendation'
                    }
                }
              }
            }
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Reset all recommendation opt-out settings for a subscription.
    #
    # Reset all recommendation opt-out settings for a subscription.
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def reset_all_filters(custom_headers = nil)
      response = reset_all_filters_async(custom_headers).value!
      nil
    end

    #
    # Reset all recommendation opt-out settings for a subscription.
    #
    # Reset all recommendation opt-out settings for a subscription.
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def reset_all_filters_with_http_info(custom_headers = nil)
      reset_all_filters_async(custom_headers).value!
    end

    #
    # Reset all recommendation opt-out settings for a subscription.
    #
    # Reset all recommendation opt-out settings for a subscription.
    #
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def reset_all_filters_async(custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.Web/recommendations/reset'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 204
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Get past recommendations for an app, optionally specified by the time range.
    #
    # Get past recommendations for an app, optionally specified by the time range.
    #
    # @param resource_group_name [String] Name of the resource group to which the
    # resource belongs.
    # @param site_name [String] Name of the app.
    # @param filter [String] Filter is specified by using OData syntax. Example:
    # $filter=channels eq 'Api' or channel eq 'Notification' and startTime eq
    # '2014-01-01T00:00:00Z' and endTime eq '2014-12-31T23:59:59Z' and timeGrain eq
    # duration'[PT1H|PT1M|P1D]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array] operation results.
    #
    def list_history_for_web_app(resource_group_name, site_name, filter = nil, custom_headers = nil)
      response = list_history_for_web_app_async(resource_group_name, site_name, filter, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get past recommendations for an app, optionally specified by the time range.
    #
    # Get past recommendations for an app, optionally specified by the time range.
    #
    # @param resource_group_name [String] Name of the resource group to which the
    # resource belongs.
    # @param site_name [String] Name of the app.
    # @param filter [String] Filter is specified by using OData syntax. Example:
    # $filter=channels eq 'Api' or channel eq 'Notification' and startTime eq
    # '2014-01-01T00:00:00Z' and endTime eq '2014-12-31T23:59:59Z' and timeGrain eq
    # duration'[PT1H|PT1M|P1D]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_history_for_web_app_with_http_info(resource_group_name, site_name, filter = nil, custom_headers = nil)
      list_history_for_web_app_async(resource_group_name, site_name, filter, custom_headers).value!
    end

    #
    # Get past recommendations for an app, optionally specified by the time range.
    #
    # Get past recommendations for an app, optionally specified by the time range.
    #
    # @param resource_group_name [String] Name of the resource group to which the
    # resource belongs.
    # @param site_name [String] Name of the app.
    # @param filter [String] Filter is specified by using OData syntax. Example:
    # $filter=channels eq 'Api' or channel eq 'Notification' and startTime eq
    # '2014-01-01T00:00:00Z' and endTime eq '2014-12-31T23:59:59Z' and timeGrain eq
    # duration'[PT1H|PT1M|P1D]
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_history_for_web_app_async(resource_group_name, site_name, filter = nil, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'site_name is nil' if site_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{siteName}/recommendationHistory'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'siteName' => site_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          skip_encoding_query_params: {'$filter' => filter},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = {
              required: false,
              serialized_name: 'parsed_response',
              type: {
                name: 'Sequence',
                element: {
                    required: false,
                    serialized_name: 'RecommendationElementType',
                    type: {
                      name: 'Composite',
                      class_name: 'Recommendation'
                    }
                }
              }
            }
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Get all recommendations for an app.
    #
    # Get all recommendations for an app.
    #
    # @param resource_group_name [String] Name of the resource group to which the
    # resource belongs.
    # @param site_name [String] Name of the app.
    # @param featured [Boolean] Specify <code>true</code> to return only the most
    # critical recommendations. The default is <code>false</code>, which returns
    # all recommendations.
    # @param filter [String] Return only channels specified in the filter. Filter
    # is specified by using OData syntax. Example: $filter=channels eq 'Api' or
    # channel eq 'Notification'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array] operation results.
    #
    def list_recommended_rules_for_web_app(resource_group_name, site_name, featured = nil, filter = nil, custom_headers = nil)
      response = list_recommended_rules_for_web_app_async(resource_group_name, site_name, featured, filter, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get all recommendations for an app.
    #
    # Get all recommendations for an app.
    #
    # @param resource_group_name [String] Name of the resource group to which the
    # resource belongs.
    # @param site_name [String] Name of the app.
    # @param featured [Boolean] Specify <code>true</code> to return only the most
    # critical recommendations. The default is <code>false</code>, which returns
    # all recommendations.
    # @param filter [String] Return only channels specified in the filter. Filter
    # is specified by using OData syntax. Example: $filter=channels eq 'Api' or
    # channel eq 'Notification'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_recommended_rules_for_web_app_with_http_info(resource_group_name, site_name, featured = nil, filter = nil, custom_headers = nil)
      list_recommended_rules_for_web_app_async(resource_group_name, site_name, featured, filter, custom_headers).value!
    end

    #
    # Get all recommendations for an app.
    #
    # Get all recommendations for an app.
    #
    # @param resource_group_name [String] Name of the resource group to which the
    # resource belongs.
    # @param site_name [String] Name of the app.
    # @param featured [Boolean] Specify <code>true</code> to return only the most
    # critical recommendations. The default is <code>false</code>, which returns
    # all recommendations.
    # @param filter [String] Return only channels specified in the filter. Filter
    # is specified by using OData syntax. Example: $filter=channels eq 'Api' or
    # channel eq 'Notification'
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_recommended_rules_for_web_app_async(resource_group_name, site_name, featured = nil, filter = nil, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'site_name is nil' if site_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{siteName}/recommendations'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'siteName' => site_name,'subscriptionId' => @client.subscription_id},
          query_params: {'featured' => featured,'api-version' => @client.api_version},
          skip_encoding_query_params: {'$filter' => filter},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = {
              required: false,
              serialized_name: 'parsed_response',
              type: {
                name: 'Sequence',
                element: {
                    required: false,
                    serialized_name: 'RecommendationElementType',
                    type: {
                      name: 'Composite',
                      class_name: 'Recommendation'
                    }
                }
              }
            }
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Disable all recommendations for an app.
    #
    # Disable all recommendations for an app.
    #
    # @param resource_group_name [String] Name of the resource group to which the
    # resource belongs.
    # @param site_name [String] Name of the app.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def disable_all_for_web_app(resource_group_name, site_name, custom_headers = nil)
      response = disable_all_for_web_app_async(resource_group_name, site_name, custom_headers).value!
      nil
    end

    #
    # Disable all recommendations for an app.
    #
    # Disable all recommendations for an app.
    #
    # @param resource_group_name [String] Name of the resource group to which the
    # resource belongs.
    # @param site_name [String] Name of the app.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def disable_all_for_web_app_with_http_info(resource_group_name, site_name, custom_headers = nil)
      disable_all_for_web_app_async(resource_group_name, site_name, custom_headers).value!
    end

    #
    # Disable all recommendations for an app.
    #
    # Disable all recommendations for an app.
    #
    # @param resource_group_name [String] Name of the resource group to which the
    # resource belongs.
    # @param site_name [String] Name of the app.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def disable_all_for_web_app_async(resource_group_name, site_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'site_name is nil' if site_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{siteName}/recommendations/disable'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'siteName' => site_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 204
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Reset all recommendation opt-out settings for an app.
    #
    # Reset all recommendation opt-out settings for an app.
    #
    # @param resource_group_name [String] Name of the resource group to which the
    # resource belongs.
    # @param site_name [String] Name of the app.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def reset_all_filters_for_web_app(resource_group_name, site_name, custom_headers = nil)
      response = reset_all_filters_for_web_app_async(resource_group_name, site_name, custom_headers).value!
      nil
    end

    #
    # Reset all recommendation opt-out settings for an app.
    #
    # Reset all recommendation opt-out settings for an app.
    #
    # @param resource_group_name [String] Name of the resource group to which the
    # resource belongs.
    # @param site_name [String] Name of the app.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def reset_all_filters_for_web_app_with_http_info(resource_group_name, site_name, custom_headers = nil)
      reset_all_filters_for_web_app_async(resource_group_name, site_name, custom_headers).value!
    end

    #
    # Reset all recommendation opt-out settings for an app.
    #
    # Reset all recommendation opt-out settings for an app.
    #
    # @param resource_group_name [String] Name of the resource group to which the
    # resource belongs.
    # @param site_name [String] Name of the app.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def reset_all_filters_for_web_app_async(resource_group_name, site_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'site_name is nil' if site_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{siteName}/recommendations/reset'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'siteName' => site_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 204
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Get a recommendation rule for an app.
    #
    # Get a recommendation rule for an app.
    #
    # @param resource_group_name [String] Name of the resource group to which the
    # resource belongs.
    # @param site_name [String] Name of the app.
    # @param name [String] Name of the recommendation.
    # @param update_seen [Boolean] Specify <code>true</code> to update the
    # last-seen timestamp of the recommendation object.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [RecommendationRule] operation results.
    #
    def get_rule_details_by_web_app(resource_group_name, site_name, name, update_seen = nil, custom_headers = nil)
      response = get_rule_details_by_web_app_async(resource_group_name, site_name, name, update_seen, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get a recommendation rule for an app.
    #
    # Get a recommendation rule for an app.
    #
    # @param resource_group_name [String] Name of the resource group to which the
    # resource belongs.
    # @param site_name [String] Name of the app.
    # @param name [String] Name of the recommendation.
    # @param update_seen [Boolean] Specify <code>true</code> to update the
    # last-seen timestamp of the recommendation object.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_rule_details_by_web_app_with_http_info(resource_group_name, site_name, name, update_seen = nil, custom_headers = nil)
      get_rule_details_by_web_app_async(resource_group_name, site_name, name, update_seen, custom_headers).value!
    end

    #
    # Get a recommendation rule for an app.
    #
    # Get a recommendation rule for an app.
    #
    # @param resource_group_name [String] Name of the resource group to which the
    # resource belongs.
    # @param site_name [String] Name of the app.
    # @param name [String] Name of the recommendation.
    # @param update_seen [Boolean] Specify <code>true</code> to update the
    # last-seen timestamp of the recommendation object.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_rule_details_by_web_app_async(resource_group_name, site_name, name, update_seen = nil, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'site_name is nil' if site_name.nil?
      fail ArgumentError, 'name is nil' if name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{siteName}/recommendations/{name}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'siteName' => site_name,'name' => name,'subscriptionId' => @client.subscription_id},
          query_params: {'updateSeen' => update_seen,'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Web::Mgmt::V2016_03_01::Models::RecommendationRule.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
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
