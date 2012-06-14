require "azure/configuration"

module Azure
  class Auth
    # The account name.
    attr :account_name

    # Public: Initialize the Auth object.
    #
    # account_name - A String with the Azure account's name. Defaults to the one
    #                in the global configuration.
    def initialize(account_name=Azure.config.account_name)
      @account_name = account_name
    end

    # Public: Signs an HTTP request before it's made, by adding the
    # Authorization header.
    #
    # request - An Azure::Request that hasn't been signed.
    # signer  - A signing strategy, such as Azure::Table::Auth::SharedKey.
    #
    # Returns the modified request.
    def sign(request, signer)
      signature = signer.sign(request.method, request.uri, request.headers)
      request.headers["Authorization"] = "#{signer.name} #{account_name}:#{signature}"
      request
    end
  end
end
