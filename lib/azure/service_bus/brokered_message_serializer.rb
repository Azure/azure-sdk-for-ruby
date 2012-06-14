require "azure/core/utils/string"
require "json"
require "time"
require "uri"

module Azure
  module ServiceBus
    class BrokeredMessageSerializer
      include Azure::Core::Utils::String

      PROPERTIES = [
        'ContentType',
        'CorrelationId',
        'SessionID',
        'DeliveryCount',
        'LockedUntilUtc',
        'LockToken',
        'MessageId',
        'Label',
        'ReplyTo',
        'EnqueuedTimeUtc',
        'SequenceNumber',
        'TimeToLive',
        'To',
        'ScheduledEnqueueTimeUtc',
        'ReplyToSessionId'
      ].freeze

      attr :message

      def initialize(msg)
        @message = msg
      end

      def self.get_from_http_response(response)
        props = JSON.parse(response.headers['brokerproperties'])
        BrokeredMessage.new(response.body) do |m|
          m.location                    = URI(response.headers['location']) unless response.headers['location'].nil?
          m.content_type                = response.headers['content-type']

          # String based properties
          m.lock_token                  = props['LockToken']
          m.message_id                  = props['MessageId']
          m.label                       = props['Label']
          m.to                          = props['To']
          m.session_id                  = props['SessionID']
          m.correlation_id              = props['CorrelationId']
          m.reply_to                    = props['ReplyTo']
          m.reply_to                    = props['ReplyTo']
          m.reply_to_session_id         = props['ReplyToSessionId']

          # Time based properties
          m.locked_until_utc            = Time.parse(props['LockedUntilUtc']) unless props['LockedUntilUtc'].nil?
          m.enqueued_time_utc           = Time.parse(props['EnqueuedTimeUtc']) unless props['EnqueuedTimeUtc'].nil?
          m.scheduled_enqueue_time_utc  = Time.parse(props['ScheduledEnqueueTimeUtc']) unless props['ScheduledEnqueueTimeUtc'].nil?

          # Numeric based properties
          m.delivery_count              = props['DeliveryCount'].to_i
          m.sequence_number             = props['SequenceNumber'].to_i
          m.time_to_live                = props['TimeToLive'].to_f

          # Custom Properties
          header_names_black_list = [
            'brokerproperties',
            'date',
            'transfer-encoding',
            'location',
            'server',
            'connection',
            'content-type'
          ]
          props = response.headers.reject {|k,_| header_names_black_list.include?(k.downcase) }
          props.each do |prop_name, value|
            m.properties[prop_name] = value.gsub(/"/, '')
          end
        end
      end

      # Serialize the message's attributes to JSON
      #
      # Returns a JSON String
      def to_json
        hash = {}
        PROPERTIES.each do |p|
          attr_name = underscore(p)
          value = @message.send(attr_name)
          hash[p] = value unless value.nil?
        end
        hash.to_json
      end

      # Build a hash based on message properties and make it
      # compliant with Azure policy for Message Property values
      # in HTTP headers
      #
      # Returns a Hash
      def get_property_headers
        hash = {}
        @message.properties.each do |name, value|
          val = value
          # Check for an RFC2626 Date
          begin
            val = '"' + Time.parse(value).httpdate + '"'
          rescue ArgumentError
            val = '"' + value + '"' if value.is_a? String
          end
          hash[name] = val
        end
        hash
      end
    end
  end
end
