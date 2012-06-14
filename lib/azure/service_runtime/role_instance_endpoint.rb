module Azure
  module ServiceRuntime
    class RoleInstanceEndpoint
      attr_accessor :name, :address, :port, :protocol

      def initialize(node)
        self.name = node["name"]
        self.address = node["address"]
        self.port = node["port"].to_i
        self.protocol = node["protocol"]
      end
    end
  end
end
