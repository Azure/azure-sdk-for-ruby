module Azure
  class Client
    include Azure::Configurable
    include Azure::HttpClient
    include Azure::ClientServices

    def initialize(options = {})
      Azure::Configurable.keys.each do |key|
        instance_variable_set(:"@#{key}", options[key] || Azure.instance_variable_get(:"@#{key}"))
      end
    end

    # Check if this client is configured with the same options
    def same_options?(opts)
      opts.hash == options.hash
    end
  end
end