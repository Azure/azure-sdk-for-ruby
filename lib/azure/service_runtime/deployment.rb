module Azure
  module ServiceRuntime
    class Deployment
      attr_accessor :name, :is_emulated
      alias :is_emulated? :is_emulated

      def initialize(node)
        self.name = node["id"]
        self.is_emulated = node["emulated"] == "true"
      end

      # Public: Retrieves the deployment identifier.
      #
      # Returns an integer that identifies the current deployment.
      def id
        if /\((?<deployment_id>\d+)\)/i =~ self.name
          return deployment_id.to_i
        end

        nil
      end
    end
  end
end
