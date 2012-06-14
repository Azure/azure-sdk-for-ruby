require "azure/core/signer"
require "uri"

module Azure
  module Blobs
    class SharedAccessSignature
      # Public: Build the signature generator.
      #
      # See this documentation link for further information on shared access
      # signatures:
      #
      # http://msdn.microsoft.com/en-us/library/windowsazure/ee395415.aspx
      #
      # permissions  - A valid permissions string.
      # from         - A Date or Time object in UTC.
      # to           - A Date or Time object in UTC.
      # account_name - The name of the storage account (optional, defaults to
      #                the one specified in the configuration).
      # signer       - A signer object (optional).
      def initialize(permissions, from, to, id=nil, account_name=Azure.config.account_name, signer=Core::Signer.new)
        @permissions = permissions
        @from = from.iso8601
        @to = to.iso8601
        @id = id
        @account_name = account_name
        @signer = signer
      end

      # Public: Build the URL for this resource including the shared access
      # signature.
      #
      # resource - Either a container or a blob.
      #
      # Returns a URI.
      def url(resource)
        url = resource.url.dup
        url.query = ::URI.encode_www_form(query_params(resource))
        url
      end

      # Get the hash of query parameters to use this signature.
      #
      # resource - Either a container or a blob.
      #
      # Returns a Hash with the following keys:
      # - st (start)
      # - se (expiry)
      # - sr (resource)
      # - sp (permissions)
      # - sig (signature)
      # - si (identifier) (optional)
      def query_params(resource)
        params = {
          "st" => @from,
          "se" => @to,
          "sr" => resource.resource_type,
          "sp" => @permissions,
        }
        params["si"] = @id if @id
        params["sig"] = signature(resource.url.path)
        params
      end

      # Generate the signature for a given resource.
      #
      # resource_path - A String with the URI path to this resource.
      #
      # Returns a signed string.
      def signature(resource_path)
        canonicalized_resource = File.join("/", @account_name, resource_path)

        string_to_sign = [
          @permissions,
          @from,
          @to,
          canonicalized_resource,
          @id
        ].join("\n")

        @signer.sign(string_to_sign)
      end
    end
  end
end
