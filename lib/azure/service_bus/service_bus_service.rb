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
module Azure
  module ServiceBus
    class ServiceBusService
      #
      # Creates a new queue. Once created, this queue's resource manifest is immutable. 
      # 
      # queue: queue object to create. 
      # queue_name: the name of the queue.
      # fail_on_exist: specify whether to throw an exception when the queue exists.
      #
      def create_queue(queue_name, queue=nil) end

      #
      # Deletes an existing queue. This operation will also remove all associated state 
      # including messages in the queue.
      # 
      # fail_not_exist: specify whether to throw an exception if the queue doesn't exist.
      #
      def delete_queue(queue_name) end

      # #
      # Retrieves an existing queue.
      # 
      # queue_name: name of the queue.
      #
      def get_queue(queue_name) end
      
      #
      # Enumerates the queues in the service namespace.
      #
      def list_queues() end
      
      #
      # Creates a new topic. Once created, this topic resource manifest is immutable. 
      # 
      # topic_name: name of the topic.
      # topic: the Topic object to create.
      # fail_on_exist: specify whether to throw an exception when the topic exists.
      #
      def create_topic(topic_name, topic=nil) end

      #
      # Deletes an existing topic. This operation will also remove all associated state 
      # including associated subscriptions.
      # 
      # topic_name: name of the topic.
      # fail_not_exist: specify whether throw exception when topic doesn't exist.
      #
      def delete_topic(topic_name) end

      #
      # Retrieves the description for the specified topic.
      # 
      # topic_name: name of the topic.
      #
      def get_topic(topic_name) end

      #
      # Retrieves the topics in the service namespace.
      #
      def list_topics() end

      #
      # Creates a new rule. Once created, this rule's resource manifest is immutable.
      # 
      # topic_name: the name of the topic
      # subscription_name: the name of the subscription
      # rule_name: name of the rule.
      # fail_on_exist: specify whether to throw an exception when the rule exists.
      #
      def create_rule(topic_name, subscription_name, rule_name, rule=nil) end

      #
      # Deletes an existing rule.
      # 
      # topic_name: the name of the topic
      # subscription_name: the name of the subscription
      # rule_name: the name of the rule.  DEFAULT_RULE_NAME=$Default. Use DEFAULT_RULE_NAME
      #     to delete default rule for the subscription.
      # fail_not_exist: specify whether throw exception when rule doesn't exist.
      #
      def delete_rule(topic_name, subscription_name, rule_name) end

      #
      # Retrieves the description for the specified rule. 
      # 
      # topic_name: the name of the topic
      # subscription_name: the name of the subscription
      # rule_name: name of the rule
      #
      def get_rule(topic_name, subscription_name, rule_name) end

      #
      # Retrieves the rules that exist under the specified subscription. 
      # 
      # topic_name: the name of the topic
      # subscription_name: the name of the subscription
      #
      def list_rules(topic_name, subscription_name) end

      #
      # Creates a new subscription. Once created, this subscription resource manifest is 
      # immutable. 
      # 
      # topic_name: the name of the topic
      # subscription_name: the name of the subscription
      # fail_on_exist: specify whether throw exception when subscription exists.
      #
      def create_subscription(topic_name, subscription_name, subscription=nil) end

      #
      # Deletes an existing subscription.
      # 
      # topic_name: the name of the topic
      # subscription_name: the name of the subscription
      # fail_not_exist: specify whether to throw an exception when the subscription doesn't exist.
      #
      def delete_subscription(topic_name, subscription_name) end

      #
      # Gets an existing subscription.
      # 
      # topic_name: the name of the topic
      # subscription_name: the name of the subscription
      #
      def get_subscription(topic_name, subscription_name) end

      #
      # Retrieves the subscriptions in the specified topic. 
      # 
      # topic_name: the name of the topic
      #
      def list_subscriptions(topic_name) end

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
      def peek_lock_queue_message(queue_name, timeout='60') end

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
      def read_delete_queue_message(queue_name, timeout='60') end

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
    end
  end
end