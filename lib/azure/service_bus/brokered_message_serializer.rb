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
require "azure/core/utils/string"
require "json"
require "time"
require "uri"
require "extlib_lite"

module Azure
  module ServiceBus
    class BrokeredMessageSerializer

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
          attr_name = p.underscore
          value = @message.send(attr_name)
          hash[p] = value unless value.nil?
        end
        hash.to_json
      end

      # Build a hash based on message properties and ensure
      # the values are in a valid format for HTTP headers
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
