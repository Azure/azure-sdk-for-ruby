require "azure/core/service"

module Azure
  module ServiceBus
    class ServiceBusService < Core::Service
      def initialize(signer=Azure::ServiceBus::Auth::Wrap.new)
        super(signer, Azure::ServiceBus::Auth::Authorizer.new)
      end

      def call(method, uri, body=nil)
        super(method, uri, body) do |request|
          request.headers.delete("x-ms-date")
          request.headers.delete("x-ms-version")
          request.headers.delete("DataServiceVersion")
          request.headers.delete("MaxDataServiceVersion")

          yield request if block_given?
        end
      end
    end
  end
end
