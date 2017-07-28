# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  #
  # Network Client
  #
  class DefaultSecurityRules

    #
    # Creates and initializes a new instance of the DefaultSecurityRules class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [NetworkManagementClient] reference to the NetworkManagementClient
    attr_reader :client

    #
    # Gets all default security rules in a network security group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param network_security_group_name [String] The name of the network security
    # group.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SecurityRuleListResult] operation results.
    #
    def list(resource_group_name, network_security_group_name, custom_headers = nil)
      response = list_async(resource_group_name, network_security_group_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets all default security rules in a network security group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param network_security_group_name [String] The name of the network security
    # group.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_group_name, network_security_group_name, custom_headers = nil)
      list_async(resource_group_name, network_security_group_name, custom_headers).value!
    end

    #
    # Gets all default security rules in a network security group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param network_security_group_name [String] The name of the network security
    # group.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_group_name, network_security_group_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'network_security_group_name is nil' if network_security_group_name.nil?
      api_version = '2017-06-01'
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityGroups/{networkSecurityGroupName}/defaultSecurityRules'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'networkSecurityGroupName' => network_security_group_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => api_version},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::Network::Models::SecurityRuleListResult.mapper()
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
    # Get the specified default network security rule.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param network_security_group_name [String] The name of the network security
    # group.
    # @param default_security_rule_name [String] The name of the default security
    # rule.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SecurityRule] operation results.
    #
    def get(resource_group_name, network_security_group_name, default_security_rule_name, custom_headers = nil)
      response = get_async(resource_group_name, network_security_group_name, default_security_rule_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get the specified default network security rule.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param network_security_group_name [String] The name of the network security
    # group.
    # @param default_security_rule_name [String] The name of the default security
    # rule.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, network_security_group_name, default_security_rule_name, custom_headers = nil)
      get_async(resource_group_name, network_security_group_name, default_security_rule_name, custom_headers).value!
    end

    #
    # Get the specified default network security rule.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param network_security_group_name [String] The name of the network security
    # group.
    # @param default_security_rule_name [String] The name of the default security
    # rule.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, network_security_group_name, default_security_rule_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'network_security_group_name is nil' if network_security_group_name.nil?
      fail ArgumentError, 'default_security_rule_name is nil' if default_security_rule_name.nil?
      api_version = '2017-06-01'
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityGroups/{networkSecurityGroupName}/defaultSecurityRules/{defaultSecurityRuleName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'networkSecurityGroupName' => network_security_group_name,'defaultSecurityRuleName' => default_security_rule_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => api_version},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::Network::Models::SecurityRule.mapper()
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
