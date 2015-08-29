module Azure
  module Service
    class CorsRule
      def initialize
        yield self if block_given?
      end

      attr_accessor :allowed_origins
      attr_accessor :allowed_methods
      attr_accessor :max_age_in_seconds
      attr_accessor :exposed_headers
      attr_accessor :allowed_headers
    end
  end
end
