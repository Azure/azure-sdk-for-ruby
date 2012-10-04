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

require 'azure/storage/service/enumeration_results'
require 'azure/storage/service/signed_identifier'
require 'azure/storage/service/access_policy'

module Azure
  module Storage
    module Service
      module Serialization
        module ClassMethods
          def signed_identifiers_from_xml(xml)
            xml = slopify(xml)
            expect_node("SignedIdentifiers", xml)

            identifiers = []
            return identifiers unless (xml > "SignedIdentifier").any?

            if xml.SignedIdentifier.count == 0
              identifiers.push(signed_identifier_from_xml(xml.SignedIdentifier))
            else
              xml.SignedIdentifier.each { |identifier_node| 
                identifiers.push(signed_identifier_from_xml(identifier_node))
              }
            end

            identifiers
          end

          def signed_identifiers_to_xml(signed_identifiers)
            builder = Nokogiri::XML::Builder.new do |xml|
              xml.SignedIdentifiers {
                signed_identifiers.each do |identifier|
                  xml.SignedIdentifier {
                    xml.Id identifier.id
                    xml.AccessPolicy {
                      xml.Start identifier.access_policy.start
                      xml.Expiry identifier.access_policy.expiry
                      xml.Permissions identifier.access_policy.permissions
                    }
                  }
                end
              }
            end
            builder.to_xml
          end

          def signed_identifier_from_xml(xml)
            xml = slopify(xml)
            expect_node("SignedIdentifier", xml)

            signed_identifier = SignedIdentifier.new
            signed_identifier.id = xml.Id.text if (xml > "Id").any?
            signed_identifier.access_policy = access_policy_from_xml(xml) if (xml > "AccessPolicy").any?

            signed_identifier
          end

          def access_policy_from_xml(xml)
            xml = slopify(xml)
            expect_node("AccessPolicy", xml)

            access_policy = AccessPolicy.new
            access_policy.start = xml.Start.text if (xml > "Start").any?
            access_policy.expiry = xml.Expiry.text if (xml > "Expiry").any?
            access_policy.permissions = xml.Permissions.text if (xml > "Permissions").any?

            access_policy
          end

          def enumeration_results_from_xml(xml, results)
            xml = slopify(xml)
            expect_node("EnumerationResults", xml)

            results = results || EnumerationResults.new; 

            results.max_results = xml.MaxResults.text.to_i if (xml > "MaxResults").any?
            results.next_marker = xml.NextMarker.text if (xml > "NextMarker").any?
            results.marker = xml.Marker.text.to_i if (xml > "Marker").any?
            results.prefix = xml.Prefix.text if (xml > "Prefix").any?
            
            results
          end

          def metadata_from_xml(xml)
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

          def metadata_from_headers(headers)
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

          def slopify(xml)
            (xml.is_a? String) ? Nokogiri.Slop(xml).root : xml 
          end

          def expect_node(node_name, xml)
            raise "Xml is not a #{node_name} node." unless xml.name == node_name
          end
        end

        extend ClassMethods
        
        def self.included( other )
          other.extend( ClassMethods )
        end
      end
    end
  end
end