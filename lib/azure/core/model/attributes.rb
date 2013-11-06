module Azure::Core::Model
  module Attributes
    extend Azure::Core::Concern

    def attributes
      @attributes = {}
      class.attribute_names.each { |attribute_name| @attributes[attribute_name.to_sym] = self.send(attribute_name) }
      @attributes
    end

    class Attribute
      attr_accessor :options
      def initialize(options)
        self.options = options
      end
    end

    module ClassMethods

      def attributes
        @attributes ||= {}
      end

      def attribute_names
        attributes.keys
      end

      def attribute(name, options = {}, &block)
        attr_accessor name
        attributes[name.to_sym] << Attribute.new(options)
      end

      def has_attribute_type(type_name)
        class_eval <<-METHODS
          def self.#{type_name}_attribute_names
            @#{type_name}_attribute_names ||= {}
          end

          def self.#{type_name}_attribute name, options = {}, &block
            attr = attribute(name, options, &block)
            #{type_name}_attribute_names << attr.to_sym
          end
        METHODS
      end

    end
  end
end
