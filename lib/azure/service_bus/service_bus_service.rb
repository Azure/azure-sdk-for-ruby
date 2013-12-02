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
require 'azure/core/signed_service'
require 'azure/service_bus/auth/wrap_signer'
require 'azure/service_bus/serialization'

require 'azure/service_bus/brokered_message_serializer'
require 'azure/core/http/http_response'

module Azure
  module ServiceBus
    class ServiceBusService < Azure::Core::SignedService

      DEFAULT_TIMEOUT = 60

      def initialize(host=Azure.config.service_bus_host)
        super(Azure::ServiceBus::Auth::WrapSigner.new)
          @host = host
          
          with_filter do |req, res| 
            req.headers.delete "x-ms-date"
            req.headers.delete "x-ms-version"
            req.headers.delete "DataServiceVersion"
            req.headers.delete "MaxDataServiceVersion"
            res.call
          end
      end

      # Creates a new queue. Once created, this queue's resource manifest is immutable. 
      # 
      # ==== Attributes
      #
      # * +queue+        - Azure::ServiceBus::Queue instance to create on server, or a string of the queue name
      # * +options+      - Hash. The queue properties. 
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:default_message_time_to_live+                - XML datetime. Determines how long a message lives in the associated subscriptions.
      # * +:duplicate_detection_history_time_window+     - XML datetime. Specifies the time span during which the Service Bus will detect message duplication.
      # * +:enable_batched_operations+                   - Boolean. Enables or disables service side batching behavior when performing operations for the specific queue.
      # * +:dead_lettering_on_message_expiration:+       - Boolean. This field controls how the Service Bus handles a message whose TTL has expired.
      # * +:lock_duration+                               - XML datetime. Determines the amount of time in seconds in which a message should be locked for processing by a receiver.
      # * +:max_delivery_count+                          - Number. A message is automatically deadlettered after this number of deliveries.
      # * +:max_size_in_megabytes+                       - Number. Specifies the maximum topic size in megabytes
      # * +:message_count+                               - Number. Displays the number of messages currently in the queue.
      # * +:requires_duplicate_detection+                - Boolean. If enabled, the topic will detect duplicate messages within the time span specified by the DuplicateDetectionHistoryTimeWindow property
      # * +:requires_session+                            - Boolean. If set to true, the queue will be session-aware and only SessionReceiver will be supported.
      # * +:size_in_bytes+                               - Number. Reflects the actual bytes toward the topic quota that messages in the topic currently occupy.
      #
      def create_queue(queue, options={})
        queue = _new_or_existing(Azure::ServiceBus::Queue, queue, options ? options : {})
        create_resource_entry(:queue, queue, queue.name)
      end

      # Deletes an existing queue. This operation will also remove all associated state 
      # including messages in the queue.
      #
      # ==== Attributes
      #
      # * +queue+ - Azure::ServiceBus::Queue instance to delete or a string of the queue name
      def delete_queue(queue)
        delete_resource_entry(:queue, _name_for(queue))
      end

      # Retrieves an existing queue.
      # 
      # ==== Attributes
      #
      # * +queue+ - Azure::ServiceBus::Queue instance to retrieve or a string of the queue name
      def get_queue(queue)
        resource_entry(:queue, _name_for(queue))
      end
      
      # Enumerates the queues in the service namespace.
      #
      # ==== Attributes
      #
      # * +options+    - Hash. Optional parameters.
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:skip+      - Integer. Number of queues to skip.
      # * +:top+       - Integer. Number of queues to list.
      def list_queues(options={})
        query = {}
        query["$skip"] = options[:skip].to_i.to_s if options[:skip]
        query["$top"] = options[:top].to_i.to_s if options[:top]

        resource_list(:queue, query)
      end
      
      # Creates a new topic. Once created, this topic resource manifest is immutable. 
      # 
      # ==== Attributes
      #
      # * +topic+        - Azure::ServiceBus::Topic instance to create on server, or a string of the topic name
      # * +options+      - Hash. The topic properties. 
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:default_message_time_to_tive+                    - XML datetime. Determines how long a message lives in the associated subscriptions.
      # * +:maximum_number_of_subscriptions+                 - Number. Specifies the maximum number of subscriptions that can be associated with the topic.
      # * +:max_size_in_megabytes+                           - Number. Specifies the maximum topic size in megabytes
      # * +:requires_duplicate_detection+                    - Boolean. If enabled, the topic will detect duplicate messages within the time span specified by the DuplicateDetectionHistoryTimeWindow property
      # * +:dead_lettering_on_filter_evaluation_exceptions+  - Boolean. Determines how the Service Bus handles a message that causes an exception during a subscription's filter evaluation.
      # * +:duplicate_detection_history_time_window+         - XML datetime. Specifies the time span during which the Service Bus will detect message duplication.
      # * +:enable_batched_operations+                       - Boolean. Enables or disables service side batching behavior when performing operations for the specific queue.
      #
      def create_topic(topic, options={})
        topic = _new_or_existing(Azure::ServiceBus::Topic, topic, options ? options : {})
        create_resource_entry(:topic, topic, topic.name)
      end

      # Deletes an existing topic. This operation will also remove all associated state 
      # including associated subscriptions.
      # 
      # ==== Attributes
      #
      # * +topic+ - Azure::ServiceBus::Topic instance to delete or a string of the topic name
      def delete_topic(topic)
        delete_resource_entry(:topic, _name_for(topic))
      end

      # Retrieves the description for the specified topic.
      # 
      # ==== Attributes
      #
      # * +topic+ - Azure::ServiceBus::Topic instance to retrieve or a string of the topic name
      def get_topic(topic)
        resource_entry(:topic, _name_for(topic))
      end

      # Retrieves the topics in the service namespace.
      #
      # ==== Attributes
      #
      # * +options+      - Hash. Optional parameters. 
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:skip+      - Integer. Number of topics to skip.
      # * +:top+       - Integer. Number of topics to list.
      def list_topics(options={})
        query = {}
        query["$skip"] = options[:skip].to_i.to_s if options[:skip]
        query["$top"] = options[:top].to_i.to_s if options[:top]

        resource_list(:topic, query)
      end

      # Creates a new rule. Once created, this rule's resource manifest is immutable.
      #
      # ==== Attributes
      #
      # Pass either (topic_name, subscription_name, rule_name) as strings, or (rule) a rule object.
      # When using (topic_name, subscription_name, rule_name, options) overload, you may also pass the properties for the rule.
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:filter+                               - String. The rule filter.
      # * +:action+                               - String. The rule action.
      #
      def create_rule(*p)
        rule = _rule_from(*p)
        result = create_resource_entry(:rule, rule, rule.topic, rule.subscription, rule.name)
        result.topic = rule.topic
        result.subscription = rule.subscription
        result
      end

      # Deletes an existing rule.
      # 
      # ==== Attributes
      #
      # Pass either (topic_name, subscription_name, rule_name) as strings, or (rule) a object with .name, .topic, and 
      # .subscription methods such as Azure::ServiceBus::Rule instance.
      #
      # Note: The default rule name is '$Default'. Use this name to delete the default rule for the subscription.
      def delete_rule(*p)
        topic_name, subscription_name, rule_name = _rule_args(*p)

        delete_resource_entry(:rule, topic_name, subscription_name, rule_name)
      end

      # Retrieves the description for the specified rule. 
      # 
      # ==== Attributes
      #
      # Pass either (topic_name, subscription_name, rule_name) as strings, or (rule) a object with .name, .topic, and 
      # .subscription methods such as Azure::ServiceBus::Rule instance.
      #
      # Note: The default rule name is '$Default'. Use this name to retrieve the default rule for the subscription.
      def get_rule(*p)
        topic_name, subscription_name, rule_name = _rule_args(*p)

        result = resource_entry(:rule, topic_name, subscription_name, rule_name)
        result.topic = topic_name
        result.subscription = subscription_name
        result
      end

      # Retrieves the rules that exist under the specified subscription. 
      # 
      # ==== Attributes
      #
      # Pass either (topic_name, subscription_name) as strings, or (subscription) a object with .name and .topic methods
      # such as Azure::ServiceBus::Subscription instance.
      #
      # * +options+      - Hash. Optional parameters. 
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:skip+      - Integer. Number of topics to skip.
      # * +:top+       - Integer. Number of topics to list.
      def list_rules(*p)
        topic_name, subscription_name, options = _subscription_args(*p)

        query = {}
        query["$skip"] = options[:skip].to_i.to_s if options[:skip]
        query["$top"] = options[:top].to_i.to_s if options[:top]

        results = resource_list(:rule, topic_name, subscription_name, query)
        results.each{|r| r.topic = topic_name; r.subscription=subscription_name}

        return results
      end

      # Creates a new subscription. Once created, this subscription resource manifest is 
      # immutable. 
      # 
      # ==== Attributes
      #
      # Pass either (topic_name, subscription_name) as strings, or (subscription) a object.
      # When using (topic_name, subscription_name) overload, you may also pass optional properties for the subscription.
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:lock_duration+                                  - XML datetime. Determines the amount of time in seconds in which a message should be locked for processing by a receiver.
      # * +:requires_session+                               - Boolean. If set to true, the queue will be session-aware and only SessionReceiver will be supported.
      # * +:default_message_time_to_live+                   - XML datetime. Determines how long a message lives in the associated subscriptions.
      # * +:dead_lettering_on_message_expiration:+          - Boolean. This field controls how the Service Bus handles a message whose TTL has expired.
      # * +:dead_lettering_on_filter_evaluation_exceptions+ - Boolean. Determines how the Service Bus handles a message that causes an exception during a subscription's filter evaluation.
      # * +:enable_batched_operations+                      - Boolean. Enables or disables service side batching behavior when performing operations for the specific queue.
      # * +:max_delivery_count+                             - Number. A message is automatically deadlettered after this number of deliveries.
      # * +:message_count+                                  - Number. Displays the number of messages currently in the queue.
      #
      def create_subscription(*p)
        subscription = _subscription_from(*p)

        result = create_resource_entry(:subscription, subscription, subscription.topic, subscription.name)
        result.topic = subscription.topic
        result
      end

      #
      # Deletes an existing subscription.
      # 
      # ==== Attributes
      #
      # Pass either (topic_name, subscription_name) as strings, or (subscription) a object with .name and .topic methods
      # such as Azure::ServiceBus::Subscription instance.
      def delete_subscription(*p)
        topic_name, subscription_name = _subscription_args(*p)

        delete_resource_entry(:subscription, topic_name, subscription_name)
      end

      # Gets an existing subscription.
      #
      # ==== Attributes
      #
      # Pass either (topic_name, subscription_name) as strings, or (subscription) a object with .name and .topic methods
      # such as Azure::ServiceBus::Subscription instance.
      def get_subscription(*p)
        topic_name, subscription_name = _subscription_args(*p)
        
        result = resource_entry(:subscription, topic_name, subscription_name)
        result.topic = topic_name
        result
      end

      # Retrieves the subscriptions in the specified topic. 
      # 
      # ==== Attributes
      #
      # * +topic+    - Either a Azure::ServiceBus::Topic instance or a string of the topic name
      # * +options+  - Hash. Optional parameters. 
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:skip+    - Integer. Number of subscriptions to skip.
      # * +:top+     - Integer. Number of subscriptions to list.
      def list_subscriptions(topic, options={})
        topic = _name_for(topic)
        query = {}
        query["$skip"] = options[:skip].to_i.to_s if options[:skip]
        query["$top"] = options[:top].to_i.to_s if options[:top]

        results = resource_list(:subscription, topic, query)
        results.each { |s| s.topic = topic }

        return results
      end
      
      # Enqueues a message into the specified topic. The limit to the number of messages 
      # which may be present in the topic is governed by the message size in MaxTopicSizeInBytes. 
      # If this message causes the topic to exceed its quota, a quota exceeded error is 
      # returned and the message will be rejected.
      # 
      # ==== Attributes
      #
      # * +topic+   - Either a Azure::ServiceBus::Topic instance or a string of the topic name
      # * +message+ - An Azure::ServiceBus::BrokeredMessage object containing message body and properties, 
      #   or a string of the message body (a default BrokeredMessage will be created from the string).
      def send_topic_message(topic, message)
        _send_message(_name_for(topic), message)
      end

      # This operation is used to atomically retrieve and lock a message for processing. 
      # The message is guaranteed not to be delivered to other receivers during the lock 
      # duration period specified in buffer description. Once the lock expires, the 
      # message will be available to other receivers (on the same subscription only) 
      # during the lock duration period specified in the topic description. Once the lock
      # expires, the message will be available to other receivers. In order to complete 
      # processing of the message, the receiver should issue a delete command with the 
      # lock ID received from this operation. To abandon processing of the message and 
      # unlock it for other receivers, an Unlock Message command should be issued, or 
      # the lock duration period can expire. 
      #
      # ==== Attributes
      #
      # * +topic+        - String. The name of the topic or a Topic instance
      # * +subscription+ - String. The name of the subscription or a Subscription instance
      # * +options+      - Hash. Optional parameters. 
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:timeout+     - Integer. Timeout for the REST call.
      def peek_lock_subscription_message(topic, subscription, options={})
        topic = _name_for(topic)
        subscription = _name_for(subscription)

        _peek_lock_message(subscriptions_path(topic, subscription), options[:timeout] ? options[:timeout] : DEFAULT_TIMEOUT)
      end

      #
      # Unlock a message for processing by other receivers on a given subscription. 
      # This operation deletes the lock object, causing the message to be unlocked. 
      # A message must have first been locked by a receiver before this operation 
      # is called.
      # 
      # ==== Attributes
      #
      # * +message+     - String. Either the message location URL or a message object.
      #
      def unlock_subscription_message(message)
        _unlock_message(message)
      end

      # Read and delete a message from a subscription as an atomic operation. This 
      # operation should be used when a best-effort guarantee is sufficient for an 
      # application; that is, using this operation it is possible for messages to 
      # be lost if processing fails.
      # 
      # ==== Attributes
      #
      # * +topic+        - The name of the topic or a Topic instance
      # * +subscription+ - The name of the subscription or a Subscription instance
      # * +options+      - Hash. Optional parameters. 
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:timeout+     - Integer. Timeout for the REST call.
      #
      def read_delete_subscription_message(topic, subscription, options={})
        topic = _name_for(topic)
        subscription = _name_for(subscription)

        _read_delete_message(subscriptions_path(topic, subscription), options[:timeout] ? options[:timeout] : DEFAULT_TIMEOUT)
      end

      # Completes processing on a locked message and delete it from the subscription. 
      # This operation should only be called after processing a previously locked 
      # message is successful to maintain At-Least-Once delivery assurances.
      # 
      # ==== Attributes
      #
      # * +message+     - String. Either the message location URL or a message object.
      #
      def delete_subscription_message(message)
        _delete_message(message)
      end

      # Sends a message into the specified queue. The limit to the number of messages 
      # which may be present in the topic is governed by the message size the 
      # MaxTopicSizeInMegaBytes. If this message will cause the queue to exceed its 
      # quota, a quota exceeded error is returned and the message will be rejected.
      # 
      # ==== Attributes
      #
      # * +queue+   - Either a Azure::ServiceBus::Queue instance or a string of the queue name
      # * +message+ - An Azure::ServiceBus::BrokeredMessage object containing message body and properties, 
      #   or a string of the message body (a default BrokeredMessage will be created from the string).
      def send_queue_message(queue, message)
        _send_message(_name_for(queue), message)
      end

      #
      # Automatically retrieves and locks a message from a queue for processing. The 
      # message is guaranteed not to be delivered to other receivers (on the same 
      # subscription only) during the lock duration period specified in the queue 
      # description. Once the lock expires, the message will be available to other 
      # receivers. In order to complete processing of the message, the receiver 
      # should issue a delete command with the lock ID received from this operation. 
      # To abandon processing of the message and unlock it for other receivers, 
      # an Unlock Message command should be issued, or the lock duration period 
      # can expire.
      # 
      # ==== Attributes
      #
      # * +queue+        - String. Either a Azure::ServiceBus::Queue instance or a string of the queue name
      # * +options+      - Hash. Optional parameters. 
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:timeout+     - Integer. Timeout for the REST call.
      #
      def peek_lock_queue_message(queue, options={})
        _peek_lock_message(_name_for(queue), options[:timeout] ? options[:timeout] : DEFAULT_TIMEOUT)
      end

      # Unlocks a message for processing by other receivers on a given subscription. 
      # This operation deletes the lock object, causing the message to be unlocked. 
      # A message must have first been locked by a receiver before this operation is 
      # called.
      # 
      # ==== Attributes
      #
      # * +message+     - String. Either the message location URL or a message object.
      #
      def unlock_queue_message(message)
        _unlock_message(message)
      end

      # Reads and deletes a message from a queue as an atomic operation. This operation 
      # should be used when a best-effort guarantee is sufficient for an application; 
      # that is, using this operation it is possible for messages to be lost if 
      # processing fails.
      # 
      # ==== Attributes
      #
      # * +queue+    - Either a Azure::ServiceBus::Queue instance or a string of the queue name
      # * +options+  - Hash. Optional parameters. 
      # 
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:timeout+ - Integer. Timeout for the REST call.
      #
      def read_delete_queue_message(queue, options={})
        _read_delete_message(_name_for(queue), options[:timeout] ? options[:timeout] : DEFAULT_TIMEOUT)
      end

      # Completes processing on a locked message and delete it from the queue. This 
      # operation should only be called after processing a previously locked message 
      # is successful to maintain At-Least-Once delivery assurances.
      # 
      # ==== Attributes
      #
      # * +message+     - String. Either the message location URL or a message object.
      #
      def delete_queue_message(message)
        _delete_message(message)
      end

      # Public: Receives a queue message.
      #
      # ==== Attributes
      #
      # * +queue+        - String. The queue name.
      # * +options+      - Hash. Optional parameters. 
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:peek_lock+   - Boolean. Lock when peeking.
      # * +:timeout+     - Integer. Timeout for the REST call.
      #
      def receive_queue_message(queue, options={})
        peek_lock = true
        peek_lock = options[:peek_lock] if options[:peek_lock]

        options[:timeout] = options[:timeout] ? options[:timeout] : DEFAULT_TIMEOUT
        if peek_lock
          peek_lock_queue_message(queue, options)
        else
          read_delete_queue_message(queue, options)
        end
      end

      # Public: Receives a subscription message.
      #
      # ==== Attributes
      #
      # * +topic+        - String. The topic name.
      # * +options+      - Hash. Optional parameters. 
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:peek_lock+   - Boolean. Lock when peeking.
      # * +:timeout+     - Integer. Timeout for the REST call.
      #
      def receive_subscription_message(topic, subscription, options={})
        peek_lock = true
        peek_lock = options[:peek_lock] if options[:peek_lock]

        options[:timeout] = options[:timeout] ? options[:timeout] : DEFAULT_TIMEOUT
        if peek_lock
          peek_lock_subscription_message(topic, subscription, options)
        else
          read_delete_subscription_message(topic, subscription, options)
        end
      end

      private

      def _unlock_message(message)
        _modify_message(:put, message)
      end

      def _delete_message(message)
        _modify_message(:delete, message)
      end

      def _modify_message(method, message)
        uri = nil
        if (message.respond_to? :location)
          uri = message.location
        else
          uri = message
        end

        call(method, uri)
        nil
      end

      def _send_message(path, message)
        message = Azure::ServiceBus::BrokeredMessage.new(message.to_s) unless message.kind_of?(Azure::ServiceBus::BrokeredMessage)

        serializer = BrokeredMessageSerializer.new(message)
        broker_properties = serializer.to_json
        message_properties = serializer.get_property_headers

        content_type = message.content_type || 'text/plain'

        headers = {
          'BrokerProperties'=> broker_properties
        }

        message_properties.each do |k,v|
          headers[k.to_s.encode("UTF-8")] = v.encode("UTF-8")
        end

        headers["Content-Type"] = content_type

        call(:post, messages_uri(path), message.body, headers)
        nil
      end

      def _read_delete_message(path, timeout=DEFAULT_TIMEOUT)
        _retrieve_message(:delete, path, timeout)
      end

      def _peek_lock_message(path, timeout=DEFAULT_TIMEOUT)
        _retrieve_message(:post, path, timeout)
      end

      def _retrieve_message(method, path, timeout=DEFAULT_TIMEOUT)
        uri = messages_head_uri(path, { "timeout"=> timeout.to_s })

        response = call(method, uri)
        (response.status_code == 204) ? nil : BrokeredMessageSerializer.get_from_http_response(response)
      end

      def _rule_from(*p)
        rule = nil

        if p.length == 3 or p.length == 4
          rule = Azure::ServiceBus::Rule.new(p[2]) do |r| 
            r.topic = p[0]
            r.subscription = p[1]
            r.description = p[3] if p.length == 4
          end
        elsif p.length == 1 and p[0].respond_to? :name and p[0].respond_to? :topic and p[0].respond_to? :subscription and p[0].respond_to? :description
          rule = p[0]
        else
          raise ArgumentError, "Must provide either (topic_name, subscription_name) as strings, or (subscription) a object with .name and .topic methods such as Azure::ServiceBus::Subscription instance."
        end

        rule
      end

      def _rule_args(*p)
        if p.length == 3
          topic_name = p[0]
          subscription_name = p[1]
          rule_name = p[2]
        elsif p.length == 1 and p[0].respond_to? :name and p[0].respond_to? :topic
          topic_name = p[0].topic
          subscription_name = p[0].subscription
          rule_name = p[0].name
        else
          raise ArgumentError, "Must provide either (topic_name, subscription_name, rule_name) as strings, or (rule) a object with .name, .topic, and .subscription methods such as Azure::ServiceBus::Rule instance."
        end

        return topic_name, subscription_name, rule_name
      end

      def _subscription_from(*p)
        subscription = nil

        if p.length == 3
          subscription = Azure::ServiceBus::Subscription.new(p[1], p[2]) do |sub| 
            sub.topic = p[0]
          end
        elsif p.length == 2
          subscription = Azure::ServiceBus::Subscription.new(p[1]) do |sub| 
            sub.topic = p[0]
          end
        elsif p.length == 1 and p[0].respond_to? :name and p[0].respond_to? :topic and p[0].respond_to? :description
          subscription = p[0]
        else
          raise ArgumentError, "Must provide either (topic_name, subscription_name) as strings, or (subscription) a object with .name and .topic methods such as Azure::ServiceBus::Subscription instance."
        end

        subscription
      end

      def _subscription_args(*p)

        raise ArgumentError, "Not enough args" if p.length < 1
        topic_name = nil
        subscription_name = nil
        options = {}

        if p.length == 3
          # topic/sub/options 
          topic_name = _name_for(p[0])
          subscription_name = _name_for(p[1])
          options =p[2]
        elsif p.length == 2
          # either subscription/options or topic/sub
          if p[0].respond_to? :name and p[0].respond_to? :topic
            topic_name = p[0].topic
            subscription_name = p[0].name
            options =p[1]
          else
            topic_name = _name_for(p[0])
            subscription_name = _name_for(p[1])
          end
        elsif p.length == 1 and p[0].respond_to? :name and p[0].respond_to? :topic
          topic_name = p[0].topic
          subscription_name = p[0].name
        else
          raise ArgumentError, "Must provide either (topic_name, subscription_name) as strings, or (subscription) a object with .name and .topic methods such as Azure::ServiceBus::Subscription instance."
        end

        return topic_name, subscription_name, options
      end

      def _name_for(val)
        val.respond_to?(:name) ? val.name : val
      end

      def _new_or_existing(type, *p)
        p[0].kind_of?(type) ? p[0] : type.new(*p)
      end


      def create_resource_entry(resource, entry, *p)
        body = Serialization.resource_to_xml resource, entry
        response = call(:put, self.send("#{resource.to_s}_uri", *p), body)
        results = Serialization.resources_from_xml(resource, response.body)
        results ? results.first : results
      end

      def delete_resource_entry(resource, *p)
        call(:delete, self.send("#{resource.to_s}_uri", *p))
        nil
      end

      def resource_entry(resource, *p)
        uri = self.send("#{resource.to_s}_uri", *p)
        response = call(:get, uri)
        results = Serialization.resources_from_xml(resource, response.body)
        result = results ? results.first : results
        raise Azure::Core::Http::HTTPError.new(Azure::Core::Http::HttpResponse.new(Azure::Core::Http::HttpResponse::MockResponse.new(404, '<?xml version="1.0"?><error><code>ResourceNotFound</code><message xml:lang="en-US">The specified resource does not exist.</message></error>', {}), uri)) unless result
        result
      end

      def resource_list(resource, *p)
        response = call(:get, self.send("#{resource.to_s}_list_uri", *p))
        Serialization.resources_from_xml_with_next_link(resource, response.body)
      end

      # paths

      protected
      def message_path(path, sequence_number, lock_token)
        "#{messages_path(path)}/#{sequence_number}/#{lock_token}"
      end

      protected
      def messages_head_path(path)
        "#{messages_path(path)}/head"
      end

      protected
      def messages_path(path)
        "#{path}/messages"
      end

      protected
      def rule_path(topic, subscription, rule)
        "#{subscriptions_path(topic, subscription)}/rules/#{rule}"
      end

      protected
      def subscriptions_path(topic, subscription)
        "#{topic}/subscriptions/#{subscription}"
      end

      # messages uris

      protected
      def message_uri(path, sequence_number, lock_token, query={})
        generate_uri(message_path(path, sequence_number, lock_token), query)
      end

      protected
      def messages_head_uri(path, query={})
        generate_uri(messages_head_path(path), query)
      end

      protected
      def messages_uri(path, query={})
        generate_uri(messages_path(path), query)
      end

      # entry uris
      protected
      def rule_uri(topic, subscription, rule, query={})
        generate_uri(rule_path(topic, subscription, rule), query)
      end

      protected
      def subscription_uri(topic, subscription, query={})
        generate_uri(subscriptions_path(topic, subscription), query)
      end

      protected
      def queue_uri(topic, query={})
        generate_uri(topic, query)
      end

      protected
      def topic_uri(topic, query={})
        generate_uri(topic, query)
      end

      # list uris

      protected
      def rule_list_uri(topic, subscription, query={})
        resource_list_uri(:rule, query, subscriptions_path(topic, subscription))
      end

      protected
      def subscription_list_uri(topic, query={})
        resource_list_uri(:subscription, query, topic)
      end

      protected
      def queue_list_uri(query={})
        resource_list_uri(:queue, query)
      end

      protected
      def topic_list_uri(query={})
        resource_list_uri(:topic, query)
      end

      protected
      def resource_list_uri(resource, query={}, subpath='$Resources')
        skip = query.delete ["$skip"]
        top = query.delete ["$top"]

        uri = generate_uri("#{subpath}/#{resource.to_s.capitalize}s", query)
        uri.query = [uri.query, "$skip=" + skip].join('&') if skip
        uri.query = [uri.query, "$top=" + top].join('&') if top
        uri
      end
    end
  end
end