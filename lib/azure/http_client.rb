module Azure
  module HttpClient

    # Creates a new management request for the current configuration
    # @param method           [Symbol] the HTTP method
    # @param path             [URI] the path to the management resource
    # @param options_or_body  [Hash|Body] options which can include body
    def management_request(method, path, options_or_body = {})
      options_or_body ||= {}
      options = if options_or_body.is_a?(Hash)
                  options_or_body
                else
                  {body: options_or_body}
                end
      BaseManagement::ManagementHttpRequest.new(method, path, {config: self}.merge(options))
    end

    # Returns the http agent based on uri
    # @param uri  [URI|String] the base uri (scheme, host, port) of the http endpoint
    # @return [Net::HTTP] http agent for a given uri
    def agents(uri)
      uri = URI.parse(uri) if uri.is_a?(String)
      key = uri.scheme.to_s + uri.host.to_s + uri.port.to_s
      @agents ||= {}
      unless @agents.key?(key)
        @agents[key] = build_http(uri)
      end
      @agents[key]
    end

    # Empties all the http agents
    def reset_agents!
      @agents = nil
    end

    private

    def build_http(uri = nil)
      if ENV['HTTP_PROXY'] || ENV['HTTPS_PROXY']
        if ENV['HTTP_PROXY']
          proxy_uri = URI::parse(ENV['HTTP_PROXY'])
        else
          proxy_uri = URI::parse(ENV['HTTPS_PROXY'])
        end

        Net::HTTP::Proxy(proxy_uri.host, proxy_uri.port).new(uri.host, uri.port)
      else
        Net::HTTP.new(uri.host, uri.port)
      end
    end

  end
end