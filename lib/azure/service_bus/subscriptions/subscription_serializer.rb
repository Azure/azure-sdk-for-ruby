require "nokogiri"
require "azure/service_bus/subscriptions/subscription"

module Azure
  module ServiceBus
    module Subscriptions
      # Public: Serialize a Subscription to/from XML.
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/hh780763
      class SubscriptionSerializer
        MAPPINGS = {
          LockDuration:                              :lock_duration,
          RequiresSession:                           :requires_session,
          DefaultMessageTimeToLive:                  :default_ttl,
          DeadLetteringOnMessageExpiration:          :keep_expired,
          DeadLetteringOnFilterEvaluationExceptions: :keep_on_errors
        }.freeze

        # Public: Parse an AtomPub fragment and return a Subscription from it.
        #
        # xml - A String.
        #
        # Returns a Subscription.
        def self.parse(xml)
          body = Nokogiri::XML(xml)
          body.remove_namespaces!

          name = (body % "title").text

          Subscription.new(name) do |sub|
            MAPPINGS.each do |tag, method|
              tag = (body % tag.to_s)

              if sub.respond_to?("#{method}=") && tag
                sub.send("#{method}=", tag.text)
              end
            end

            yield sub if block_given?
          end
        end

        attr :object

        # Public: Initialize the serializer
        #
        # subscription - A Subscription.
        def initialize(subscription)
          @subscription = subscription
        end

        # Public: Generate an XML that represents the subscription.
        #
        # xml - A Nokogiri::XML::Builder.
        #
        # Returns a String.
        def to_xml(xml=Nokogiri::XML::Builder.new)
          xml.entry(xmlns: "http://www.w3.org/2005/Atom") do |xml|
            xml.content(type: "application/xml") do |xml|
              xml.SubscriptionDescription("xmlns" => "http://schemas.microsoft.com/netservices/2010/10/servicebus/connect", "xmlns:i" => "http://www.w3.org/2001/XMLSchema-instance") do |xml|
                MAPPINGS.each do |tag, method|
                  property = @subscription.send(method)
                  xml.send(tag, property.to_s) unless property.nil?
                end
              end
            end
          end

          xml.to_xml
        end
      end
    end
  end
end
