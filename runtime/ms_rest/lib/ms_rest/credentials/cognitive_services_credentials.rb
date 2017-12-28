# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

module MsRest
  #
  # Class that provides access to authentication token.
  #
  class CognitiveServicesCredentials < ServiceClientCredentials

    private

    # @return [String] the subscription key
    attr_reader :subscription_key

    public

    #
    # Creates and initialize new instance of the ApplicationTokenProvider class.
    # @param subscription_key [String] subscription key
    def initialize(subscription_key)    
      fail ArgumentError, 'Subscription key cannot be nil' if subscription_key.nil?
      @subscription_key = subscription_key
    end

    def sign_request(request)
      super(request)

      if (request.respond_to?(:request_headers))
        request.request_headers['Ocp-Apim-Subscription-Key'] = @subscription_key
        request.request_headers['X-BingApis-SDK-Client'] = 'ruby-SDK'
      elsif request.respond_to?(:headers)
        request.headers['Ocp-Apim-Subscription-Key'] = @subscription_key
        request.headers['X-BingApis-SDK-Client'] = 'ruby-SDK'
      else
        fail ArgumentError, 'Incorrect request object was provided'
      end
    end
  end

end
