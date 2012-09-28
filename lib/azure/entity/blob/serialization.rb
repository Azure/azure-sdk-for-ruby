#-------------------------------------------------------------------------
# Copyright 2012 Microsoft Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#--------------------------------------------------------------------------
require 'nokogiri'

require 'azure/entity/blob/enumeration_results'

require 'azure/entity/blob/container_enumeration_results'
require 'azure/entity/blob/container'
require 'azure/entity/blob/container_properties'

require 'azure/entity/blob/signed_identifier'
require 'azure/entity/blob/access_policy'


module Azure
  module Entity
    module Blob
      module Serialization

        def self.container_enumeration_results_from_xml(xml)
          xml = slopify(xml)
          expect_node("EnumerationResults", xml)

          results = enumeration_results_from_xml(xml, ContainerEnumerationResults.new)
          results.account_name = xml["AccountName"]
          
          return results unless (xml > "Containers").any? && ((xml > "Containers") > "Container").any?

          xml.Containers.Container.each { |container_node|
              results.containers.push(container_from_xml(container_node))
          }

          results
        end

        def self.container_from_xml(xml)
          xml = slopify(xml)
          expect_node("Container", xml)

          container = Container.new
          container.name = xml.Name.text if (xml > "Name").any?
          container.url = xml.Url.text if (xml > "Url").any?
          container.properties = container_properties_from_xml(xml.Properties) if (xml > "Properties").any?
          container.metadata = metadata_from_xml(xml.Metadata) if (xml > "Metadata").any?

          container
        end

        def self.container_from_headers(headers)
          container = Container.new
          container.properties = container_properties_from_headers(headers)
          container.visibility = visibility_from_headers(headers)
          container.metadata = metadata_from_headers(headers)

          container
        end

        def self.container_properties_from_xml(xml)
          xml = slopify(xml)
          expect_node("Properties", xml)

          properties = ContainerProperties.new 
          properties.last_modified = (xml > "Last-Modified").text if (xml > "Last-Modified").any?
          properties.etag = xml.Etag.text if (xml > "Etag").any?
          properties.lease_status = xml.LeaseStatus.text if (xml > "LeaseStatus").any?
          properties.lease_state = xml.LeaseState.text if (xml > "LeaseState").any?
          properties.lease_duration = xml.LeaseDuration.text if (xml > "LeaseDuration").any?

          properties
        end

        def self.container_properties_from_headers(headers)
          properties = ContainerProperties.new
          properties.last_modified = headers["Last-Modified"] 
          properties.etag = headers["Etag"]
          properties.lease_status = headers["x-ms-lease-status"]
          properties.lease_state = headers["x-ms-lease-state"]
          properties.lease_duration = headers["x-ms-lease-duration"]

          properties
        end

        def self.visibility_from_headers(headers)
          headers["x-ms-blob-public-access"]
        end

        def self.signed_identifiers_from_xml(xml)
          xml = slopify(xml)
          expect_node("SignedIdentifiers", xml)

          identifiers = []
          return identifiers unless (xml > "SignedIdentifier").any?

          xml.SignedIdentifier.each { |identifier_node| 
            identifiers.push(signed_identifier_from_xml(identifier_node))
          }
          identifiers
        end

        def self.signed_identifier_from_xml(xml)
          xml = slopify(xml)
          expect_node("SignedIdentifier", xml)

          signed_identifier = SignedIdentifier.new
          signed_identifier.id = xml.Id.text if (xml > "Id").any?
          signed_identifier.access_policy = access_policy_from_xml(xml) if (xml > "AccessPolicy").any?

          signed_identifier
        end

        def self.access_policy_from_xml(xml)
          xml = slopify(xml)
          expect_node("AccessPolicy", xml)

          access_policy = AccessPolicy.new
          access_policy.start = xml.Start.text if (xml > "Start").any?
          access_policy.expiry = xml.Expiry.text if (xml > "Expiry").any?
          access_policy.permissions = xml.Permissions.text if (xml > "Permissions").any?

          access_policy
        end


        def self.enumeration_results_from_xml(xml, results)
          xml = slopify(xml)
          expect_node("EnumerationResults", xml)

          results = results || EnumerationResults.new; 

          results.max_results = xml.MaxResults.text.to_i if (xml > "MaxResults").any?
          results.next_marker = xml.NextMarker.text if (xml > "NextMarker").any?
          results.marker = xml.Marker.text.to_i if (xml > "Marker").any?
          results.prefix = xml.Prefix.text if (xml > "Prefix").any?
          
          results
        end

        def self.metadata_from_xml(xml)
          xml = slopify(xml)
          expect_node("Metadata", xml)

          metadata = {}

          xml.children.each { |meta_node|
            if metadata.has_key? meta_node.name 
              metadata[meta_node.name] = [metadata[meta_node.name]] unless metadata[meta_node.name].respond_to? :push
              metadata[meta_node.name].push(meta_node.text)
            else
              metadata[meta_node.name] = meta_node.text
            end
          }
          metadata
        end

        def self.metadata_from_headers(headers)
          metadata = {}

          headers.each { |k, v| 
            if key = k[/^x-ms-meta-(.*)/, 1]
              if metadata.has_key? key 
                metadata[key] = [metadata[key]] unless metadata[key].respond_to? :push
                metadata[key].push(v)
              else
                metadata[key] = v
              end
            end
          }

          metadata
        end

        def self.slopify(xml)
          (xml.is_a? String) ? Nokogiri.Slop(xml).root : xml 
        end

        def self.expect_node(node_name, xml)
          raise "Xml is not a #{node_name} node." unless xml.name == node_name
        end
      end
    end
  end
end