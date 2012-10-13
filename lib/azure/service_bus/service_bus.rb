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
require 'azure/core/signed_service'
require 'azure/service_bus/auth/wrap_signer'
require 'azure/service_bus/serialization'

module Azure
  module ServiceBus
    class ServiceBus < Azure::Core::SignedService
      
      def initialize(host=Azure.config.service_bus_host)
        super(Azure::ServiceBus::Auth::WrapSigner.new)
          @default_timeout = 90 
          @host = host
      end

      # Creates a new queue. Once created, this queue's resource manifest is immutable. 
      # 
      # queue       - Azure::ServiceBus::Queue instance to create on server, or a string of the queue name
      # description - Hash. Options for the queue. (optional)
      #
      def create_queue(queue, description={})
        queue = _new_or_existing(Azure::ServiceBus::Queue, queue, description)
        create_resource_entry(:queue, queue, queue.name)
      end

      # Deletes an existing queue. This operation will also remove all associated state 
      # including messages in the queue.
      #
      # queue - Azure::ServiceBus::Queue instance to delete or a string of the queue name
      # 
      def delete_queue(queue)
        delete_resource_entry(:queue, _name_for(queue))
      end

      # Retrieves an existing queue.
      # 
      # queue - Azure::ServiceBus::Queue instance to retrieve or a string of the queue name
      def get_queue(queue)
        resource_entry(:queue, _name_for(queue))
      end
      
      # Enumerates the queues in the service namespace.
      def list_queues
        resource_list(:queue)
      end
      
      # Creates a new topic. Once created, this topic resource manifest is immutable. 
      # 
      # topic       - Azure::ServiceBus::Topic instance to create on server, or a string of the topic name
      # description - Hash. Options for the topic. (optional)
      #
      def create_topic(topic, description={})
        topic = _new_or_existing(Azure::ServiceBus::Topic, topic, description)
        create_resource_entry(:topic, topic, topic.name)
      end
      
      # Deletes an existing topic. This operation will also remove all associated state 
      # including associated subscriptions.
      # 
      # topic - Azure::ServiceBus::Topic instance to delete or a string of the topic name
      # 
      def delete_topic(topic)
        delete_resource_entry(:topic, _name_for(topic))
      end

      # Retrieves the description for the specified topic.
      # 
      # topic - Azure::ServiceBus::Topic instance to retrieve or a string of the topic name
      def get_topic(topic)
        resource_entry(:topic, _name_for(topic))
      end

      # Retrieves the topics in the service namespace.
      def list_topics
        resource_list(:topic)
      end

      # Creates a new rule. Once created, this rule's resource manifest is immutable.
      #
      # Pass either (topic_name, subscription_name, rule_name) as strings, or (rule) a object with .name, .topic, and 
      # .subscription methods such as Azure::ServiceBus::Rule instance.
      #
      # When using (topic_name, subscription_name, rule_name) overload, you may also pass and optional description hash 
      # containing options for the Rule.
      def create_rule(*p)
        rule = _rule_from(*p)

        result = create_resource_entry(:rule, rule, rule.topic, rule.subscription, rule.name)
        result.topic = rule.topic
        result.subscription = rule.subscription
        result
      end

      # Deletes an existing rule.
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
      # Pass either (topic_name, subscription_name) as strings, or (subscription) a object with .name and .topic methods
      # such as Azure::ServiceBus::Subscription instance.
      def list_rules(*p)
        topic_name, subscription_name = _subscription_args(*p)

        resource_list(:rule, topic_name, subscription_name).each{|r| r.topic = topic_name; r.subscription=subscription_name}
      end

      # Creates a new subscription. Once created, this subscription resource manifest is 
      # immutable. 
      # 
      # Pass either (topic_name, subscription_name) as strings, or (subscription) a object with .name, .topic, and 
      # .description methods such as Azure::ServiceBus::Subscription instance. 
      #
      # When using (topic_name, subscription_name) overload, you may also pass and optional description hash contianing
      # options for the Subscription.
      def create_subscription(*p)
        subscription = _subscription_from(*p)

        result = create_resource_entry(:subscription, subscription, subscription.topic, subscription.name)
        result.topic = subscription.topic
        result
      end

      #
      # Deletes an existing subscription.
      # 
      # Pass either (topic_name, subscription_name) as strings, or (subscription) a object with .name and .topic methods
      # such as Azure::ServiceBus::Subscription instance.
      def delete_subscription(*p)
        topic_name, subscription_name = _subscription_args(*p)

        delete_resource_entry(:subscription, topic_name, subscription_name)
      end

      # Gets an existing subscription.
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
      # topic: Either a Azure::ServiceBus::Topic instance or a string of the topic name
      def list_subscriptions(topic)
        topic = _name_for(topic)
        resource_list(:subscription, topic).each { |s| s.topic = topic }
      end
      
      def send_topic_message(topic_name, message=nil) end
      #
      # Enqueues a message into the specified topic. The limit to the number of messages 
      # which may be present in the topic is governed by the message size in MaxTopicSizeInBytes. 
      # If this message causes the topic to exceed its quota, a quota exceeded error is 
      # returned and the message will be rejected.
      # 
      # topic_name: name of the topic.
      # message: the Message object containing message body and properties.
      #

      def peek_lock_subscription_message(topic_name, subscription_name, timeout='60') end
      #
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
      # topic_name: the name of the topic
      # subscription_name: the name of the subscription
      #

      def unlock_subscription_message(topic_name, subscription_name, sequence_number, lock_token) end
      #
      # Unlock a message for processing by other receivers on a given subscription. 
      # This operation deletes the lock object, causing the message to be unlocked. 
      # A message must have first been locked by a receiver before this operation 
      # is called.
      # 
      # topic_name: the name of the topic
      # subscription_name: the name of the subscription
      # sequence_name: The sequence number of the message to be unlocked as returned 
      #     in BrokerProperties['SequenceNumber'] by the Peek Message operation.
      # lock_token: The ID of the lock as returned by the Peek Message operation in 
      #     BrokerProperties['LockToken']
      #

      def read_delete_subscription_message(topic_name, subscription_name, timeout='60') end
      # 
      # Read and delete a message from a subscription as an atomic operation. This 
      # operation should be used when a best-effort guarantee is sufficient for an 
      # application; that is, using this operation it is possible for messages to 
      # be lost if processing fails.
      # 
      # topic_name: the name of the topic
      # subscription_name: the name of the subscription
      #

      #
      # Completes processing on a locked message and delete it from the subscription. 
      # This operation should only be called after processing a previously locked 
      # message is successful to maintain At-Least-Once delivery assurances.
      # 
      # topic_name: the name of the topic
      # subscription_name: the name of the subscription
      # sequence_name: The sequence number of the message to be deleted as returned 
      #     in BrokerProperties['SequenceNumber'] by the Peek Message operation.
      # lock_token: The ID of the lock as returned by the Peek Message operation in 
      #     BrokerProperties['LockToken']
      #
      def delete_subscription_message(topic_name, subscription_name, sequence_number, lock_token) end

      #
      # Sends a message into the specified queue. The limit to the number of messages 
      # which may be present in the topic is governed by the message size the 
      # MaxTopicSizeInMegaBytes. If this message will cause the queue to exceed its 
      # quota, a quota exceeded error is returned and the message will be rejected.
      # 
      # queue_name: name of the queue
      # message: the Message object containing message body and properties.
      #
      def send_queue_message(queue_name, message=nil) end

      #
      # Automically retrieves and locks a message from a queue for processing. The 
      # message is guaranteed not to be delivered to other receivers (on the same 
      # subscription only) during the lock duration period specified in the queue 
      # description. Once the lock expires, the message will be available to other 
      # receivers. In order to complete processing of the message, the receiver 
      # should issue a delete command with the lock ID received from this operation. 
      # To abandon processing of the message and unlock it for other receivers, 
      # an Unlock Message command should be issued, or the lock duration period 
      # can expire.
      # 
      # queue_name: name of the queue
      #
      def peek_lock_queue_message(queue_name, timeout=60) end

      #
      # Unlocks a message for processing by other receivers on a given subscription. 
      # This operation deletes the lock object, causing the message to be unlocked. 
      # A message must have first been locked by a receiver before this operation is 
      # called.
      # 
      # queue_name: name of the queue
      # sequence_name: The sequence number of the message to be unlocked as returned 
      #     in BrokerProperties['SequenceNumber'] by the Peek Message operation.
      # lock_token: The ID of the lock as returned by the Peek Message operation in 
      #     BrokerProperties['LockToken']
      #
      def unlock_queue_message(queue_name, sequence_number, lock_token) end

      #
      # Reads and deletes a message from a queue as an atomic operation. This operation 
      # should be used when a best-effort guarantee is sufficient for an application; 
      # that is, using this operation it is possible for messages to be lost if 
      # processing fails.
      # 
      # queue_name: name of the queue
      #
      def read_delete_queue_message(queue_name, timeout=60) end

      #
      # Completes processing on a locked message and delete it from the queue. This 
      # operation should only be called after processing a previously locked message 
      # is successful to maintain At-Least-Once delivery assurances.
      # 
      # queue_name: name of the queue
      # sequence_name: The sequence number of the message to be deleted as returned 
      #     in BrokerProperties['SequenceNumber'] by the Peek Message operation.
      # lock_token: The ID of the lock as returned by the Peek Message operation in 
      #     BrokerProperties['LockToken']
      #
      def delete_queue_message(queue_name, sequence_number, lock_token) end

      def receive_queue_message(queue_name, peek_lock=true, timeout=60)
        peek_lock ? peek_lock_queue_message(queue_name, timeout) : read_delete_queue_message(queue_name, timeout)
      end

      def receive_subscription_message(topic_name, subscription_name, peek_lock=true, timeout=60)
        peek_lock ? peek_lock_subscription_message(topic_name, subscription_name, timeout) : read_delete_subscription_message(topic_name, subscription_name, timeout)
      end

      private

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

        if p.length == 2 or p.length == 3
          subscription = Azure::ServiceBus::Subscription.new(p[1]) do |sub| 
            sub.topic = p[0]
            sub.description = p[2] if p.length == 3
          end
        elsif p.length == 1 and p[0].respond_to? :name and p[0].respond_to? :topic and p[0].respond_to? :description
          subscription = p[0]
        else
          raise ArgumentError, "Must provide either (topic_name, subscription_name) as strings, or (subscription) a object with .name and .topic methods such as Azure::ServiceBus::Subscription instance."
        end

        subscription
      end

      def _subscription_args(*p)
        if p.length == 2
          topic_name = p[0]
          subscription_name = p[1]
        elsif p.length == 1 and p[0].respond_to? :name and p[0].respond_to? :topic
          topic_name = p[0].topic
          subscription_name = p[0].name
        else
          raise ArgumentError, "Must provide either (topic_name, subscription_name) as strings, or (subscription) a object with .name and .topic methods such as Azure::ServiceBus::Subscription instance."
        end

        return topic_name, subscription_name
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
        response = call(:delete, self.send("#{resource.to_s}_uri", *p))
        response.success?
      end

      def resource_entry(resource, *p)
        response = call(:get, self.send("#{resource.to_s}_uri", *p))
        results = Serialization.resources_from_xml(resource, response.body)
        results ? results.first : results
      end

      def resource_list(resource, *p)
        response = call(:get, self.send("#{resource.to_s}_list_uri", *p))
        Serialization.resources_from_xml(resource, response.body)
      end

      # entry uris
      def rule_uri(topic, subscription, rule, query={})
        generate_uri("#{topic}/Subscriptions/#{subscription}/Rules/#{rule}", query)
      end

      def subscription_uri(topic, subscription, query={})
        generate_uri("#{topic}/Subscriptions/#{subscription}", query)
      end

      def queue_uri(topic, query={})
        generate_uri(topic, query)
      end

      def topic_uri(topic, query={})
        generate_uri(topic, query)
      end

      # list uris

      def rule_list_uri(topic, subscription, query={})
        resource_list_uri(:rule, query, "#{topic}/subscriptions/#{subscription}")
      end

      def subscription_list_uri(topic, query={})
        resource_list_uri(:subscription, query, topic)
      end

      def queue_list_uri(query={})
        resource_list_uri(:queue, query)
      end

      def topic_list_uri(query={})
        resource_list_uri(:topic, query)
      end

      def resource_list_uri(resource, query={}, subpath='$Resources')
        generate_uri("#{subpath}/#{resource.to_s.capitalize}s", query)
      end
    end
  end
end