require 'nokogiri'

module Azure
  module Core
    module Utils
      class StorageServiceProperties

        REQUIRED_ELEMENTS = {
          "Version" => true,
          "Delete" => true,
          "Read" => true,
          "Write" => true,
          "Enabled" => true,
          "RetentionPolicy / Enabled" => true,
          "RetentionPolicy / Days" => true,
          "IncludeAPIs" => "Metrics"
        }

        def self.hash_to_xml(hash)
          doc = Nokogiri::XML::Document.new
          doc.encoding = "utf-8"
          root = Nokogiri::XML::Node.new("StorageServiceProperties", doc)
          iterate_hash(hash, root, doc)
          doc << root
          validate(doc)
          doc
        end

        def self.hash_to_xml_string(hash)
          hash_to_xml(hash).to_xml
        end

        def self.xml_string_to_hash(xml)
          doc = Nokogiri::XML.parse(xml)
          iterate_node(doc)["StorageServiceProperties"]
        end

        private

        def self.iterate_node(node)
          node.children.each_with_object({}) do |node, hash|

            next if !node.element?

            if node.children.size == 1
              hash[node.name] = node.text
            else
              hash[node.name] = iterate_node(node)
            end
          end
        end

        def self.iterate_hash(hash, root, doc)
          hash.each do |key, value|
            if value.is_a?(Hash)
              node = Nokogiri::XML::Node.new(key, doc)
              iterate_hash(value, node, doc)
              root << node
            else
              node = Nokogiri::XML::Node.new(key, doc)
              node.content = value
              root << node
            end
          end
        end

        def self.validate(doc)
          missing_keys = []

          REQUIRED_ELEMENTS.each do |key,value|
            if value == true
              missing_keys << key if (doc / key).empty?
            elsif (doc / value).empty? || (doc / key).empty?
              missing_keys << key
            end
          end

          raise StandardError, "StorageServicePropertiesMissing", missing_keys if !missing_keys.empty?
        end
      end
    end
  end
end
