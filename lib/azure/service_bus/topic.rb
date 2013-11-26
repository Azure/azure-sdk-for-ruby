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
require 'azure/service_bus/resource'

module Azure
  module ServiceBus
    class Topic < Resource
      # Public: Initialize the topic.
      #
      # ==== Attributes
      #
      # * +name+      - A String with the name of the topic.
      # * +options+   - The resource options Hash
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
      def initialize(name, options = {})
        normalized_options = {}
        normalized_options["DefaultMessageTimeToLive"] = options[:default_message_time_to_live].to_s if options.has_key?(:default_message_time_to_live)
        normalized_options["MaximumNumberOfSubscriptions"] = options[:maximum_number_of_subscriptions].to_s if options.has_key?(:maximum_number_of_subscriptions)
        normalized_options["MaxSizeInMegabytes"] = options[:max_size_in_megabytes].to_s if options.has_key?(:max_size_in_megabytes)
        normalized_options["RequiresDuplicateDetection"] = options[:requires_duplicate_detection].to_s if options.has_key?(:requires_duplicate_detection)
        normalized_options["DeadLetteringOnFilterEvaluationExceptions"] = options[:dead_lettering_on_filter_evaluation_exceptions].to_s if options.has_key?(:dead_lettering_on_filter_evaluation_exceptions)
        normalized_options["DuplicateDetectionHistoryTimeWindow"] = options[:duplicate_detection_history_time_window].to_s if options.has_key?(:duplicate_detection_history_time_window)
        normalized_options["EnableBatchedOperations"] = options[:enable_batched_operations].to_s if options.has_key?(:enable_batched_operations)

        super(name, normalized_options)
      end

      # MaxSizeInMegabytes: Number
      #
      # Specifies the maximum topic size in megabytes. Any attempt to enqueue a message that will cause the topic to 
      # exceed this value will fail. All messages that are stored in the topic or any of its subscriptions count 
      # towards this value. Multiple copies of a message that reside in one or multiple subscriptions count as a single 
      # messages. For example, if message m exists once in subscription s1 and twice in subscription s2, m is counted 
      # as a single message. You can only set this parameter at topic creation time using the following values:
      #
      #   Range: 1 - 5*1024 MB
      #   Default: 1*1024
      def max_size_in_megabytes
        to_i description['MaxSizeInMegabytes']
      end

      def max_size_in_megabytes=(val)
        _set 'MaxSizeInMegabytes', val
      end
 
      # SizeInBytes: Number
      #
      # Reflects the actual bytes toward the topic quota that messages in the topic currently occupy. (read-only)
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
      # Determines how long a message lives in the associated subscriptions. Subscriptions inherit the TTL from the 
      # topic unless they are created explicitly with a smaller TTL. Based on whether dead-lettering is enabled, a 
      # message whose TTL has expired will either be moved to the subscription's associated DeadLtterQueue or will 
      # be permanently deleted. The following values are settable at topic creation time:
      #
      #   Range: 1 second - TimeSpan.MaxValue
      #   Default: TimeSpan.MaxValue
      def default_message_time_to_live
        to_interval description['DefaultMessageTimeToLive']
      end

      def default_message_time_to_live=(val)
        _set 'DefaultMessageTimeToLive', val
      end

      # RequiresDuplicateDetection: True, False
      #
      # If enabled, the topic will detect duplicate messages within the time span specified by the 
      # DuplicateDetectionHistoryTimeWindow property. Settable only at topic creation time.
      #
      # Default: false
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

      # MaximumNumberOfSubscriptions
      #
      # Specifies the maximum number of subscriptions that can be associated with the topic.
      #
      # Range: 1 - 2000
      # Default: 2000 subscriptions
      def maximum_number_of_subscriptions
        to_i description['MaximumNumberOfSubscriptions']
      end

      def maximum_number_of_subscriptions=(val)
        _set 'MaximumNumberOfSubscriptions', val
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

      # DeadLetteringOnFilterEvaluationExceptions: True, False
      #
      # Determines how the Service Bus handles a message that causes an exception during a subscription's filter
      # evaluation. If the value is set to true, the message that caused the exception will be moved to the
      # subscription's dead-letter queue. Otherwise, it will be discarded. By default this parameter is set to true,
      # allowing the user a chance to investigate the cause of the exception. It can occur from a malformed message or
      # some incorrect assumptions being made in the filter about the form of the message. Settable only at topic
      # creation time.
      #
      # Default: true
      def dead_lettering_on_filter_evaluation_exceptions
        to_bool description['DeadLetteringOnFilterEvaluationExceptions']
      end

      def dead_lettering_on_filter_evaluation_exceptions=(val)
        _set 'DeadLetteringOnFilterEvaluationExceptions', val
      end

      def ordered_props
        [
          'DefaultMessageTimeToLive',
          'MaximumNumberOfSubscriptions',
          'MaxSizeInMegabytes',
          'RequiresDuplicateDetection',
          'DeadLetteringOnFilterEvaluationExceptions',
          'DuplicateDetectionHistoryTimeWindow',
          'EnableBatchedOperations',
          'SizeInBytes'
        ]
      end
    end
  end
end