#-------------------------------------------------------------------------
# # Copyright (c) Microsoft and contributors. All rights reserved.
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

require 'azure/service/enumeration_results'
require 'azure/service/signed_identifier'
require 'azure/service/access_policy'

require 'azure/service/storage_service_properties'
require 'azure/service/logging'
require 'azure/service/metrics'
require 'azure/service/retention_policy'
require 'azure/service/cors'
require 'azure/service/cors_rule'

module Azure
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

          SignedIdentifier.new do |identifier|
            identifier.id = xml.Id.text if (xml > "Id").any?
            identifier.access_policy = access_policy_from_xml(xml.AccessPolicy) if (xml > "AccessPolicy").any?
          end
        end

        def access_policy_from_xml(xml)
          xml = slopify(xml)
          expect_node("AccessPolicy", xml)

          AccessPolicy.new do |policy|
            policy.start = xml.Start.text if (xml > "Start").any?
            policy.expiry = xml.Expiry.text if (xml > "Expiry").any?
            policy.permission = xml.Permission.text if (xml > "Permission").any?
          end
        end

        def enumeration_results_from_xml(xml, results)
          xml = slopify(xml)
          expect_node("EnumerationResults", xml)

          results = results || EnumerationResults.new; 

          results.continuation_token = xml.NextMarker.text if (xml > "NextMarker").any?
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

          RetentionPolicy.new do |policy|
            policy.enabled = to_bool(xml.Enabled.text) if (xml > "Enabled").any?
            policy.days = xml.Days.text.to_i if (xml > "Days").any?
          end
        end

        def metrics_to_xml_children(metrics, xml)
          xml.Version metrics.version if metrics.version
          xml.Enabled metrics.enabled unless metrics.enabled == nil
          xml.IncludeAPIs metrics.include_apis unless metrics.include_apis == nil
          retention_policy_to_xml(metrics.retention_policy, xml) if metrics.retention_policy
        end

        def hour_metrics_to_xml(metrics, xml)
          xml.HourMetrics { 
            metrics_to_xml_children(metrics, xml)
          }
        end

        def minute_metrics_to_xml(metrics, xml)
          xml.MinuteMetrics { 
            metrics_to_xml_children(metrics, xml)
          }
        end

        def metrics_from_xml(xml)
          xml = slopify(xml)

          Metrics.new do |metrics|
            metrics.version = xml.Version.text if (xml > "Version").any?
            metrics.enabled = to_bool(xml.Enabled.text) if (xml > "Enabled").any?
            metrics.include_apis = to_bool(xml.IncludeAPIs.text) if (xml > "IncludeAPIs").any?
            metrics.retention_policy = retention_policy_from_xml(xml.RetentionPolicy)
          end
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

          Logging.new do |logging|
            logging.version = xml.Version.text if (xml > "Version").any?
            logging.delete = to_bool(xml.Delete.text) if (xml > "Delete").any?
            logging.read = to_bool(xml.Read.text) if (xml > "Read").any?
            logging.write = to_bool(xml.Write.text) if (xml > "Write").any?
            logging.retention_policy = retention_policy_from_xml(xml.RetentionPolicy)
          end
        end

        def cors_to_xml(cors, xml)
          xml.Cors {
            cors.cors_rules.to_a.each do |cors_rule|
              cors_rule_to_xml(cors_rule, xml)
            end
          }
        end

        def cors_rule_to_xml(cors_rule, xml)
          xml.CorsRule {
            xml.AllowedOrigins cors_rule.allowed_origins.join(",") if cors_rule.allowed_origins
            xml.AllowedMethods cors_rule.allowed_methods.join(",") if cors_rule.allowed_methods
            xml.MaxAgeInSeconds cors_rule.max_age_in_seconds if cors_rule.max_age_in_seconds
            xml.ExposedHeaders cors_rule.exposed_headers.join(",") if cors_rule.exposed_headers
            xml.AllowedHeaders cors_rule.allowed_headers.join(",") if cors_rule.allowed_headers
          }
        end

        def cors_from_xml(xml)
          xml = slopify(xml)
          expect_node("Cors", xml)

          Cors.new do |cors|
            cors.cors_rules = xml.children.to_a.map {|child| cors_rule_from_xml(child)}
          end
        end

        def cors_rule_from_xml(xml)
          xml = slopify(xml)
          expect_node("CorsRule", xml)

          CorsRule.new do |cors_rule|
            cors_rule.allowed_origins =  ary_from_node(xml.AllowedOrigins) if (xml > "AllowedOrigins").any?
            cors_rule.allowed_methods =  ary_from_node(xml.AllowedMethods) if (xml > "AllowedMethods").any?
            cors_rule.max_age_in_seconds = xml.MaxAgeInSeconds.text.to_i if (xml > "MaxAgeInSeconds").any?
            cors_rule.exposed_headers = ary_from_node(xml.ExposedHeaders) if (xml > "ExposedHeaders").any?
            cors_rule.allowed_headers = ary_from_node(xml.AllowedHeaders) if (xml > "AllowedHeaders").any?
          end
        end

        def ary_from_node(node)
          node.text.split(",").map {|s| s.strip}
        end
        
        def service_properties_to_xml(properties)
          builder = Nokogiri::XML::Builder.new(:encoding => 'utf-8') do |xml|
            xml.StorageServiceProperties {
              xml.DefaultServiceVersion(properties.default_service_version) if properties.default_service_version
              logging_to_xml(properties.logging, xml) if properties.logging
              hour_metrics_to_xml(properties.hour_metrics, xml) if properties.hour_metrics
              minute_metrics_to_xml(properties.minute_metrics, xml) if properties.minute_metrics
              cors_to_xml(properties.cors, xml) if properties.cors
            }
          end
          builder.to_xml
        end

        def service_properties_from_xml(xml)
          xml = slopify(xml)
          expect_node("StorageServiceProperties", xml)

          StorageServiceProperties.new do |props|
            props.default_service_version = xml.DefaultServiceVersion.text if (xml > "DefaultServiceVersion").any?
            props.logging = logging_from_xml(xml.Logging)
            props.hour_metrics = metrics_from_xml(xml.HourMetrics)
            props.minute_metrics = metrics_from_xml(xml.MinuteMetrics)
            props.cors = cors_from_xml(xml.Cors)
          end
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