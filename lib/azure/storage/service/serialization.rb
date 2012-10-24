#-------------------------------------------------------------------------
# Copyright (c) Microsoft. All rights reserved.
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

require 'azure/storage/service/storage_service_properties'
require 'azure/storage/service/logging'
require 'azure/storage/service/metrics'
require 'azure/storage/service/retention_policy'

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
            builder = Nokogiri::XML::Builder.new(:encoding=>"utf-8") do |xml|
              xml.SignedIdentifiers {
                signed_identifiers.each do |identifier|
                  xml.SignedIdentifier {
                    xml.Id identifier.id
                    xml.AccessPolicy {
                      xml.Start identifier.access_policy.start
                      xml.Expiry identifier.access_policy.expiry
                      xml.Permission identifier.access_policy.permission
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
            signed_identifier.access_policy = access_policy_from_xml(xml.AccessPolicy) if (xml > "AccessPolicy").any?

            signed_identifier
          end

          def access_policy_from_xml(xml)
            xml = slopify(xml)
            expect_node("AccessPolicy", xml)

            access_policy = AccessPolicy.new
            access_policy.start = xml.Start.text if (xml > "Start").any?
            access_policy.expiry = xml.Expiry.text if (xml > "Expiry").any?
            access_policy.permission = xml.Permission.text if (xml > "Permission").any?

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

              key = meta_node.name.downcase
              if metadata.has_key? key 
                metadata[key] = [metadata[key]] unless metadata[key].respond_to? :push
                metadata[key].push(meta_node.text)
              else
                metadata[key] = meta_node.text
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

          def retention_policy_to_xml(retention_policy, xml)
            xml.RetentionPolicy {
                xml.Enabled retention_policy.enabled unless retention_policy.enabled == nil
                xml.Days retention_policy.days if retention_policy.days
              }
          end

          def retention_policy_from_xml(xml)
            xml = slopify(xml)
            expect_node("RetentionPolicy", xml)

            retention_policy = RetentionPolicy.new
            retention_policy.enabled = to_bool(xml.Enabled.text) if (xml > "Enabled").any?
            retention_policy.days = xml.Days.text.to_i if (xml > "Days").any?

            retention_policy
          end

          def metrics_to_xml(metrics, xml)
            xml.Metrics { 
              xml.Version metrics.version if metrics.version
              xml.Enabled metrics.enabled unless metrics.enabled == nil
              xml.IncludeAPIs metrics.include_apis unless metrics.include_apis == nil
              retention_policy_to_xml(metrics.retention_policy, xml) if metrics.retention_policy
            }
          end

          def metrics_from_xml(xml)
            xml = slopify(xml)
            expect_node("Metrics", xml)

            metrics = Metrics.new
            metrics.version = xml.Version.text if (xml > "Version").any?
            metrics.enabled = to_bool(xml.Enabled.text) if (xml > "Enabled").any?
            metrics.include_apis = to_bool(xml.IncludeAPIs.text) if (xml > "IncludeAPIs").any?
            metrics.retention_policy = retention_policy_from_xml(xml.RetentionPolicy)

            metrics
          end

          def logging_to_xml(logging, xml)
            xml.Logging { 
              xml.Version logging.version if logging.version
              xml.Delete logging.delete unless logging.delete == nil
              xml.Read logging.read unless logging.read == nil
              xml.Write logging.write unless logging.write == nil
              retention_policy_to_xml(logging.retention_policy, xml) if logging.retention_policy
            }
          end

          def logging_from_xml(xml)
            xml = slopify(xml)
            expect_node("Logging", xml)

            logging = Logging.new
            logging.version = xml.Version.text if (xml > "Version").any?
            logging.delete = to_bool(xml.Delete.text) if (xml > "Delete").any?
            logging.read = to_bool(xml.Read.text) if (xml > "Read").any?
            logging.write = to_bool(xml.Write.text) if (xml > "Write").any?
            logging.retention_policy = retention_policy_from_xml(xml.RetentionPolicy)

            logging
          end
          
          def service_properties_to_xml(properties)
            builder = Nokogiri::XML::Builder.new(:encoding => 'utf-8') do |xml|
              xml.StorageServiceProperties {
                logging_to_xml(properties.logging, xml) if properties.logging
                metrics_to_xml(properties.metrics, xml) if properties.metrics
                xml.DefaultServiceVersion properties.default_service_version if properties.default_service_version
              }
            end
            builder.to_xml
          end

          def service_properties_from_xml(xml)
            xml = slopify(xml)
            expect_node("StorageServiceProperties", xml)

            properties = StorageServiceProperties.new
            properties.default_service_version = xml.DefaultServiceVersion.text if (xml > "DefaultServiceVersion").any?
            properties.logging = logging_from_xml(xml.Logging)
            properties.metrics = metrics_from_xml(xml.Metrics)

            properties
          end

          def to_bool(s)
            (s || "").downcase == 'true'
          end

          def slopify(xml)
            node = (xml.is_a? String) ? Nokogiri.Slop(xml).root : xml
            node.slop! if node.is_a? Nokogiri::XML::Document unless node.respond_to? :method_missing
            node = node.root if node.is_a? Nokogiri::XML::Document
            node
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