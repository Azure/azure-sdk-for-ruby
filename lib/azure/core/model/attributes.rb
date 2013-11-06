module Azure::Core::Model
  module Attributes
    extend Azure::Core::Concern

    def attributes
      @attributes ||= self.class.attributes.dup
      @attributes.each do |attribute| 
        attribute.value = self.send(attribute.name)
      end
      @attributes
    end

    class Attribute < OpenStruct
      def xml_tag
        self.xml_tag || self.name.camelize
      end

      def xml_tag_value
        if self.xml_tag_value
          self.xml_tag_value
        else 
          self.value
        end
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
