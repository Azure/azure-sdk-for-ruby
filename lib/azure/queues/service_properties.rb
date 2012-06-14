require "azure/queues"
require "azure/queues/uri"
require "azure/error"
require "uri"
require "nokogiri"

module Azure
  module Queues
    # Public: Representation of the Service Properties in a message queue.
    class ServiceProperties
      include Azure::ErrorHandler

      # Public: Instantiate a ServiceProperties from an XML entry.
      #
      # entry - An XML::Node element.
      #
      # Returns a Serviceproperties.
      def self.from_node(node)
        new() do |s|
          s.logging = Logging.from_node(node % "Logging")
          s.metrics = Metrics.from_node(node % "Metrics")
        end
      end

      # Public: Instantiate a message from an error object.
      #
      # error - An Azure::Error.
      #
      # Returns a Message.
      def self.from_error(error)
        message = new(nil)
        message.error = error
        message
      end

      attr_accessor :logging, :metrics

      # Public: Constructor.
      #
      # queue     - The message queue
      # service   - The Queue service to perform external calls.
      def initialize(service=Azure::Queues)
        @service = service
        @logging = Logging.new
        @metrics = Metrics.new
        yield self if block_given?
      end

      class Logging
        attr_accessor :version, :delete, :read, :write, :retention_policy

        def initialize
          @version = "1.0"
          @read = false
          @write = false
          @delete = false
          @retention_policy = RetentionPolicy.new
          yield self if block_given?
        end

        # Public: Instantiate a Logging from an XML entry.
        #
        # entry - An XML::Node element.
        #
        # Returns a Logging.
        def self.from_node(node)
          new() do |l|
            l.version           = (node % "Version").text
            l.read              = (node % "Read").text == "true"
            l.write             = (node % "Write").text == "true"
            l.delete            = (node % "Delete").text == "true"
            l.retention_policy  = RetentionPolicy.from_node(node % "RetentionPolicy")
          end
        end
      end

      class Metrics
        attr_accessor :version, :enabled, :include_apis, :retention_policy

        def initialize
          @version = "1.0"
          @enabled = false
          @include_apis = false
          @retention_policy = RetentionPolicy.new
          yield self if block_given?
        end

        # Public: Instantiate a Metrics from an XML entry.
        #
        # entry - An XML::Node element.
        #
        # Returns a Metrics.
        def self.from_node(node)
          new() do |m|
            m.version           = (node % "Version").text
            m.enabled           = (node % "Enabled").text == "true"
            m.include_apis      = (node % "IncludeAPIs").text == "true" unless (node % "IncludeAPIs").nil?
            m.retention_policy  = RetentionPolicy.from_node(node % "RetentionPolicy")
          end
        end
      end

      class RetentionPolicy
        attr_accessor :enabled, :days

        def initialize
          @enabled = false
          yield self if block_given?
        end

        # Public: Instantiate a RetentionPolicy from an XML entry.
        #
        # entry - An XML::Node element.
        #
        # Returns a RetentionPolicy.
        def self.from_node(node)
          new() do |m|
            m.enabled = (node % "Enabled").text == "true"
            m.days    = (node % "Days").text unless (node % "Days").nil?
          end
        end
      end

      def to_xml
        body = Nokogiri::XML::Builder.new do |xml|
          xml.StorageServiceProperties {
            xml.Logging {
              xml.Version logging.version
              xml.Delete logging.delete
              xml.Read logging.read
              xml.Write logging.write
              xml.RetentionPolicy {
                xml.Enabled logging.retention_policy.enabled
                xml.Days logging.retention_policy.days if logging.retention_policy.enabled
              }
            }
            xml.Metrics {
              xml.Version metrics.version
              xml.Enabled metrics.enabled
              xml.IncludeAPIs metrics.include_apis unless metrics.include_apis.nil?
              xml.RetentionPolicy {
                xml.Enabled metrics.retention_policy.enabled
                xml.Days metrics.retention_policy.days if metrics.retention_policy.enabled
              }
            }
          }
        end
        body.to_xml
      end
    end
  end
end
