module Azure
  module Service
    class Cors 
      def initialize
        yield self if block_given?
      end

      attr_accessor :cors_rules
    end
  end
end
