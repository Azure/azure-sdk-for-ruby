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
require 'azure/service_bus/resource'

module Azure
  module ServiceBus
    class Queue < Resource
      # MessageCount: Number
      #
      # Displays the number of messages currently in the queue.
      def message_count
        to_i description['MessageCount']
      end

      def message_count=(val)
        _set 'MessageCount', val
      end
      
      # LockDuration: XML datetime
      #
      # Determines the amount of time in seconds in which a message should be locked for processing by a receiver. 
      # After this period, the message is unlocked and available for consumption by the next receiver. Settable 
      # only at queue creation time:
      #
      # Range: 0 - 5 minutes. 0 means that the message is not locked 
      # Default: 30 seconds
      def lock_duration
        to_interval description['LockDuration']
      end

      def lock_duration=(val)
        _set 'LockDuration', val
      end

      # RequiresSession: True, False
      #
      # Settable only at queue creation time. If set to true, the queue will be session-aware and only SessionReceiver
      # will be supported. Session-aware queues are not supported through REST.
      #
      # Default for durable queue: false
      def requires_session
        to_bool description['RequiresSession']
      end

      def requires_session=(val)
        _set 'RequiresSession', val
      end

      # EnableDeadLetteringOnMessageExpiration: True, False
      #
      # This field controls how the Service Bus handles a message whose TTL has expired. If it is enabled and a message
      # expires, the Service Bus moves the message from the queue into the queue's dead-letter sub-queue. If disabled,
      # message will be permanently deleted from the queue. Settable only at queue creation time.
      #
      # Default: false
      def enable_dead_lettering
        to_bool description['EnableDeadLetteringOnMessageExpiration']
      end

      def enable_dead_lettering=(val)
        _set 'EnableDeadLetteringOnMessageExpiration', val
      end

      # MaxDeliveryCount: Number
      #
      # A message is automatically deadlettered after this number of deliveries.
      def max_delivery_count
        to_i description['MaxDeliveryCount']
      end

      def max_delivery_count=(val)
        _set 'MaxDeliveryCount', val
      end

      # MaxSizeInMegaBytes: Number
      #
      # Specifies the maximum queue size in megabytes. Any attempt to enqueue a message that will cause the queue to 
      # exceed this value will fail. You can only set this parameter at queue creation time using the following values:
      #
      # Range: 1 - 1024 (valid values are 1024, 2048, 3072, 4096, 5120) 
      # Default: 1*1024 (valid values are 1024, 2048, 3072, 4096, 5120)
      def max_size_in_mb
        to_i description['MaxSizeInMegabytes']
      end

      def max_size_in_mb=(val)
        _set 'MaxSizeInMegabytes', val
      end

      # SizeinBytes: Number
      #
      # Reflects the actual bytes that messages in the queue currently occupy toward the queue's quota.
      #
      # Range: 0 - MaxTopicSizeinMegaBytes
      def size_in_bytes
        to_i description['SizeInBytes']
      end

      def size_in_bytes=(val)
        _set 'SizeInBytes', val
      end


      # DefaultMessageTimeToLive: XML datetime
      #
      # Depending on whether DeadLettering is enabled, a message is automatically moved to the DeadLetterQueue or 
      # deleted if it has been stored in the queue for longer than the specified time. This value is overwritten 
      # by a TTL specified on the message if and only if the message TTL is smaller than the TTL set on the queue.
      # This value is immutable after the Queue has been created:
      #
      # Range: 1 second - TimeSpan.MaxValue 
      # Default: TimeSpan.MaxValue
      def default_message_ttl
        to_interval description['DefaultMessageTimeToLive']
      end

      def default_message_ttl=(val)
        _set 'DefaultMessageTimeToLive', val
      end

      # RequiresDuplicateDetection: True, False
      #
      # Settable only at queue creation time.
      #
      # Default for durable queue: false
      def requires_duplicate_detection
        to_bool description['RequiresDuplicateDetection']
      end

      def requires_duplicate_detection=(val)
        _set 'RequiresDuplicateDetection', val
      end

      # DuplicateDetectionHistoryTimeWindow
      #
      # Specifies the time span during which the Service Bus will detect message duplication.
      #
      # Range: 1 second - 7 days
      # Default: 10 minutes
      def duplicate_detection_history_time_window
        to_interval description['DuplicateDetectionHistoryTimeWindow']
      end

      def duplicate_detection_history_time_window=(val)
        _set 'DuplicateDetectionHistoryTimeWindow', val
      end

      # EnableBatchedOperations
      #
      # Enables or disables service side batching behavior when performing operations for the specific queue. When 
      # enabled, service bus will collect/batch multiple operations to the backend to be more connection efficient. 
      #
      # If user wants lower operation latency then they can disable this feature.
      def enable_batched_operations
        to_bool description['EnableBatchedOperations']
      end

      def enable_batched_operations=(val)
        _set 'EnableBatchedOperations', val
      end

      def ordered_props
        [
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
        ]
      end
    end
  end
end