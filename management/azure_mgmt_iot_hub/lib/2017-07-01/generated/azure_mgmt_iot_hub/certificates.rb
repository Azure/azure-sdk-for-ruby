# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotHub::Mgmt::V2017_07_01
  #
  # Use this API to manage the IoT hubs in your Azure subscription.
  #
  class Certificates
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Certificates class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [IotHubClient] reference to the IotHubClient
    attr_reader :client

    #
    # Get the certificate list.
    #
    # Returns the list of certificates.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the IoT hub.
    # @param resource_name [String] The name of the IoT hub.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [CertificateListDescription] operation results.
    #
    def list_by_iot_hub(resource_group_name, resource_name, custom_headers = nil)
      response = list_by_iot_hub_async(resource_group_name, resource_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get the certificate list.
    #
    # Returns the list of certificates.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the IoT hub.
    # @param resource_name [String] The name of the IoT hub.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_iot_hub_with_http_info(resource_group_name, resource_name, custom_headers = nil)
      list_by_iot_hub_async(resource_group_name, resource_name, custom_headers).value!
    end

    #
    # Get the certificate list.
    #
    # Returns the list of certificates.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the IoT hub.
    # @param resource_name [String] The name of the IoT hub.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_iot_hub_async(resource_group_name, resource_name, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'resource_name is nil' if resource_name.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Devices/IotHubs/{resourceName}/certificates'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'resourceName' => resource_name},
          query_params: {'api-version' => @client.api_version},
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

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result.body = Azure::IotHub::Mgmt::V2017_07_01::Models::CertificateListDescription.new.from_json(parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Get the certificate.
    #
    # Returns the certificate.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the IoT hub.
    # @param resource_name [String] The name of the IoT hub.
    # @param certificate_name [String] The name of the certificate
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [CertificateDescription] operation results.
    #
    def get(resource_group_name, resource_name, certificate_name, custom_headers = nil)
      response = get_async(resource_group_name, resource_name, certificate_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get the certificate.
    #
    # Returns the certificate.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the IoT hub.
    # @param resource_name [String] The name of the IoT hub.
    # @param certificate_name [String] The name of the certificate
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, resource_name, certificate_name, custom_headers = nil)
      get_async(resource_group_name, resource_name, certificate_name, custom_headers).value!
    end

    #
    # Get the certificate.
    #
    # Returns the certificate.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the IoT hub.
    # @param resource_name [String] The name of the IoT hub.
    # @param certificate_name [String] The name of the certificate
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, resource_name, certificate_name, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'resource_name is nil' if resource_name.nil?
      fail ArgumentError, 'certificate_name is nil' if certificate_name.nil?
      fail ArgumentError, "'certificate_name' should satisfy the constraint - 'Pattern': '^[A-Za-z0-9-._]{1,64}$'" if !certificate_name.nil? && certificate_name.match(Regexp.new('^^[A-Za-z0-9-._]{1,64}$$')).nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Devices/IotHubs/{resourceName}/certificates/{certificateName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'resourceName' => resource_name,'certificateName' => certificate_name},
          query_params: {'api-version' => @client.api_version},
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

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result.body = Azure::IotHub::Mgmt::V2017_07_01::Models::CertificateDescription.new.from_json(parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Upload the certificate to the IoT hub.
    #
    # Adds new or replaces existing certificate.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the IoT hub.
    # @param resource_name [String] The name of the IoT hub.
    # @param certificate_name [String] The name of the certificate
    # @param certificate_description [CertificateBodyDescription] The certificate
    # body.
    # @param if_match [String] ETag of the Certificate. Do not specify for creating
    # a brand new certificate. Required to update an existing certificate.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [CertificateDescription] operation results.
    #
    def create_or_update(resource_group_name, resource_name, certificate_name, certificate_description, if_match = nil, custom_headers = nil)
      response = create_or_update_async(resource_group_name, resource_name, certificate_name, certificate_description, if_match, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Upload the certificate to the IoT hub.
    #
    # Adds new or replaces existing certificate.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the IoT hub.
    # @param resource_name [String] The name of the IoT hub.
    # @param certificate_name [String] The name of the certificate
    # @param certificate_description [CertificateBodyDescription] The certificate
    # body.
    # @param if_match [String] ETag of the Certificate. Do not specify for creating
    # a brand new certificate. Required to update an existing certificate.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(resource_group_name, resource_name, certificate_name, certificate_description, if_match = nil, custom_headers = nil)
      create_or_update_async(resource_group_name, resource_name, certificate_name, certificate_description, if_match, custom_headers).value!
    end

    #
    # Upload the certificate to the IoT hub.
    #
    # Adds new or replaces existing certificate.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the IoT hub.
    # @param resource_name [String] The name of the IoT hub.
    # @param certificate_name [String] The name of the certificate
    # @param certificate_description [CertificateBodyDescription] The certificate
    # body.
    # @param if_match [String] ETag of the Certificate. Do not specify for creating
    # a brand new certificate. Required to update an existing certificate.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(resource_group_name, resource_name, certificate_name, certificate_description, if_match = nil, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'resource_name is nil' if resource_name.nil?
      fail ArgumentError, 'certificate_name is nil' if certificate_name.nil?
      fail ArgumentError, "'certificate_name' should satisfy the constraint - 'Pattern': '^[A-Za-z0-9-._]{1,64}$'" if !certificate_name.nil? && certificate_name.match(Regexp.new('^^[A-Za-z0-9-._]{1,64}$$')).nil?
      fail ArgumentError, 'certificate_description is nil' if certificate_description.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['If-Match'] = if_match unless if_match.nil?
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_content = certificate_description.nil? ? nil: certificate_description.to_json
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Devices/IotHubs/{resourceName}/certificates/{certificateName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'resourceName' => resource_name,'certificateName' => certificate_name},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 201 || status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result.body = Azure::IotHub::Mgmt::V2017_07_01::Models::CertificateDescription.new.from_json(parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result.body = Azure::IotHub::Mgmt::V2017_07_01::Models::CertificateDescription.new.from_json(parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Delete an X509 certificate.
    #
    # Deletes an existing X509 certificate or does nothing if it does not exist.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the IoT hub.
    # @param resource_name [String] The name of the IoT hub.
    # @param certificate_name [String] The name of the certificate
    # @param if_match [String] ETag of the Certificate.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, resource_name, certificate_name, if_match, custom_headers = nil)
      response = delete_async(resource_group_name, resource_name, certificate_name, if_match, custom_headers).value!
      nil
    end

    #
    # Delete an X509 certificate.
    #
    # Deletes an existing X509 certificate or does nothing if it does not exist.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the IoT hub.
    # @param resource_name [String] The name of the IoT hub.
    # @param certificate_name [String] The name of the certificate
    # @param if_match [String] ETag of the Certificate.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, resource_name, certificate_name, if_match, custom_headers = nil)
      delete_async(resource_group_name, resource_name, certificate_name, if_match, custom_headers).value!
    end

    #
    # Delete an X509 certificate.
    #
    # Deletes an existing X509 certificate or does nothing if it does not exist.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the IoT hub.
    # @param resource_name [String] The name of the IoT hub.
    # @param certificate_name [String] The name of the certificate
    # @param if_match [String] ETag of the Certificate.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, resource_name, certificate_name, if_match, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'resource_name is nil' if resource_name.nil?
      fail ArgumentError, 'certificate_name is nil' if certificate_name.nil?
      fail ArgumentError, "'certificate_name' should satisfy the constraint - 'Pattern': '^[A-Za-z0-9-._]{1,64}$'" if !certificate_name.nil? && certificate_name.match(Regexp.new('^^[A-Za-z0-9-._]{1,64}$$')).nil?
      fail ArgumentError, 'if_match is nil' if if_match.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['If-Match'] = if_match unless if_match.nil?
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Devices/IotHubs/{resourceName}/certificates/{certificateName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'resourceName' => resource_name,'certificateName' => certificate_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 204
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Generate verification code for proof of possession flow.
    #
    # Generates verification code for proof of possession flow. The verification
    # code will be used to generate a leaf certificate.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the IoT hub.
    # @param resource_name [String] The name of the IoT hub.
    # @param certificate_name [String] The name of the certificate
    # @param if_match [String] ETag of the Certificate.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [CertificateWithNonceDescription] operation results.
    #
    def generate_verification_code(resource_group_name, resource_name, certificate_name, if_match, custom_headers = nil)
      response = generate_verification_code_async(resource_group_name, resource_name, certificate_name, if_match, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Generate verification code for proof of possession flow.
    #
    # Generates verification code for proof of possession flow. The verification
    # code will be used to generate a leaf certificate.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the IoT hub.
    # @param resource_name [String] The name of the IoT hub.
    # @param certificate_name [String] The name of the certificate
    # @param if_match [String] ETag of the Certificate.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def generate_verification_code_with_http_info(resource_group_name, resource_name, certificate_name, if_match, custom_headers = nil)
      generate_verification_code_async(resource_group_name, resource_name, certificate_name, if_match, custom_headers).value!
    end

    #
    # Generate verification code for proof of possession flow.
    #
    # Generates verification code for proof of possession flow. The verification
    # code will be used to generate a leaf certificate.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the IoT hub.
    # @param resource_name [String] The name of the IoT hub.
    # @param certificate_name [String] The name of the certificate
    # @param if_match [String] ETag of the Certificate.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def generate_verification_code_async(resource_group_name, resource_name, certificate_name, if_match, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'resource_name is nil' if resource_name.nil?
      fail ArgumentError, 'certificate_name is nil' if certificate_name.nil?
      fail ArgumentError, "'certificate_name' should satisfy the constraint - 'Pattern': '^[A-Za-z0-9-._]{1,64}$'" if !certificate_name.nil? && certificate_name.match(Regexp.new('^^[A-Za-z0-9-._]{1,64}$$')).nil?
      fail ArgumentError, 'if_match is nil' if if_match.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['If-Match'] = if_match unless if_match.nil?
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Devices/IotHubs/{resourceName}/certificates/{certificateName}/generateVerificationCode'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'resourceName' => resource_name,'certificateName' => certificate_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result.body = Azure::IotHub::Mgmt::V2017_07_01::Models::CertificateWithNonceDescription.new.from_json(parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Verify certificate's private key possession.
    #
    # Verifies the certificate's private key possession by providing the leaf cert
    # issued by the verifying pre uploaded certificate.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the IoT hub.
    # @param resource_name [String] The name of the IoT hub.
    # @param certificate_name [String] The name of the certificate
    # @param certificate_verification_body [CertificateVerificationDescription] The
    # name of the certificate
    # @param if_match [String] ETag of the Certificate.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [CertificateDescription] operation results.
    #
    def verify(resource_group_name, resource_name, certificate_name, certificate_verification_body, if_match, custom_headers = nil)
      response = verify_async(resource_group_name, resource_name, certificate_name, certificate_verification_body, if_match, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Verify certificate's private key possession.
    #
    # Verifies the certificate's private key possession by providing the leaf cert
    # issued by the verifying pre uploaded certificate.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the IoT hub.
    # @param resource_name [String] The name of the IoT hub.
    # @param certificate_name [String] The name of the certificate
    # @param certificate_verification_body [CertificateVerificationDescription] The
    # name of the certificate
    # @param if_match [String] ETag of the Certificate.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def verify_with_http_info(resource_group_name, resource_name, certificate_name, certificate_verification_body, if_match, custom_headers = nil)
      verify_async(resource_group_name, resource_name, certificate_name, certificate_verification_body, if_match, custom_headers).value!
    end

    #
    # Verify certificate's private key possession.
    #
    # Verifies the certificate's private key possession by providing the leaf cert
    # issued by the verifying pre uploaded certificate.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the IoT hub.
    # @param resource_name [String] The name of the IoT hub.
    # @param certificate_name [String] The name of the certificate
    # @param certificate_verification_body [CertificateVerificationDescription] The
    # name of the certificate
    # @param if_match [String] ETag of the Certificate.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def verify_async(resource_group_name, resource_name, certificate_name, certificate_verification_body, if_match, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'resource_name is nil' if resource_name.nil?
      fail ArgumentError, 'certificate_name is nil' if certificate_name.nil?
      fail ArgumentError, "'certificate_name' should satisfy the constraint - 'Pattern': '^[A-Za-z0-9-._]{1,64}$'" if !certificate_name.nil? && certificate_name.match(Regexp.new('^^[A-Za-z0-9-._]{1,64}$$')).nil?
      fail ArgumentError, 'certificate_verification_body is nil' if certificate_verification_body.nil?
      fail ArgumentError, 'if_match is nil' if if_match.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['If-Match'] = if_match unless if_match.nil?
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_content = certificate_verification_body.nil? ? nil: certificate_verification_body.to_json
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Devices/IotHubs/{resourceName}/certificates/{certificateName}/verify'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'resourceName' => resource_name,'certificateName' => certificate_name},
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
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result.body = Azure::IotHub::Mgmt::V2017_07_01::Models::CertificateDescription.new.from_json(parsed_response)
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
