module Azure
  module VirtualMachine
    class Image < Azure::Core::Resource
      required_attribute :os_type, xml_tag: "OS"
      required_attribute :name
      required_attribute :category
      required_attribute :locations

      attribute :eula
      attribute :description
      attribute :image_family
      attribute :published_date
      attribute :is_premium
      attribute :show_in_gui
      attribute :privacy_uri
      attribute :icon_uri
      attribute :recommended_vm_size, xml_tag: "RecommendedVMSize"
      attribute :small_icon_uri
      attribute :language

      xml_root 'OSImage'
      collection_xml_root 'Images'
    end
  end
end
