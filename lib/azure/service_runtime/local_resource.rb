module Azure
  module ServiceRuntime
    class LocalResource
      attr_accessor :name, :path, :size
      alias :maximumSizeInMegabytes :size
      alias :root_path :path

      def initialize(node)
        self.name = node["name"]
        self.path = node["path"]
        self.size = node["sizeInMB"].to_i
      end
    end
  end
end
