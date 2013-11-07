require 'ostruct'

module Azure::Core::Model
  module Attributes
    extend Azure::Core::Concern

    def attributes
      @attributes ||= self.class.attributes.dup
      @attributes.each do |attribute|
        attribute.owner = self 
        attribute.value = self.send(attribute.name)
      end
      @attributes
    end

    class Attribute < OpenStruct
      def xml_tag
        self.xml_tag || Azure::Refine::String(self.name).camelize
      end

      def xml_tag_value
        self.xml_tag_value ? self.xml_tag_value.call(self.value) : self.value
      end
    end

    module ClassMethods

      def attributes
        @attributes ||= []
      end

      def attribute_names
        attributes.keys
      end

      def attribute(name, options = {}, &block)
        attr_accessor name
        attributes << Attribute.new(options.merge(name: name))
      end

      def has_attribute_type(type_name)
        class_eval <<-METHODS
          def self.#{type_name}_attribute_names
            @#{type_name}_attribute_names ||= []
          end

          def self.#{type_name}_attribute name, options = {}, &block
            attribute(name, options, &block)
            #{type_name}_attribute_names << name.to_sym
          end
        METHODS
      end

    end
  end
end
