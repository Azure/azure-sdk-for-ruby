module Azure
  module VirtualMachine
    class Image < Azure::Core::Resource
      required_attribute :os_type, xml_tag: "OS"
      required_attribute :name
      required_attribute :category
      required_attribute :locations

      xml_root 'OSImage'
      collection_xml_root 'Images'
    end
  end
end
