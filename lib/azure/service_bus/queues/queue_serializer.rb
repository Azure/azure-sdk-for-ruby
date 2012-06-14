require "nokogiri"

module Azure
  module ServiceBus
    module Queues
      class QueueSerializer
        attr_accessor :properties

        # Please note that order IS important
        PROPERTIES = [
          'DefaultMessageTimeToLive',
          'DuplicateDetectionHistoryTimeWindow',
          'EnableBatchedOperations',
          'EnableDeadLetteringOnMessageExpiration',
          'ExtensionData',
          'IsReadOnly',
          'LockDuration',
          'MaxDeliveryCount',
          'MaxSizeInMegabytes',
          'MessageCount',
          'Path',
          'RequiresDuplicateDetection',
          'RequiresSession',
          'SizeInBytes'
        ].freeze

        def initialize(properties={})
          @properties = properties
          yield self if block_given?
        end

        def to_xml
          doc = Nokogiri::XML::Builder.new do |xml|
            xml.entry(:xmlns => 'http://www.w3.org/2005/Atom') {
              xml.content(:type => 'application/xml') {
                xml.QueueDescription('xmlns' => 'http://schemas.microsoft.com/netservices/2010/10/servicebus/connect', 'xmlns:i' => 'http://www.w3.org/2001/XMLSchema-instance') {
                  PROPERTIES.each do |p|
                    unless @properties[p].nil?
                      xml.send(p, @properties[p].to_s)
                    end
                  end
                }
              }
            }
          end
          doc.to_xml
        end
      end
    end
  end
end
