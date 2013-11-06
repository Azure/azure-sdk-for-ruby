module Azure::Core::Xml
  module Convertertable
    extend Azure::Core::Concern

    def to_xml
      builder = Nokogiri::XML::Builder.new do |xml|
        xml.send(self.class.xml_root, 'xmlns'=>'http://schemas.microsoft.com/windowsazure') do
          self.attributes.each do |attribute|
            xml.send(attribute.xml_tag, attribute.xml_value)
          end
        end
      end
      builder.doc.to_xml
    end

    module ClassMethods

      def xml_root(root_tag_name = nil)
        @root_tag_name ||= root_tag_name
      end

      def collection_xml_root(collection_xml_root_name = nil)
        @collection_xml_root_name ||= collection_xml_root_name
      end

      def from_xml(xml)
        object = self.new
        self.attributes.each do |a| 
          object.send("#{a.name}=", xml_content(xml, a.xml_tag))
        end
        object
      end

      def from_collection_xml(xml)
        nodes = xml.css(collection_xml_root)
        nodes.map do |node|
          self.from_xml(node)
        end
      end

    end

  end
end