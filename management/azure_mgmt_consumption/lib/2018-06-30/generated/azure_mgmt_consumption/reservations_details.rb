# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2018_06_30
  #
  # Consumption management client provides access to consumption resources for
  # Azure Enterprise Subscriptions.
  #
  class ReservationsDetails
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ReservationsDetails class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ConsumptionManagementClient] reference to the ConsumptionManagementClient
    attr_reader :client

    #
    # Lists the reservations details for provided date range.
    #
    # @param reservation_order_id [String] Order Id of the reservation
    # @param filter [String] Filter reservation details by date range. The
    # properties/UsageDate for start date and end date. The filter supports 'le'
    # and  'ge'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<ReservationDetail>] operation results.
    #
    def list_by_reservation_order(reservation_order_id, filter, custom_headers:nil)
      first_page = list_by_reservation_order_as_lazy(reservation_order_id, filter, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Lists the reservations details for provided date range.
    #
    # @param reservation_order_id [String] Order Id of the reservation
    # @param filter [String] Filter reservation details by date range. The
    # properties/UsageDate for start date and end date. The filter supports 'le'
    # and  'ge'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_reservation_order_with_http_info(reservation_order_id, filter, custom_headers:nil)
      list_by_reservation_order_async(reservation_order_id, filter, custom_headers:custom_headers).value!
    end

    #
    # Lists the reservations details for provided date range.
    #
    # @param reservation_order_id [String] Order Id of the reservation
    # @param filter [String] Filter reservation details by date range. The
    # properties/UsageDate for start date and end date. The filter supports 'le'
    # and  'ge'
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_reservation_order_async(reservation_order_id, filter, custom_headers:nil)
      fail ArgumentError, 'reservation_order_id is nil' if reservation_order_id.nil?
      fail ArgumentError, 'filter is nil' if filter.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'providers/Microsoft.Capacity/reservationorders/{reservationOrderId}/providers/Microsoft.Consumption/reservationDetails'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'reservationOrderId' => reservation_order_id},
          query_params: {'$filter' => filter,'api-version' => @client.api_version},
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
            result_mapper = Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationDetailsListResult.mapper()
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
    # Lists the reservations details for provided date range.
    #
    # @param reservation_order_id [String] Order Id of the reservation
    # @param reservation_id [String] Id of the reservation
    # @param filter [String] Filter reservation details by date range. The
    # properties/UsageDate for start date and end date. The filter supports 'le'
    # and  'ge'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<ReservationDetail>] operation results.
    #
    def list_by_reservation_order_and_reservation(reservation_order_id, reservation_id, filter, custom_headers:nil)
      first_page = list_by_reservation_order_and_reservation_as_lazy(reservation_order_id, reservation_id, filter, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Lists the reservations details for provided date range.
    #
    # @param reservation_order_id [String] Order Id of the reservation
    # @param reservation_id [String] Id of the reservation
    # @param filter [String] Filter reservation details by date range. The
    # properties/UsageDate for start date and end date. The filter supports 'le'
    # and  'ge'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_reservation_order_and_reservation_with_http_info(reservation_order_id, reservation_id, filter, custom_headers:nil)
      list_by_reservation_order_and_reservation_async(reservation_order_id, reservation_id, filter, custom_headers:custom_headers).value!
    end

    #
    # Lists the reservations details for provided date range.
    #
    # @param reservation_order_id [String] Order Id of the reservation
    # @param reservation_id [String] Id of the reservation
    # @param filter [String] Filter reservation details by date range. The
    # properties/UsageDate for start date and end date. The filter supports 'le'
    # and  'ge'
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_reservation_order_and_reservation_async(reservation_order_id, reservation_id, filter, custom_headers:nil)
      fail ArgumentError, 'reservation_order_id is nil' if reservation_order_id.nil?
      fail ArgumentError, 'reservation_id is nil' if reservation_id.nil?
      fail ArgumentError, 'filter is nil' if filter.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'providers/Microsoft.Capacity/reservationorders/{reservationOrderId}/reservations/{reservationId}/providers/Microsoft.Consumption/reservationDetails'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'reservationOrderId' => reservation_order_id,'reservationId' => reservation_id},
          query_params: {'$filter' => filter,'api-version' => @client.api_version},
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
            result_mapper = Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationDetailsListResult.mapper()
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
    # Lists the reservations details for provided date range.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ReservationDetailsListResult] operation results.
    #
    def list_by_reservation_order_next(next_page_link, custom_headers:nil)
      response = list_by_reservation_order_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists the reservations details for provided date range.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_reservation_order_next_with_http_info(next_page_link, custom_headers:nil)
      list_by_reservation_order_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Lists the reservations details for provided date range.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_reservation_order_next_async(next_page_link, custom_headers:nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
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
            result_mapper = Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationDetailsListResult.mapper()
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
    # Lists the reservations details for provided date range.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ReservationDetailsListResult] operation results.
    #
    def list_by_reservation_order_and_reservation_next(next_page_link, custom_headers:nil)
      response = list_by_reservation_order_and_reservation_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists the reservations details for provided date range.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_reservation_order_and_reservation_next_with_http_info(next_page_link, custom_headers:nil)
      list_by_reservation_order_and_reservation_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Lists the reservations details for provided date range.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_reservation_order_and_reservation_next_async(next_page_link, custom_headers:nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
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
            result_mapper = Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationDetailsListResult.mapper()
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
    # Lists the reservations details for provided date range.
    #
    # @param reservation_order_id [String] Order Id of the reservation
    # @param filter [String] Filter reservation details by date range. The
    # properties/UsageDate for start date and end date. The filter supports 'le'
    # and  'ge'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ReservationDetailsListResult] which provide lazy access to pages of
    # the response.
    #
    def list_by_reservation_order_as_lazy(reservation_order_id, filter, custom_headers:nil)
      response = list_by_reservation_order_async(reservation_order_id, filter, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_reservation_order_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

    #
    # Lists the reservations details for provided date range.
    #
    # @param reservation_order_id [String] Order Id of the reservation
    # @param reservation_id [String] Id of the reservation
    # @param filter [String] Filter reservation details by date range. The
    # properties/UsageDate for start date and end date. The filter supports 'le'
    # and  'ge'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ReservationDetailsListResult] which provide lazy access to pages of
    # the response.
    #
    def list_by_reservation_order_and_reservation_as_lazy(reservation_order_id, reservation_id, filter, custom_headers:nil)
      response = list_by_reservation_order_and_reservation_async(reservation_order_id, reservation_id, filter, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_reservation_order_and_reservation_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end
