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
module Azure
  module ServiceBus
    class BrokeredMessage

      # Please read http://msdn.microsoft.com/en-us/library/windowsazure/hh780742
      # for more information on brokered message properties

      # Public: Get/Set the ContentType of the message
      #
      # Returns a String
      attr_accessor :content_type

      # Public: Get/Set the CorrelationID of the message
      #
      # Returns a String
      attr_accessor :correlation_id

      # Public: Get/Set the SessionID of the message
      #
      # Returns a String
      attr_accessor :session_id

      # Public: Get/Set the DeliveryCount of the message
      #
      # Returns an Integer
      attr_accessor :delivery_count

      # Public: Get/Set the LockedUntilUtc for the message
      #
      # Returns a DateTime
      attr_accessor :locked_until_utc

      # Public: Get/Set the LockToken of the message 
      #
      # Returns a String (GUID)
      attr_accessor :lock_token

      # Public: Get/Set the MessageID of the message
      #
      # Returns a String
      attr_accessor :message_id
      alias_method :id, :message_id

      # Public: Get/Set the Label for the message
      #
      # Returns a String
      attr_accessor :label

      # Public: Get/Set the ReplyTo for the message 
      #
      # Returns a String
      attr_accessor :reply_to

      # Public: Get/Set the EnqueuedTimeUtc for the message
      #
      # Returns a DateTime
      attr_accessor :enqueued_time_utc

      # Public: Get/Set the SequenceNumber for the message 
      #
      # Returns an Integer
      attr_accessor :sequence_number

      # Public: Get/Set the TimeToLive for the message 
      #
      # Returns an Integer
      attr_accessor :time_to_live

      # Public: Get/Set the To field for the message
      #
      # Returns a String
      attr_accessor :to

      # Public: Get/Set the ScheduledEnqueueTimeUtc for the message 
      #
      # Returns a DateTime
      attr_accessor :scheduled_enqueue_time_utc

      # Public: Get/Set the ReplyToSessionId for the message 
      #
      # Returns a String
      attr_accessor :reply_to_session_id

      # Public: Get/Set custom key-value properties of the message
      #
      # Returns a Hash
      attr_accessor :properties

      # Public: Get/Set the body of the message
      #
      # Returns a String
      attr_accessor :body

      # Public: Get/Set the URI of the locked message. This URI is needed to unlock or delete the message
      #
      # Returns an URI
      attr_accessor :location

      # Public: Constructor.
      #
      # body        - String. The body of the message
      # properties  - Hash. The properties of the message (optional)
      def initialize(body, properties={})
        @body = body
        @properties = properties
        yield self if block_given?
      end
    end
  end
end