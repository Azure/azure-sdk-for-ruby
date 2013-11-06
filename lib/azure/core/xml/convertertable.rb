module Azure::Core::Xml
  module Convertertable
    extend Azure::Core::Concern

    def to_xml


      self.attributes

    end

    module ClassMethods

      def xml_root(header_name)

      end

      def from_xml
        virtual_machine_images = imageXML.css('Images OSImage')
        virtual_machine_images.each do |image_node|
          image = Azure::VirtualMachine::Image.new
          image.os_type = xml_content(image_node, 'OS')
          image.name = xml_content(image_node, 'Name')
          image.category = xml_content(image_node, 'Category')
          image.locations = xml_content(image_node, 'Location')
          os_images << image
        end
        os_images
      end

    end

  end
end