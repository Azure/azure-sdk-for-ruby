# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'ms_rest'
require 'ms_rest_azure'

module Azure::ARM
  autoload :Client,                           'azure_sdk/client'
  autoload :Configurable,                     'azure_sdk/configurable'
  autoload :Default,                          'azure_sdk/default'

  class << self
    include Azure::ARM::Configurable

    # API client based on configured options {Configurable}
    #
    # @return [Azure::Client] API wrapper
    def client(options = {})
      @client = Azure::ARM::Client.new(options) unless defined?(@client) && @client.same_options?(options)
      @client
    end

    private

    def method_missing(method_name, *args, &block)
      return super unless client.respond_to?(method_name)
      client.send(method_name, *args, &block)
    end
  end
end
