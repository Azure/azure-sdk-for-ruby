require "nokogiri"

module Azure
  module ServiceBus
    module Topics
      class TopicSerializer
        attr_accessor :properties

        PROPERTIES = [
          'MaxSizeInMegabytes',
          'SizeInBytes',
          'DefaultMessageTimeToLive',
          'RequiresDuplicateDetection',
          'DuplicateDetectionHistoryTimeWindow',
          'MaximumNumberOfSubscriptions',
          'EnableBatchedOperations',
          'DeadLetteringOnFilterEvaluationExceptions'
        ].freeze

        def initialize(properties={})
          @properties = properties
          yield self if block_given?
        end

        def to_xml(builder=Nokogiri::XML::Builder)
          doc = builder.new do |xml|
            xml.entry(:xmlns => 'http://www.w3.org/2005/Atom') {
              xml.content(:type => 'application/xml') {
                xml.TopicDescription('xmlns' => 'http://schemas.microsoft.com/netservices/2010/10/servicebus/connect', 'xmlns:i' => 'http://www.w3.org/2001/XMLSchema-instance') {
                  PROPERTIES.each do |p|
                    if prop = @properties.fetch(p, nil)
                      xml.send(p, prop)
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
